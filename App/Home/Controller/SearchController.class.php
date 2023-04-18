<?php

namespace Home\Controller;

class SearchController extends HomeCommonController {

	public function index() {
		$top_cate            = M('Category')->Field('*')->find(7);
		$this->assign('pid_cate', $top_cate);
		$modelid = I('model_id', 0, 'intval');
		$typeid  = I('type_id', 0, 'intval');
		$keyword = I('keyword', '', 'htmlspecialchars,trim'); //关键字

		if ($keyword == 'keywords') {
			$keyword = '';
		}

		if (empty($keyword)) {
			$title = 'Search';
		} else {
			$title = $keyword . '_Search';
		}

		$this->assign('title', $title);
		$this->assign('keyword', $keyword);
		$this->assign('searchurl', U('Search/index'));
		$this->assign('model_id', $modelid);
		$this->assign('type_id', $typeid);
		$this->display();

	}

}
