<?php

namespace Manage\Controller;

class JobController extends CommonController
{

    public function index()
    {
		$db = M('job');
        $count = $db->count();
		$page           = new \Common\Lib\Page($count, 10);
        $page->rollPage = 7;
        $page->setConfig('theme', '%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%');
        $limit = $page->firstRow . ',' . $page->listRows;
		
        $list  = $db->order('job_id DESC')->limit($limit)->select();
		
        $this->assign('page', $page->show());
        $this->assign('vlist', $list);
        $this->assign('type', '招聘管理');

        
        $this->display();
    }
    //添加
    public function add()
    {
        //当前控制器名称
		$actionName = strtolower(CONTROLLER_NAME);
        if (IS_POST) {
			$data            = I('post.', '');
			$data['inputtime'] = time();
			$data['content']     = I('content', '', '');
			$data['yaoqiu']     = I('yaoqiu', '', '');
			$data['endtime'] = strtotime($_POST['endtime']);
			$db = M('job');
			if ($id = $db->add($data)) {
            $this->success('添加成功', U('Job/index'));
			} else {
				$this->error('添加失败');
			}
			
           // $this->addPost();
           
        }
		
        $this->display();
    }

  

    //修改
    public function update()
    {
        //当前控制器名称
        $id         = I('job_id', 0, 'intval');
        $actionName = strtolower(CONTROLLER_NAME);
		if (IS_POST) {
            $this->editPost();
            exit();
        }
		$condition['job_id'] = $id;
		$data = M('job')->where($condition)->find();
		$this->assign('data', $data);
		$this->display();
    }

	//修改处理
	public function editPost()
    {
        $data          = I('post.');
        $id            = $data['job_id']            = I('job_id', 0, 'intval');
		$data['endtime'] = strtotime($_POST['endtime']);
		$data['content']     = I('content', '', '');
		$data['yaoqiu']     = I('yaoqiu', '', '');
        if (false !== M('Job')->save($data)) {
            $this->success('修改成功', U('Job/index'));
        } else {
            $this->error('修改失败');
        }

    }
	
	//查看申请列表
	public function liebiao()
    {
        $id         = I('job_id', 0, 'intval');
        $actionName = strtolower(CONTROLLER_NAME);
		$condition['job_id'] = $id;
		$data = M('jobexp')->where($condition)->select();
		if($data){
			$this->assign('datat', $data);
			$this->display();
		}else{
			$this->error('本职位暂无人申请');
		}

    }
	
	
	//修改处理
	public function ypshow()
    {
        $id         = I('id', 0, 'intval');
        $actionName = strtolower(CONTROLLER_NAME);
		$condition['id'] = $id;
		$data = M('jobexp')->where($condition)->find();
		$this->assign('data', $data);
		$this->display();

    }
	
	//修改
    public function yingpin()
    {
		$db = M('jobexp');
        $count = $db->count();
		$page           = new \Common\Lib\Page($count, 10);
        $page->rollPage = 7;
        $page->setConfig('theme', '%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%');
        $limit = $page->firstRow . ',' . $page->listRows;
		
        $list  = $db->order('id DESC')->limit($limit)->select();
		
        $this->assign('page', $page->show());
        $this->assign('vlist', $list);
        $this->assign('type', '应聘管理');
        $this->display();
    }
	
	//详情
	public function show()
    {
        //当前控制器名称
        $id         = I('job_id', 0, 'intval');
        $actionName = strtolower(CONTROLLER_NAME);
		$condition['job_id'] = $id;
		$data = M('job')->where($condition)->find();
		$this->assign('data', $data);
		$this->display();
      
    }
	
	
    //回复处理
    public function replyPost()
    {

        $id    = I('id', '', 'intval');
        $reply = I('reply', '', 'trim');
        $pic   = I('logo', '', 'trim');
        if (!$id) {
            $this->error('参数错误');
        }
        $data = array(
            'id'        => $id,
            'reply'     => $reply,
            'replytime' => time(),
        );

        if (false !== M('job')->save($data)) {
            $this->success('修改成功', U('Job/index'));
        } else {

            $this->error('修改失败');
        }

    }

	//彻底删除应聘
    public function ypdel()
    {

        $id        = I('id', 0, 'intval');
        $batchFlag = I('get.batchFlag', 0, 'intval');
        //批量删除
        if ($batchFlag) {
            $this->ypdelBatch();
            return;
        }

        if (M('jobexp')->delete($id)) {
            $this->success('彻底删除成功', U('Job/yingpin'));
        } else {
            $this->error('彻底删除失败');
        }
    }
	
	//批量彻底删除应聘
    public function ypdelBatch()
    {

        $idArr = I('key', 0, 'intval');
        if (!is_array($idArr)) {
            $this->error('请选择要彻底删除的项');
        }
        $where = array('id' => array('in', $idArr));

        if (M('jobexp')->where($where)->delete()) {
            $this->success('彻底删除成功', U('Job/yingpin'));
        } else {
            $this->error('彻底删除失败');
        }
    }
	
    //彻底删除文章
    public function del()
    {

        $id        = I('job_id', 0, 'intval');
        $batchFlag = I('get.batchFlag', 0, 'intval');
        //批量删除
        if ($batchFlag) {
            $this->delBatch();
            return;
        }

        if (M('job')->delete($id)) {
            $this->success('彻底删除成功', U('Job/index'));
        } else {
            $this->error('彻底删除失败');
        }
    }

    //批量彻底删除文章
    public function delBatch()
    {

        $idArr = I('key', 0, 'intval');
        if (!is_array($idArr)) {
            $this->error('请选择要彻底删除的项');
        }
        $where = array('job_id' => array('in', $idArr));

        if (M('job')->where($where)->delete()) {
            $this->success('彻底删除成功', U('Job/index'));
        } else {
            $this->error('彻底删除失败');
        }
    }

}
