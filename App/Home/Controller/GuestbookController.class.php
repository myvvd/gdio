<?php

namespace Home\Controller;

class GuestbookController extends HomeCommonController {

	public function index() {

		$this->assign('title', '留言本');
		$this->display();
	}
	//添加

	public function add() {
		if (!IS_POST) {
			exit();
		}
		$content = I('content', '');
		$data    = I('post.');
		$code = I('code', '','');
		$email= I('email', '','');
		$vcode = session(md5($email));
		if($vcode!==$code){
			$this->error('Incorrect verification code');
		}
		
		if (empty($data['username'])) {
			$this->error('Name cannot be empty!');
		}
		
		$data['post_time'] = date('Y-m-d H:i:s');
		$data['ip']        = get_client_ip();

		$db = M('guestbook');
		$subject = 'JOIN US';
		$message = 
	"<p>First Name：{$data['username']}</p>
	<p>Family Name：{$data['qq']}</p>
	<p>Gender：{$data['gender']}</p>
	<p>Email：{$data['email']}</p>
	<p>State：{$data['state']}</p>
	<p>Organization：{$data['organization']}</p>
	<p>Organization Website：{$data['government']}</p>
	<p>Position：{$data['position']}</p>
	<p>What is the business scope of your organization?：{$data['business']}</p>
	<p>Which field of design are you engaged in?：{$data['engaged']}</p>
	<p>Cell Phone：{$data['tel']}</p>	
	<p>LinkedIn ID：{$data['content']}</p>
	<p>On behalf of my individual, I intend to become the Member of the Global Design Industry Organization.：".($data['is_personal']==1?"Yes":"No")."</p>	
	<p>On behalf of my organization, we intend to become the Member of the Global Design Industry Organization.：".($data['is_org']==1?"Yes":"No")."</p>";
		
		if ($id = $db->add($data)) {
			send_mail('361008280@qq.com', $subject, $message);
			send_mail('info@gdio.org', $subject, $message);
			$this->success('Application Submitted!');
		} else {
			$this->error('error');
		}
	}

}
