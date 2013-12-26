<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<base href="<?= base_url()?>"/>
<style type="text/css">
<!--
body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}
.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}
.STYLE6 {color: #000000; font-size: 12; }
.STYLE10 {color: #000000; font-size: 12px; }
.STYLE19 {
	color: #344b50;
	font-size: 12px;
}
.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}
.STYLE22 {
	font-size: 12px;
	color: #295568;
}
-->
</style>
<script language="javascript">
<!--
function FormCheck() 
{

  if (myform.userid.value=="")
  {
    alert("请您填写用户ID！");
    document.myform.userid.focus();
    return false;
  }
  
var filter=/^\s*[A-Za-z0-9_-]{4,20}\s*$/;
if (!filter.test(document.myform.userid.value)) { 
alert("用户名填写不正确,请重新填写！可使用的字符为（A-Z a-z 0-9 下划线 减号）长度不小于4个字符，不超过20个字符，注意不要使用空格。"); 
document.myform.username.focus();
//document.myform.username.select();
return false; 
}   
  
  if (myform.userpwd.value=="")
  {
    alert("请您填写密码！");
    document.myform.userpwd.focus();
    return false;
  }  
  
var filter=/^\s*[A-Za-z0-9_-]{4,20}\s*$/;
if (!filter.test(document.myform.userpwd.value)) { 
alert("密码填写不正确,请重新填写！可使用的字符为（A-Z a-z 0-9 下划线 减号）长度不小于4个字符，不超过20个字符，注意不要使用空格。"); 
document.myform.userpwd.focus();
document.myform.userpwd.select();
return false; 
}   
  
  if (myform.userpwdconfirm.value=="")
  {
    alert("请您填写确认密码！");
    document.myform.userpwdconfirm.focus();
    return false;
  }    

if (document.myform.userpwd.value!=document.myform.userpwdconfirm.value ){
alert("两次填写的密码不一致，请重新填写！"); 
document.myform.userpwd.focus();
document.myform.userpwd.select();
return false; 
}   
	
  if (myform.username.value=="")
  {
    alert("请您填写姓名！");
    document.myform.username.focus();
    return false;
  } 
  if (myform.xingb.value=="")
  {
    alert("请您选择性别！");
    document.myform.xingb.focus();
    return false;
  } 
  
  if (myform.department.value=="")
  {
    alert("请您选择所属部门！");
    document.myform.department.focus();
    return false;
  }
            
  if (myform.usertel.value=="")
  {
    alert("请您填写电话！");
    document.myform.usertel.focus();
    return false;
  } 


  if (myform.usermail.value=="")
  {
    alert("请您填写电子邮件！");
    document.myform.usermail.focus();
    return false;
  }   
  
var str1 = document.myform.usermail.value
if(str1.indexOf("@") == -1 || str1.indexOf(".") == -1){ 
alert("E-mail格式不正确,请重新填写！"); 
document.myform.usermail.focus();
document.myform.usermail.select();
return false; 
}   
  
  
  return true;  
}



//-->
</script>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="3%" height="19" valign="bottom"><div align="center"><img src="images/tb.gif" width="14" height="14" /></div></td>
                <td width="90%" valign="bottom"><span class="STYLE1"> 添加用户</span></td>
              </tr>
            </table></td>
            <td><div align="right">
              </div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>
    <form name="myform" method="post" action="/user/add" onsubmit="return FormCheck();" style="padding:0px;margin:0px 0px 0px 0px;">
	    <table class="STYLE19" width="100%" border="0" cellspacing="0" cellpadding="0" >
          <tr> 
            <td style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">用户ID：</td>
            <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;"><input type="text" maxlength="20" size="10" id="userid" name="userid"></td>
            <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">例:张三丰，用户ID建议为zhangsf(4-20位)</td>
          </tr>
          <tr> 
            <td style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">密码：</td>
            <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;"><input type="password" maxlength="20" size="10" id="userpwd" name="userpwd"></td>
            <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;" rowspan="2">可使用的字符为（A-Z 
              a-z 0-9 下划线 减号）长度不小于4个字符，不超过20个字符</td>
          </tr>
          <tr> 
            <td style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">确认密码：</td>
            <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;"><input type="password" maxlength="20" size="10" id="userpwdconfirm" name="userpwdconfirm"></td>
          </tr>
          <tr> 
            <td   style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">用户姓名：</td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;"><input name="username" type="text" id="username" size="10" maxlength="10" ></td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">汉字或常用称呼</td>
          </tr>
          <tr> 
            <td   style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">性别：</td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;"> 
              <SELECT   name=xingb size=1 id="select" style="background-color:#F0F0F0;">
                <OPTION value="" selected>-请选择性别-</OPTION>
                <OPTION value="男" >男</OPTION>
                <OPTION value="女" >女</OPTION>
              </SELECT></td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">&nbsp;</td>
          </tr>
          <tr>
            <td   style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">所属部门：</td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">
              <SELECT   name=department size=1 id="department" style="background-color:#F0F0F0;">
               
                <?         
				foreach($department as $v)	
				{  
					$departmentname=$v->departmentname;
					$departmentid=$v->id;
				?>
				<OPTION value="<?=$departmentid?>">-<?=$departmentname?>|<?=$departmentid?>-</OPTION>;
				<?
					
					
					}          
            ?>
              </SELECT>
              <input id="fuze" type="checkbox" value="1" name="fuze">
<label for="fuze">是/否部门负责人</label>
            </td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">&nbsp;</td>
          </tr>
          <tr> 
            <td   style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">电话：</td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;"><input name="usertel" type="text" id="usertel" size="30" maxlength="40" ></td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">任何电话号码，多个号码以半角逗号&quot;,&quot;分隔</td>
          </tr>
          <tr> 
            <td   style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">邮件：</td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;"><input name="usermail" type="text" id="usermail" size="30" maxlength="40" ></td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">常用电子邮件</td>
          </tr>
          <tr align="center"> 
            <td colspan="3"   style="text-align:center;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;"><input type="submit" name="Submit" class="submit" value="-确认-"> 
              &nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" name="Submit2" class="submit" value="-重填-"> 
            </td>
          </tr>
        </table>

        </form>
        </td>
  </tr>
</table>
</body>
</html>
