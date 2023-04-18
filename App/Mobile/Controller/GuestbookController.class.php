<?php

namespace Mobile\Controller;

class GuestbookController extends MobileCommonController {

	public function index() {

		A('Home/Guestbook')->index(); //404
	}
	//添加

	public function add() {
		A('Home/Guestbook')->add(); //404
	}

}
