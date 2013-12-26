<?php
class ADMIN_Controller extends CM_Controller {
	function __construct() {
		parent::__construct ();
		if (! $this->session->userdata ( 'username' )) {
			$this->gotourl ( '/user' );
		}else{
			$this->load->vars(array('_userdlname'=>$this->session->userdata('userdlname'),
					                 '_username'=>$this->session->userdata('username'),
					                 '_fuze'=>$this->session->userdata('fuze'),
					                 '_departmentid'=>$this->session->userdata('departmentid')
					                )
					         );
		}
	}
}
class CM_Controller extends CI_Controller{
	function __construct() {
		parent::__construct ();
		$this->load->vars(
				array('site_name'=>$this->config->item('sitename'),
						'charset'=>$this->config->item('charset'))
		);
	}
	function gotourl($url) {
		header ( "location:$url" );
	}
	function showmessage($msg,$url,$time=1){
		$this->load->vars(array('message'=>$msg,'url'=>$url,'time'=>$time));
		$this->load->view('message');
		
	}
	function pages($url,$total,$type=''){
		$perpage=$this->config->item('perpage');
		$config['page_query_string'] = TRUE;
		$config['base_url'] = $url;
		$config['total_rows'] = $total;
		$config['per_page'] = $perpage;
		$config['use_page_numbers'] = TRUE;
		$config['first_link']="第一页";
		$config['last_link'] = '最后一页';
		$this->pagination->initialize($config);//分页
		$pages=$this->pagination->create_links();
		return $pages;
	}
	function refer(){
		$refer=$_SERVER['HTTP_REFERER'];
		return $refer;
	}
}