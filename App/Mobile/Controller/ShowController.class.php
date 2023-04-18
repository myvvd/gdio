<?php

namespace Mobile\Controller;

class ShowController extends MobileCommonController {
	//方法：index
	public function index() {
		A('Home/Show')->index();

	}

	public function download() {
		A('Home/Show')->download();
	}

}
