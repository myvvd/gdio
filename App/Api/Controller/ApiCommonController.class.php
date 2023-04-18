<?php
namespace Api\Controller;

use Think\Controller;


class ApiCommonController extends Controller {


    //用户id
    protected $uid = 0;

    /**
     * 空操作，404页面
     * @return NULL
     */
    public function _empty() {
        header("HTTP/1.1 404 Not Found");
        header("Status: 404 Not Found");
        // header("Content-Type: text/html; charset=utf-8");
        // $this->display('Public:404');
        echo '404 Not Found';

    }



}
