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
    
	 if (myform.olduserpwd.value=="")
	  {
	    alert("请您填写旧密码！");
	    document.myform.olduserpwd.focus();
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
                <td width="90%" valign="bottom"><span class="STYLE1"> 修改密码</span></td>
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
    <form name="myform" method="post" action="/user/pswd" onsubmit="return FormCheck();" style="padding:0px;margin:0px 0px 0px 0px;">
	    <table class="STYLE19" width="100%" border="0" cellspacing="0" cellpadding="0" >
	     <tr> 
            <td   style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">旧密码：</td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;"><input name="olduserpwd" type="password" id="olduserpwd" size="10" maxlength="20"></td>
            <td  style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;"></td>
          </tr>
           <tr> 
            <td   style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">新密码：</td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;"><input name="userpwd" type="password" id="userpwd" size="10" maxlength="20"></td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">可使用的字符为（A-Z 
              a-z 0-9 下划线 减号）长度不小于4个字符，不超过20个字符</td>
          </tr>
          <tr> 
            <td   style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">确认密码：</td>
            <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;"><input name="userpwdconfirm" type="password" id="userpwdconfirm" size="10" maxlength="20"></td>
          <td   style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">              </td>
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
