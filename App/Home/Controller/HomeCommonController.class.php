<?php

namespace Home\Controller;

use Think\Controller;

//公共验证控制器HomeCommonController
class HomeCommonController extends Controller {
	public $uid;
	public $email;
	public $uf; //标识
	// 空操作，404页面
	public function _empty() {
		header("HTTP/1.1 404 Not Found");
		header("Status: 404 Not Found");
		$this->display(get_tpl('404.html'));
	}

	protected function _initialize() {
		$this->uid   = intval(get_cookie('uid'));
		$this->email = get_cookie('email');
		$this->uf    = get_cookie('uf');
		if (C('CFG_WEBSITE_CLOSE') == 1) {
			exit_msg(C('CFG_WEBSITE_CLOSE_INFO'));
		}
		if (!function_exists('get_sys_mcp') || !function_exists('get_sys_xcp')) {
			$msg = base64_decode('WFlIQ01T5qC45b+D5paH5Lu26KKr56C05Z2P');
			exit_msg($msg);
		}

		if (!filter_var($this->email, FILTER_VALIDATE_EMAIL)) {
			$this->email = '';
		}
		$this->visitorcounts();
	}

	//浏览量统计
	private function visitorcounts(){
		$ip = get_client_ip();
		$today = strtotime('today');
		$Visitor = M('visitor');
		$todaycount = $Visitor->where("datetime = ".$today)->find();	
		if(empty($todaycount)){
			$data['datetime'] = $today;
			$data['ips']     = $ip;
			$data['count']	 = 1;
			$Visitor->add($data);
		}else{
			$nowvisitor = $Visitor->where("datetime = ".$today." and find_in_set('".$ip."',ips)")->find();
			if(empty($nowvisitor)){
				$data['id'] = $todaycount['id'];
				$data['ips'] = $todaycount['ips'].",".$ip;
				$data['count'] = array('exp','count + 1');
				$Visitor->save($data);
			}
		}
			
	}

}
