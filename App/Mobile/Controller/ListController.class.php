<?php

namespace Mobile\Controller;

class ListController extends MobileCommonController {

	public function index() {

		A('Home/List')->index();

	}

	public function map() {

		A('Home/List')->map();
	}

}
