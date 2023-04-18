<?php

namespace Home\Controller;

class TagController extends HomeCommonController {

	public function shows() {

		$tag_name = I('tname', '');
		if (empty($tag_name)) {
			R('Empty/_empty'); //404
			return;
		}
		$where    = array('tag_name' => $tag_name);
		$tag_info = M('Tag')->where($where)->find();

		if (!$tag_info) {
			R('Empty/_empty'); //404
			return;
		}

		$where = array('a.delete_status' => 0, 'b.tag_id' => $tag_info['id'], 'c.status' => array('LT', 2));

		$_taglist = M('SearchAll')->alias('a')->field('a.*,c.name as cate_name,c.ename,c.status as cate_status')
			->join('INNER JOIN __TAG_INDEX__ b ON b.arc_id = a.arc_id AND b.model_id = a.model_id')
			->join('INNER JOIN __CATEGORY__ c ON c.id = a.cid')
			->where($where)->limit($limit)->select();

		foreach ($_taglist as $key => $val) {
			$_jumpflag             = !empty($val['jump_url']) ? true : false;
			$_taglist[$key]['url'] = get_content_url($val['arc_id'], $val['cid'], $val['ename'], $_jumpflag, $val['jump_url']);

		}

		$this->assign('title', 'Tag相关文档');
		$this->assign('tname', $tag_name);
		$this->assign('vlist', $_taglist);
		$this->display();

	}

}
