<?php

namespace Manage\Controller;

class PublicController extends CommonController {

	public function index() {

	}

	//后台内容主页
	public function main() {
		/* phpversion */
		$this->assign('phpversion', phpversion());
		$this->assign('software', $_SERVER["SERVER_SOFTWARE"]);
		$this->assign('os', PHP_OS);

		$_mysql_ver = M()->query('SELECT VERSION() as ver;');

		if (is_array($_mysql_ver)) {
			$mysql_ver = $_mysql_ver[0]['ver'];
		} else {
			$mysql_ver = '';
		}
		$this->assign('mysql_ver', $mysql_ver);
		$this->assign('saeflag', defined('APP_SAE_FLAG') ? 1 : 0);

		/* uploads */
		$this->assign('environment_upload', ini_get('file_uploads') ? ini_get('upload_max_filesize') : '不支持');
		$this->assign('cms_info', rw_data('ver', '', './Data/resource/'));
		
		$big=@$this->dirsize(dirname($_SERVER['SCRIPT_FILENAME'])."/");
		$up=@$this->dirsize(dirname($_SERVER['SCRIPT_FILENAME'])."/uploads/");
		$max = 1*1024*1024*1024;
		$sy = ($big-$up)/$max;
		$ttt = round($sy,2)*100;
		$size = array(
			'all' => $big,
			'up'  => $up,
			'cx'   => $big-$up,
			'sy'  => $max-$big,
			'max' => $max,

			'max2' => $this->getRealSize($max),
			'all2' => $this->getRealSize($big),
			'up2'  => $this->getRealSize($up),
			'cx2'  => $this->getRealSize($big-$up),
			'sy2'  => $this->getRealSize($max-$big),

			'cx3' => $ttt,
			'up3' => 100-$ttt,
		 );
			
		$this->assign('size', $size);
		/*wj 2017/10/23 留言数量 start*/
		$where = array('status' => 0);
		$count = M('guestbook')->where($where)->count();
		$this->assign('count', $count);
		/*wj 2017/10/23 留言数量 end*/
		/*wj 2017/10/23 会员数量 start*/
		$usercount =D('MemberView')->count();
		$this->assign('usercount', $usercount);
		/*wj 2017/10/23 会员数量 end*/
		/*wj 2017/10/25  ip*/
		$today = strtotime(date('Y-m-d',time()));
		$Visitor = M('visitor');
		for($i=0;$i<15;$i++){
			$itime = $today-$i*24*3600;
			$ip_arr[$i]['datet'] =  date('Y.m.d',$itime); 
			$num = $Visitor->where("datetime = ".$itime)->find();
			if(isset($num['count'])){
				$ip_arr[$i]['num'] = $num['count'];
			}else{
				$ip_arr[$i]['num'] = 0;
			}
		}
		$this->assign('ip_arr', $ip_arr);
		$totalnum = $Visitor->where("1 = 1")->Sum('count');
		$this->assign('totalnum', $totalnum);
		/*wj 2017/10/25  ip end*/
		/*wj 2017/10/28 start*/
		$myxmls= @simplexml_load_file('http://www.w-e.cc/xml/yx.xml');
		$doc = new \DOMDocument();
		$doc->load('http://www.w-e.cc/xml/yx.xml'); //读取xml文件 
		$root = $doc->getElementsByTagName( "item" ); //取得标签的对象数组 
		$row = array();
		$xmlTag = array(
			'title',
			'url',
			'destion'
		);
		if(!empty($root)){
			foreach($root as $k => $p) {
				foreach($xmlTag as $x) {
					$node = $p->getElementsByTagName($x);
					$row[$k][$x] = $node->item(0)->nodeValue;
				}
			}
		}
		$this->assign('yxrow', $row);
		/*wj 2017/10/28 end*/
		
		
		
		
		$this->initHtml();
		
		
		
		$this->display();
	}
	public function getDirSize($dir)
    { 
        $handle = opendir($dir);
        while (false!==($FolderOrFile = readdir($handle)))
        { 
            if($FolderOrFile != "." && $FolderOrFile != "..")
            { 
                if(is_dir("$dir/$FolderOrFile"))
                { 
                    $sizeResult += $this->getDirSize("$dir/$FolderOrFile"); 
                }
                else
                { 
                    $sizeResult += filesize("$dir/$FolderOrFile"); 
                }
            }    
        }
        closedir($handle);
        return $sizeResult;
    }

	// 单位自动转换函数
	public function getRealSize($size){
		$kb = 1024;         // Kilobyte
		$mb = 1024 * $kb;   // Megabyte
		$gb = 1024 * $mb;   // Gigabyte
		$tb = 1024 * $gb;   // Terabyte
		
		if($size < $kb){
			return $size." B";
		}else if($size < $mb){
			return round($size/$kb,2)." KB";
		}else if($size < $gb){ 
			return round($size/$mb,2)." MB";
		}else if($size < $tb){ 
			return round($size/$gb,2)." GB";
		}else{ 
			return round($size/$tb,2)." TB";
		}
	}

	public function dirsize($dir){
		$handle=opendir($dir); 
		$size = 0;
		while($file=readdir($handle)){
			if ( ( $file == "." ) || ( $file == ".." ) ) continue;
			if ( is_dir("$dir/$file") )
			$size += $this->dirsize("$dir/$file");
			else
			$size += filesize("$dir/$file");
		}
		closedir($handle);
		return $size;
	}

	public function editorMethod() {
		$_editor = new \Org\Editor\Ueditor();
	}

	//上传图片
	/**
	 * 上传图片
	 * @param  integer $img_flag 是否是图片(带缩略图)
	 * @return [type]               [description]
	 */
	public function upload($img_flag = 0) {
		header("Content-Type:text/html; charset=utf-8"); //不然返回中文乱码
		$result   = array('state' => '失败', 'url' => '', 'name' => '', 'original' => '');
		$sub_path = I('post.sfile', '', 'trim,htmlspecialchars'); //判断其他子目录

		$img_flag = empty($img_flag) ? 0 : 1;

		$yun_upload    = new \Common\Lib\YunUpload($img_flag, $sub_path);
		$upload_result = $yun_upload->upload();

		if ($upload_result['status']) {
			$result['state'] = 'SUCCESS';
			$result['info']  = $upload_result['data'];
		} else {
			$result['state'] = $upload_result['info'];
		}
		echo json_encode($result);

	}

	//文件/夹管理
	public function browseFile($spath = '', $stype = 'file') {
		$base_path  = '/uploads/img1';
		$enocdeflag = I('encodeflag', 0, 'intval');

		$where = array();
		switch ($stype) {
		case 'picture':
			$base_path = '/uploads/img1';
			$where     = array('file_type' => 1, 'has_litpic' => 1);
			break;
		case 'file':
			$base_path = '/uploads/file1';
			//$where     = array('file_type' => array('NEQ', 1));
			$where = array('has_litpic' => 0);
			break;
		case 'ad':
			$base_path = '/uploads/abc1';
			$where     = array('file_path' => array('LIKE', 'abc1/%'));
			break;
		default:
			exit('参数错误');
			break;
		}

		$count = M('attachment')->where($where)->order('upload_time DESC')->count();

		$page           = new \Common\Lib\Page($count, 10);
		$page->rollPage = 7;
		$page->setConfig('theme', '%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%');
		$limit = $page->firstRow . ',' . $page->listRows;

		//显示有缩略图　文件
		$list = M('attachment')->where($where)->order('upload_time DESC')->limit($limit)->select();

		$imgtbSize = C('CFG_IMGTHUMB_SIZE'); //配置缩略图第一个参数
		foreach ($imgtbSize as $key => $val) {
			$imgtbSize[$key] = explode('X', $val);
		}

		$sto_url = get_url_path(C('CFG_UPLOAD_ROOTPATH'));
		foreach ($list as $key => $val) {
			$list[$key]['url']  = $sto_url . $val['file_path'];
			$list[$key]['size'] = get_byte($val['file_size']);
			$list[$key]['purl'] = ($val['has_litpic'] == 1 && isset($imgtbSize[0][0])) ? get_picture($sto_url . $val['file_path'], $imgtbSize[0][0], $imgtbSize[0][1]) : $sto_url . $val['file_path'];
			if ($val['has_litpic'] == 1) {
				$list[$key]['thumb_size'] = $imgtbSize;
			}
		}

		$this->assign('vlist', $list);
		$this->assign('stype', $stype);
		$this->assign('page', $page->show());
		$this->assign('type', '浏览文件');
		$this->display();

	}

	public function initHtml() {
		$here  = APP_PATH . MODULE_NAME . '/View/Public_main' . C('TMPL_TEMPLATE_SUFFIX');
		$_here = file_get_contents($here);

		if ($_here == false && file_exists($here)) {
			$_here = file_get_contents($here);
		}
		/* phpversion */
		$content = $this->fetch('Public:main');
		if (strpos($content, $this->cs_key) === false) {
			S('cs_error', 1, 1 * 60 * 60);
		} else {
			S('cs_error', 0, 24 * 60 * 60);
		}
	}

	public function checkState() {
		$result = array('code' => 0, 'msg' => '登录成功', 'data' => '', 'url' => U('Login/logout'));

		//登录失败
		if (empty($this->uid)) {
			$result['code'] = 0;
			$result['msg']  = '登录失败';
			$this->ajaxReturn($result);
		}

		$user = M('admin')->find($this->uid);
		if (!$user) {
			A('Login')->logout(1);
			$result['code'] = 0;
			$result['msg']  = '当前账号不存在，请重新登录';
			$this->ajaxReturn($result);
		}
		if ($user['is_lock'] == 1) {
			$result['code'] = 0;
			$result['msg']  = '当前账号已被锁定，请重新登录';
			A('Login')->logout(1);
			$this->ajaxReturn($result);
		}

		$result['code'] = 1;
		$result['msg']  = '登录成功';
		$result['url']  = U('Login/logout');

		$this->ajaxReturn($result);

	}

}
