<?php
/******************************************************
	* Profile			: 列表
	* Author			: druphliu@gmail.com
	* Create Time		: 2013-8-23
	* Modify Time		: 2013-8-23
	* Modify Profile	:  用户登录页面
	******************************************************/
class user extends CM_Controller {
	public function index() {
		$this->load->view ( 'user/login' );
	}
	/**
	 * 登录
	 */
	public function login() {
		if ($this->input->post ()) {
			$pswd = $this->input->post ( 'pwd' );
			$username = $this->input->post ( 'userid' );
			$user = $this->user_model->get_one ( $username );
			if (! $user) {
				$this->showmessage ( '用户不存在', '/user' );
			} elseif ($user->userpwd != $pswd) {
				$this->showmessage ( '密码不正确', '/user' );
			} else {
				$this->session->set_userdata ( array (
						'userdlname' => $user->userid,
						'username' => $user->username,
						'isfuze' => $user->fuze,
						'departmentid' => $user->departmentid 
				) );
				$this->gotourl ( '/' );
			}
		}
	}
	/**
	 * 退出
	 */
	public function logout() {
		$this->session->unset_userdata ( array (
				'userdlname' => '',
				'username' => '',
				'isfuze' => '',
				'departmentid' => '' 
		) );
		$this->showmessage ( '退出成功', '/user' );
	}
	/**
	 * 个人信息修改
	 */
	public function info() {
		$userid = $this->session->userdata ( 'userid' );
		$user = $this->user_model->get_one ( $userid );

		if ($this->input->post ()) {
			$departmentid = $this->input->post ( 'department' );
			if ($departmentid != $user->id) {
				$data ['departmentid'] = $departmentid;
			}
			$data ['username'] = $this->input->post ( 'username' );
			$data ['xingb'] = $this->input->post ( 'xingb' );
			$data ['usermail'] = $this->input->post ( 'usermail' );
			$data ['usertel'] = $this->input->post ( 'usertel' );
			$where = array (
					'userid' => $user->userid 
			);
			$result = $this->user_model->update ( $data, $where );
			$url = "/user/info";
			if ($result) {
				$this->showmessage ( '更新成功过!', $url );
			} else {
				$this->showmessage ( '未知错误！', $url );
			}
		} else {
			$this->load->vars ( array (
					'user' => $user
			) );
			$this->load->view ( 'user/info' );
		}
	}
	/**
	 * 修改密码
	 */
	public function pswd() {
		if ($this->input->post ()) {
			$olduserpwd = $this->input->post ( 'olduserpwd' );
			$userpwd = $this->input->post ( 'userpwd' );
			$userpwdconfirm = $this->input->post ( 'userpwdconfirm' );
			$userid = $this->session->userdata ( 'userid' );
			$user = $this->user_model->get_one ( $userid );
			if ($userpwd == $userpwdconfirm && $olduserpwd == $user->userpwd) {
				$data = array (
						'userpwd' => $userpwd 
				);
				$where = array (
						'userid' => $user->userid 
				);
				$resulr = $this->user_model->update ( $data, $where );
				$url = "/user/pswd";
				if ($resulr) {
					$this->showmessage ( "密码更新成功!", $url );
				} else {
					$this->showmessage ( '操作失败！', $url );
				}
			}
		} else {
			$this->load->view ( 'user/pswd' );
		}
	}
	/**
	 * 添加用户
	 */
	public function add() {
		if ($this->input->post ()) {
			$userid = $data ['userid'] = $this->input->post ( 'userid' );
			$userpwd = $data ['userpwd'] = $this->input->post ( 'userpwd' );
			$userpwdconfirm = $this->input->post ( 'userpwdconfirm' );
			$data ['username'] = $this->input->post ( 'username' );
			$data ['xingb'] = $this->input->post ( 'xingb' );
			$departmentid = $data ['departmentid'] = $this->input->post ( 'department' );
			$data ['usertel'] = $this->input->post ( 'usertel' );
			$data ['usermail'] = $this->input->post ( 'usermail' );
			$departmentname =$this->department_model->get_one($departmentid)->departmentname;
			$exit = $this->user_model->get_one ( $userid );
			if ($this->input->post ( 'fuze' ))
				$data ['fuze'] = 1;
			if (! $exit && $departmentname && ($userpwd == $userpwdconfirm)) {
				$data ['addtime'] = $data ['modytime'] = time ();
				$data ['departmentname'] = $departmentname;
				$resut = $this->user_model->insert_one ( $data );
				if ($resut)
					$this->showmessage ( '用户添加成功', '/user/user_list' );
				else
					$this->showmessage ( '添加失败', '/user/add' );
			} else {
				$this->showmessage ( '添加数据有误！', '/user/add' );
			}
		} else {
			$department = $this->department_model->get_all ();
			$this->load->vars ( array (
					'department' => $department 
			) );
			$this->load->view ( 'user/add' );
		}
	}
	public function user_list($page = 1) {
		$type=$_GET['type'];
		$departmentid=$_GET['departmentid'];
		$search=$_GET['search'];
		$page=$_GET['per_page']?$_GET['per_page']:$page;
		$perpage = $this->config->item ( 'perpage' );
		$start = ($page - 1) * $perpage;
		$limit = " limit $start,$perpage";
		$where=$departmentid?"  departmentid=$departmentid":'';
		if($type=='float'){
			$where.=$where?" and userid <>'admin'":'';			
		}
		if($search)$where.=$where?" and username like '%$search%'":'';
		$result = $this->user_model->get_list ( $where, $limit );
		$url = "/user/user_list?type=$type&search=$search&departmentid=$departmentid";
		$count = $this->user_model->get_total ($where);
		$total = $count->count;
		$pages = $this->pages ( $url, $total );
		$this->load->vars ( array (
				'list' => $result,
				'pages' => $pages,
				'search'=>$search
		) );
		if ($type == 'float') {
			$this->load->view ( 'user/list_float' );
		} else {
			$this->load->view ( 'user/list' );
		}
	}
	public function del($userid) {
		$result = $this->user_model->del ( $userid );
		$url = $this->refer ();
		if ($result)
			$this->showmessage ( '删除成功！', $url );
		else
			$this->showmessage ( '删除失败！', $url );
	}
	public function edit($userid) {
		$user = $this->user_model->get_one ( $userid );
		if ($this->input->post ()) {
			$departmentid = $this->input->post ( 'department' );
			if ($user->departmentid != $departmentid) {
				$departmentname = $data ['departmentname'] = $this->department_model->get_one($departmentid)->departmentname;
				$data ['departmentid'] = $departmentid;
			}
			$pswd = $this->input->post ( 'userpwd' );
			$rpswd = $this->input->post ( 'userpwdconfirm' );
			if ($pswd && $pswd == $rpswd) {
				$data ['userpwd'] = $pswd;
			}
			$data ['username'] = $this->input->post ( 'username' );
			$xingb = $this->input->post ( 'xingb' );
			if ($user->xingb == $xingb) {
				$data ['xingb'] = $xingb;
			}
			$data ['usertel'] = $this->input->post ( 'usertel' );
			$data ['usermail'] = $this->input->post ( 'usermail' );
			$params = array (
					'userid' => $userid 
			);
			$etc = $this->user_model->update_info ( $data, $params );
			$url = '/user/user_list';
			if ($etc)
				$this->showmessage ( '编辑成功', $url );
			else
				$this->showmessage ( '编辑失败', $url );
		} else {
			$department = $this->department_model->get_all ();
			$this->load->vars ( array (
					'user' => $user,
					'department' => $department 
			) );
			$this->load->view ( '/user/edit' );
		}
	}
} 