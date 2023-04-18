<?php

namespace Home\Controller;

class IndexController extends HomeCommonController {
	//方法：index
	public function index() {
	
		go_mobile();
		
		$site_name  = C('CFG_WEBNAME');
		$site_title = C('CFG_WEBTITLE');
		$this->assign('title', empty($site_title) ? $site_name : $site_title);
		$this->assign('keywords', C('CFG_KEYWORDS'));
		$this->assign('description', C('CFG_DESCRIPTION'));	
		$this->display();

	}
}
