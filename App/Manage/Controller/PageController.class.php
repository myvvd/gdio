<?php

namespace Manage\Controller;

use Common\Lib\Category;

class PageController extends CommonContentController {

	//编辑
	public function index() {
		//当前控制器名称
		$actionName = strtolower(CONTROLLER_NAME);

		if (IS_POST) {
			$this->indexPost();
			exit();
		}

		$vo            = M('category')->find($this->pid); //直接是编辑
		$vo['content'] = htmlspecialchars($vo['content']); //ueditor

		//所有子栏目列表
		$cate    = get_category(); //全部分类
		$subcate = Category::toLayer(Category::clearCate(Category::getChilds($cate, $this->pid), 'type'), 'child', $this->pid); //子类,多维
		$poscate = Category::getParents($cate, $this->pid);

		$this->assign('vo', $vo);
		$this->assign('pid', $this->pid);
		$this->assign('subcate', $subcate);
		$this->assign('poscate', $poscate);
		$this->display();
	}

	//修改文章处理
	public function indexPost() {

		$id          = I('pid', 0, 'intval');
		$content     = I('content', '', '');
		$description = I('description', '');

		

		if (!$this->pid) {
			$this->error('参数错误');
		}

		if (empty($description)) {
			$description = str2sub(strip_tags($content), 120);
		}
		
		$data = array('id' => $this->pid, 'description' => $description, 'content' => $content);
		$data['picture_urls']  = I('picture_urls', '', '');
		$imgPostUrls = json_decode($data['picture_urls'], true);
		if (is_array($imgPostUrls) && !empty($imgPostUrls)) {
			foreach ($imgPostUrls as $k => $v) {
				if ($k == 0) {
					$imgtbSize = C('CFG_IMGTHUMB_SIZE'); //配置缩略图第一个参数
					$imgTSize  = explode('X', $imgtbSize[0]);
					if (!empty($imgTSize)) {
						$pic = get_picture($v['url'], $imgTSize[0], $imgTSize[1]);
					} else {
						$pic = $v['url'];
					}
				}
				break; //预留以后对图片组校验
			}
		} else {
			$imgPostUrls = array();
		}
		$data['picture_urls'] = json_encode_ex($imgPostUrls);
		//获取属于分类信息,得到model_id
		$selfCate = Category::getSelf(get_category(0), $id); //当前栏目信息
		$model_id = $selfCate['model_id'];

		if (false !== M('category')->save($data)) {
			//attachment index 图片入库
			$first_pic = null;
			insert_att_index($content, $first_pic, $id, $model_id);

			get_category(0, 1); //更新栏目缓存
			get_category(1, 1);
			get_category(2, 1);

			$this->success('修改成功', U('Page/index', array('pid' => $this->pid)));
		} else {

			$this->error('修改失败');
		}

	}

}
