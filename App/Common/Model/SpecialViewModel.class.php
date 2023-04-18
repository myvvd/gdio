<?php

namespace Common\Model;

//视图模型
class SpecialViewModel extends ExViewModel {

	protected $viewFields = array(
		'special'  => array('*', '_type' => 'LEFT'),
		'category' => array(
			'name'     => 'cate_name',
			'ename'    => 'ename',
			'model_id' => 'model_id',
			'status'   => 'cate_status', //栏目状态，禁止的不显示
			'_on'      => 'special.cid = category.id', //_on 对应上面LEFT关联条件
		),

	);
}
