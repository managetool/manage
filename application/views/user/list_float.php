<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>请选择用户</title>
<SCRIPT   LANGUAGE="JavaScript">   
  <!--   
  function  CloseSelf(name,id){  
// alert  (clientname);

    window.opener.document.myform.username.value=name; 
    window.opener.document.myform.userid.value=id;
    window.close();   
  }   
  //-->   
</SCRIPT>	
<link  type='text/css' rel='stylesheet' href='/css/common.css'></link>
<style>
a{color:#069; text-decoration:none;}
</style>
</head>
<form name="myform" method="get" action=""   style="padding:0px;margin:0px 0px 0px 0px;">	
<table style="width:100%; border:1px solid #ccc; font-size:12px;" border="0" align="center" cellpadding="0" cellspacing="0" class="select_client">
  <tr> 
    <td width="14%" height="27" align="center" bgcolor="DBDEF4" class="select_class">用户名称 
    </td>
    <td width="41%" bgcolor="DBDEF4" class="select_class"><input name="search"  type="text"  id="name" size="20"  maxlength="30" value="<?= $search?>">
      &nbsp;</td>
    <td width="17%" bgcolor="DBDEF4" class="select_class">
    <input type="hidden" name="type" class="submit" value="float">
    <input type="submit" name="Submit" class="submit" value="-查找-"></td>
    <td width="11%" bgcolor="DBDEF4" class="select_class"></td>
    <td width="17%" bgcolor="DBDEF4" class="select_class"></td>
  </tr>
</table>
</form>
<table border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC" class="select_client" style="width:100%; color:#FFF; font-size:12px;">
  <tr> 
    <td bgcolor="#333d46" class="tishi" colspan="7" bordercolor="#333d46">用户信息选择</td>
<?php foreach($list as $v){
$id=$v->id;
$userid=$v->userid;
$username=$v->username?>
				<tr onMouseOver="this.bgColor ='#C2E9FC'" onMouseOut="this.bgColor = 'FFFFFF'" bgcolor="#FFFFFF" style=" height:20px;line-height:20px;" >
		
				<td  width=31%   style="border-bottom: 1px solid rgb(216, 216, 216);" nowrap >
<SCRIPT   LANGUAGE="JavaScript">   
  <!--   
//	var clientname=;
	var username<?=$id;?>=new String('<?=$username;?>'); 
  var userid<?=$id;?>=new String('<?=$userid;?>'); 
  //-->   
</SCRIPT>						
						
					<a href="" id="td<?=$id;?>"  onclick="CloseSelf(username<?=$id;?>,userid<?=$id;?>);"><?=$username;?></a></td>
				
				<td  width=8%  class="usermanage_2" style="border-bottom:1px solid #D8D8D8; border-left:1px solid #D8D8D8;"><a href="" id="td<?=$id;?>"  onclick="CloseSelf(username<?=$id;?>,userid<?=$id;?>);">选择</a></td>

					</tr>
<?php }?>
				<tr >
				<td  width=100% align="center" bgcolor="#FFFFFF" style="padding:2px;height:22px;line-height:22px;border-bottom:1px solid #e8e8e8;" colspan="9">
					<div class="pages"><?= $pages?></div>
				</td>
 				</tr>
</table>
</html>