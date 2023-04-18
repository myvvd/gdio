<?php

namespace Home\Controller;
use Common\Lib\Category;
class JobController extends HomeCommonController
{

    public function index()
    {

        $cid = 6;
		$cate = get_category(0);
		$self = Category::getSelf($cate, $cid); //当前栏目信息
		$cid         = $self['id']; //当使用ename获取的时候，就要重新给$cid赋值，不然0
        $_GET['cid'] = $cid; //栏目ID
        $self['url'] = get_url($self);
		/*wj 2017/2/27 父类信息 start*/
		$pid = $self['pid'];
		$pid_self  = Category::getSelf($cate, $pid); //当前栏目信息
		$pid_cate            = M('Category')->Field('*')->find($pid);
		
		if($pid_self['pid']>0){
			$top_id = $pid_self['pid'];
			$top_self  = Category::getSelf($cate, $top_id); //当前栏目信息
			$top_cate            = M('Category')->Field('*')->find($top_id);
			$this->assign('pid_cate', $top_self); 
			$this->assign('pid_self', $top_cate);
			$this->assign('pid', $top_id);
		}else{
			if($pid==0){
				$top_cate            = M('Category')->Field('*')->find($cid);
				$this->assign('pid_cate', $top_cate);
				$this->assign('pid_self', $self);
				$this->assign('pid', $cid);
			}else{
				$this->assign('pid_cate', $pid_cate);
				$this->assign('pid_self', $pid_self);
				$this->assign('pid', $pid);
			}
		}
		$this->assign('cid', $cid);
		$this->assign('cate', $cate);
		/*wj 2017/2/27 父类信息 end*/
		
		//分页
        $count = M('job')->count();

        $page           = new \Common\Lib\Page($count, 6);
        $page->rollPage = 3;
        $page->setConfig('theme', ' %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%');
        $limit = $page->firstRow . ',' . $page->listRows;
        $list  = M('job')->order('job_id DESC')->limit($limit)->select();
		

        $this->assign('page', $page->show());
        $this->assign('vlist', $list);
        $this->assign('title', '招聘管理');
        $this->display();
    }
	
	//简历
	public function jianli()
    {
        $cid = 6;
		$cate = get_category(0);
		$self = Category::getSelf($cate, $cid); //当前栏目信息
		$cid         = $self['id']; //当使用ename获取的时候，就要重新给$cid赋值，不然0
        $_GET['cid'] = $cid; //栏目ID
        $self['url'] = get_url($self);
		/*wj 2017/2/27 父类信息 start*/
		$pid = $self['pid'];
		$pid_self  = Category::getSelf($cate, $pid); //当前栏目信息
		$pid_cate            = M('Category')->Field('*')->find($pid);
		
		if($pid_self['pid']>0){
			$top_id = $pid_self['pid'];
			$top_self  = Category::getSelf($cate, $top_id); //当前栏目信息
			$top_cate            = M('Category')->Field('*')->find($top_id);
			$this->assign('pid_cate', $top_self); 
			$this->assign('pid_self', $top_cate);
			$this->assign('pid', $top_id);
		}else{
			if($pid==0){
				$top_cate            = M('Category')->Field('*')->find($cid);
				$this->assign('pid_cate', $top_cate);
				$this->assign('pid_self', $self);
				$this->assign('pid', $cid);
			}else{
				$this->assign('pid_cate', $pid_cate);
				$this->assign('pid_self', $pid_self);
				$this->assign('pid', $pid);
			}
		}
		$this->assign('cid', $cid);
		$this->assign('cate', $cate);
		/*wj 2017/2/27 父类信息 end*/
		$id = I('job_id', 0, 'intval');
        $actionName = strtolower(CONTROLLER_NAME);
		$condition['job_id'] = $id;
        $data  = M('job')->where($condition)->find();
        $this->assign('job_id', $id);
        $this->assign('data', $data);
        $this->assign('title', '职位申请');
        $this->display();
    }
	
	//提交
	public function sub()
    {
        $actionName = strtolower(CONTROLLER_NAME);
		$data = I('post.');
		if (M('jobexp')->add($data)) {
        $this->success('申请成功');
		}else {
            $this->error('添加失败');
        }
    }
	
	
	public function show()
    {
         $cid = 6;
		$cate = get_category(0);
		$self = Category::getSelf($cate, $cid); //当前栏目信息
		$cid         = $self['id']; //当使用ename获取的时候，就要重新给$cid赋值，不然0
        $_GET['cid'] = $cid; //栏目ID
        $self['url'] = get_url($self);
		/*wj 2017/2/27 父类信息 start*/
		$pid = $self['pid'];
		$pid_self  = Category::getSelf($cate, $pid); //当前栏目信息
		$pid_cate            = M('Category')->Field('*')->find($pid);
		
		if($pid_self['pid']>0){
			$top_id = $pid_self['pid'];
			$top_self  = Category::getSelf($cate, $top_id); //当前栏目信息
			$top_cate            = M('Category')->Field('*')->find($top_id);
			$this->assign('pid_cate', $top_self); 
			$this->assign('pid_self', $top_cate);
			$this->assign('pid', $top_id);
		}else{
			if($pid==0){
				$top_cate            = M('Category')->Field('*')->find($cid);
				$this->assign('pid_cate', $top_cate);
				$this->assign('pid_self', $self);
				$this->assign('pid', $cid);
			}else{
				$this->assign('pid_cate', $pid_cate);
				$this->assign('pid_self', $pid_self);
				$this->assign('pid', $pid);
			}
		}
		$this->assign('cid', $cid);
		$this->assign('cate', $cate);
		/*wj 2017/2/27 父类信息 end*/
		$id         = I('job_id', 0, 'intval');
        $actionName = strtolower(CONTROLLER_NAME);
		$condition['job_id'] = $id;
		$data = M('job')->where($condition)->find();
		$this->assign('data', $data);
		$this->display();

    }
	
	
	//提交
	public function check()
    {
        $actionName = strtolower(CONTROLLER_NAME);
		$id = $_GET['id'];
		$data['shenhe']=1;
		$data['id'] = $id;
		if($id>0){
			$db = M('jobexp')->where(array('id' => $id,'shenhe'=>0))->find();
			if(empty($db)){
				exit('0');
			}
			M('jobexp')->save($data);
			exit('1');
		}else{
			exit('2');
		}	
    }
    //添加


}
