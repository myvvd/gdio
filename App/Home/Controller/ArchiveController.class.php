<?php

namespace Home\Controller;

class ArchiveController extends HomeCommonController {
	//方法：index
	public function index() {

		$cid      = I('cid', 0, 'intval');
		$model_id = I('model_id', 1, 'intval');
		$year     = I('year', 0, 'intval');
		$month    = I('month', 0, 'intval');
		$orderby  = 'publishtime desc';

		$model_name = M('model')->where(array('id' => $model_id))->getField('name');
		$model_name = empty($model_name) ? '文档' : str_replace('模型', '', $model_name);
		$title      = $model_name . '存档列表';

		$this->assign('title', $title);
		$this->assign('cid', $cid);
		$this->assign('model_id', $model_id);
		$this->assign('model_name', $model_name);
		$this->assign('year', $year);
		$this->assign('month', $month);
		$this->assign('page', '');
		$this->assign('purl', U('Archive/index', array('model_id' => $model_id)));
		$this->display();

	}

}
