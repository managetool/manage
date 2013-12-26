<?php
/******************************************************
	* Profile			: 列表
	* Author			: druphliu@gmail.com
	* Create Time		: 2013-8-25下午12:57:33
	* Modify Time		: 2013-8-25
	* Modify Profile	:  
	******************************************************/
class MY_Model extends CI_Model {
	public $table;
	function __construct(){
		parent::__construct();
	}
	function update($obj,$params)
	{
		if(is_array($params))
		{
			$result=$this->db->update($this->table,$obj,$params);
		}
		else
		{
			$result=$this->db->update($this->table,$obj,array('id'=>$params));
		}
		return $result;
	}
	function query($where='',$order='',$limit=''){
	    $wheresql=$this->wheresql($where);
		$sql="select * from `".$this->table."`".$wheresql.$order.$limit;
		$result=$this->db->query($sql)->result();
		return $result;
	}
	function wheresql($where){
		if(is_array($where)){
			foreach($where as $k=>$v){
				$wheresql.=$comm."`$k`='$v'";
				$comm=' and ';
			}
			$wheresql=" where ".$wheresql;
		}else{
			$wheresql=$where?" where ".$where:'';
		}
		return $wheresql;
	}
}