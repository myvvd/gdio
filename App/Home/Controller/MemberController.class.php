<?php

namespace Home\Controller;

class MemberController extends HomeCommonController {

	public $member_open; //会员中心是不开启

	public function _initialize() {
		parent::_initialize();

		$this->member_open = C('CFG_MEMBER_OPEN'); //会员中心是否关闭
		if (!$this->member_open) {
			exit_msg('会员中心已关闭！');
		}

		if (empty($this->uid)) {
			$this->redirect(MODULE_NAME . '/Public/login');
		}
		if (!A('Public')->_loginChk()) {
			$this->redirect(MODULE_NAME . '/Public/login');
		}
	}

	public function index() {

		$user = D('MemberView')->nofield('password,encrypt')->find($this->uid);
		if (!$user) {
			$this->error('请重新登录', U(MODULE_NAME . '/Public/login'));
		}
		$user['detail'] = M('MemberDetail')->find($this->uid);
		if (empty($user['detail'])) {
			$user['detail'] = array(
				'realname' => '还没设置',
				'sex'      => '保密',
				'birthday' => '0000-00-00',
				'animal'   => '保密',
				'star'     => '保密',
				'province' => '保密',
				'area'     => '保密',
			);
		} else {
			$user['detail']['sex']    = $user['detail']['sex'] ? '女士' : '男士';
			$user['detail']['animal'] = get_item_value('animal', $user['detail']['animal']);
			$user['detail']['star']   = get_item_value('animal', $user['detail']['star']);
		}

		$this->assign('user', $user);
		$this->assign('title', '会员中心');
		$this->display();
	}

	public function name() {
		$user = M('member')->find($this->uid);
		if (!$user) {
			$this->error('请重新登录', U(MODULE_NAME . '/Public/login'));
		}

		if (IS_POST) {
			$data['nickname'] = I('nickname', '', 'htmlspecialchars,trim');
			$data['id']       = $this->uid;
			if (empty($data['nickname'])) {
				$this->error('你还没有输入昵称！');
			}

			$notallowname = explode(',', C('CFG_MEMBER_NOTALLOW'));
			if (in_array($data['nickname'], $notallowname)) {
				$this->error('此昵称系统禁用，请重新更换一个！');
			}

			if (M('member')->save($data) !== false) {
				set_cookie(array('name' => 'nickname', 'value' => $data['nickname'], 'expire' => get_cookie('expire')));
				$this->success('修改成功', U(MODULE_NAME . '/Member/index'));
			} else {
				$this->error('修改昵称失败！');
			}
			exit();
		}

		$this->assign('user', $user);
		$this->assign('title', '修改昵称');
		$this->display();
	}

	public function password() {
		if (IS_POST) {
			$oldpassword = I('oldpassword', '');
			$password    = I('password', '');
			$repassword  = I('repassword', '');
			if (empty($oldpassword)) {
				$this->error('请填写旧密码！');
			}
			if (empty($password)) {
				$this->error('请填写新密码！');
			}

			if ($password != $repassword) {
				$this->error('两次密码不一样，请重新填写！');
			}

			$self = M('member')->field(array('email', 'password', 'encrypt'))->where(array('id' => $this->uid))->find();
			if (!$self) {
				$this->error('用户不存在，请重新登录');
			}

			if (get_password($oldpassword, $self['encrypt']) != $self['password']) {
				$this->error('旧密码错误');
			}

			$passwordinfo = get_password($password);

			$data = array(
				'id'       => $this->uid,
				'password' => $passwordinfo['password'],
				'encrypt'  => $passwordinfo['encrypt'],
			);

			if (false !== M('member')->save($data)) {
				$this->success('修改密码成功', U(MODULE_NAME . '/Member/password'));
			} else {

				$this->error('修改密码失败');
			}
			exit();
		}

		$this->assign('title', '修改密码');
		$this->display();
	}

	public function avatar() {

		//$this->display();
	}

	public function person() {
		if (IS_POST) {
			$data['realname'] = I('realname', '', 'htmlspecialchars,trim');
			$data['birthday'] = I('birthday', '0000-00-00');
			$data['sex']      = I('sex', 0, 'intval');
			$data['address']  = I('address', '');
			$data['tel']      = I('tel', '');
			$data['mobile']   = I('mobile', '');
			$data['qq']       = I('qq', '');
			$data['maxim']    = I('maxim', '');

			$data['user_id']    = $this->uid;
			$data['updatetime'] = time();
			$new                = I('new', 0, 'intval');
			if (empty($data['realname'])) {
				$this->error('请输入姓名！');
			}

			$result = true;
			if ($new) {
				$result = M('MemberDetail')->add($data);
			} else {
				$result = M('MemberDetail')->save($data);
			}

			if (false !== $result) {
				$this->success('修改基本资料成功', U(MODULE_NAME . '/Member/person'));
			} else {

				$this->error('修改基本资料失败');
			}
			exit();
		}

		$userdetail = M('MemberDetail')->where(array('user_id' => $this->uid))->find();
		if (!$userdetail) {
			$userdetail = array(
				'uid'      => $this->uid,
				'email'    => get_cookie('email'),
				'realname' => '',
				'sex'      => 0,
				'birthday' => '1990-1-1',
				'address'  => '',
				'tel'      => '',
				'mobile'   => '',
				'qq'       => '',
				'maxim'    => '',
			);
			$userdetail['new'] = 1;
		} else {
			$userdetail['new']   = 0;
			$userdetail['uid']   = $this->uid;
			$userdetail['email'] = get_cookie('email');
		}
		$this->assign('vo', $userdetail);
		$this->assign('title', '基本资料');
		$this->display();
	}

}
