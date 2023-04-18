<?php

namespace Common\Model;

//视图模型
class MemberViewModel extends ExViewModel {

	protected $viewFields = array(
		'member'        => array('*', '_type' => 'LEFT'),
		'member_group'  => array(
			'name'  => 'groupname',
			'_on'   => 'member.group_id = member_group.id', //_on 对应上面LEFT关联条件
			'_type' => 'LEFT',
		),
		'member_detail' => array(
			'*', //显示字段name as model
			'_on' => 'member.id = member_detail.user_id', //_on 对应上面LEFT关联条件
		),
	);
}
