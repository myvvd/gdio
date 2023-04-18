<?php

namespace Common\Model;

//视图模型
class CategoryViewModel extends ExViewModel {

	protected $viewFields = array(
		'category' => array('*', '_type' => 'LEFT'),
		'model'    => array(
			'name'       => 'model_name', //显示字段name as model
			'table_name' => 'table_name', //显示字段name as model
			'_on'        => 'category.model_id = model.id', //_on 对应上面LEFT关联条件
		),

	);
}
