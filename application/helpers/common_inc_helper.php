<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
if ( ! function_exists('_V'))
{
	function _V($path,$with_host = false,$is_return = false)
	{
		global $application_folder;
		$host =
		"http://".$_SERVER["SERVER_NAME"].($_SERVER["SERVER_PORT"]==80?"":(":".$_SERVER["SERVER_PORT"]));
		// $url = $_SERVER["SCRIPT_NAME"];
		$script_name = $_SERVER["SCRIPT_NAME"];
		$base_url = ($with_host?$host:'').trim(dirname($script_name),'\\');

		$view_url = $base_url. "/$application_folder/views/";

		if($is_return)
		{
			return $view_url . $path ;
		}
		echo  $view_url . $path;
	}
}
if(!function_exists('objecttoarray')){
	function objecttoarray($d) {
		if (is_object($d)) {
			// Gets the properties of the given object
			// with get_object_vars function
			$d = get_object_vars($d);
		}
	
		if (is_array($d)) {
			/*
				* Return array converted to object
			* Using __FUNCTION__ (Magic constant)
			* for recursive call
			*/
			return array_map(__FUNCTION__, $d);
		}
		else {
			// Return array
			return $d;
		}
	}
}
if(!function_exists('outtimeline')){
	function outtimeline($data,$type='day',$k='dateline'){
		$lenth=count($data);
		for($i=0;$i<$lenth;$i++){//[08][9][0]
			$m=date('n',$data[$i][$k]);
			$d=date('j',$data[$i][$k]);
			if($type=='mouth'){
				$result[$m][]=$data[$i];
			}else{
				$result[$m][$d][$i]=is_array($days[$m][$d][$i])?array_merge($days[$m][$d][$i],$data[$i]):$data[$i];
			}
		}
		return $result;
	}
}
if(!function_exists('outtimeline_sum')){
	function outtimeline_sum($data,$type='day',$k='money'){
		$lenth=count($data);
		for($i=0;$i<$lenth;$i++){//[08][9][0]
			$m=date('n',$data[$i]['dateline']);
			$d=date('j',$data[$i]['dateline']);
			if($type=='mouth'){
				$result[$m]+=$data[$i][$k];
			}else{
				$result[$m][$d]+=$data[$i][$k];
			}
		}
		return $result;
	}
}