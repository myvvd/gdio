<?php

namespace Common\Model;

use Think\Model\ViewModel;

//视图模型
class CommentViewModel extends ViewModel {

	protected $viewFields = array(
		'comment' => array('*',
			'_type' => 'LEFT',
		),
		'model'   => array(
			'name'       => 'model_name',
			'table_name' => 'table_name',
			'_on'        => 'comment.model_id = model.id', //_on 对应上面LEFT关联条件
			'_type'      => 'LEFT',
		),
		'member'  => array(
			'face'     => 'face', //显示字段name as model
			'nickname' => 'nickname', //显示字段name as model
			'_on'      => 'comment.user_id = member.id', //_on 对应上面LEFT关联条件
		),

	);
}
