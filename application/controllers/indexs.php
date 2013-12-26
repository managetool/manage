<?php
/******************************************************
	* Profile			: 列表
	* Author			: druphliu@gmail.com
	* Create Time		: 2013-8-23
	* Modify Time		: 2013-8-23
	* Modify Profile	:  
	******************************************************/
if (! defined ( 'BASEPATH' ))
	exit ( 'No direct script access allowed' );
class indexs extends ADMIN_Controller {
	public function index() {
		$this->load->view ( 'desktop' );
	}
	public function top(){
		$this->load->view('top');
	}
	public function down(){
		$this->load->view('down');
	}
	public function center(){
		$this->load->view('center');
	}
	public function left(){
		$this->load->view('left');
	}
}