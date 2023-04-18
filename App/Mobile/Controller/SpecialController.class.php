<?php

namespace Mobile\Controller;

class SpecialController extends MobileCommonController {

	public function index() {

		A('Home/Special')->index();

	}

	/*测试－用户模型*/
	public function lists() {

		A('Home/Special')->lists();

	}

	public function shows($id = 0) {
		A('Home/Special')->shows($id);

	}

}
