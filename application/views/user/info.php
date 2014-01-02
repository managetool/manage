<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <base href="<?= base_url() ?>"/>
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

        .STYLE6 {
            color: #000000;
            font-size: 12;
        }

        .STYLE10 {
            color: #000000;
            font-size: 12px;
        }

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
        function FormCheck() {
            if (myform.xingb.value == "") {
                alert("请您选择性别！");
                document.myform.xingb.focus();
                return false;
            }

            if (myform.department.value == "") {
                alert("请您选择所属部门！");
                document.myform.department.focus();
                return false;
            }

            if (myform.tel.value == "") {
                alert("请您填写电话！");
                document.myform.tel.focus();
                return false;
            }


            if (myform.email.value == "") {
                alert("请您填写电子邮件！");
                document.myform.email.focus();
                return false;
            }

            var str1 = document.myform.email.value
            if (str1.indexOf("@") == -1 || str1.indexOf(".") == -1) {
                alert("E-mail格式不正确,请重新填写！");
                document.myform.email.focus();
                document.myform.email.select();
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
        <td height="30">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="24" bgcolor="#353c44">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="3%" height="19" valign="bottom">
                                                <div align="center"><img src="images/tb.gif" width="14" height="14"/>
                                                </div>
                                            </td>
                                            <td width="90%" valign="bottom"><span class="STYLE1"> 用户信息</span></td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <div align="right">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <form name="myform" method="post" action="/user/info" onsubmit="return FormCheck();"
                  style="padding:0px;margin:0px 0px 0px 0px;">
                <table class="STYLE19" width="100%" border="0" cellspacing="0" cellpadding="0">

                    <tr>
                        <td style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">
                            用户名：
                        </td>
                        <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">
                            <input name="username" type="text" id="username" size="10" maxlength="10"
                                   value='<?= $user->username ?>'></td>
                        <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">
                            数字或字母
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">
                            昵称：
                        </td>
                        <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">
                            <input name="nickname" type="text" id="nickname" size="10" maxlength="10"
                                   value='<?= $user->nickname ?>'></td>
                        <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">
                            汉字或常用称呼
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">
                            所属用户组：
                        </td>
                        <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">
                            <SELECT name=groupId size=1 id="groupId" style="background-color:#F0F0F0;" >

                                <?
                                foreach ($userGroup as $v) {
                                    $groupName = $v->name;
                                    $groupId = $v->id;
                                    ?>
                                    <OPTION value="<?= $groupId ?>"
                                            <?php if ($user->groupid == $groupId){ ?>selected="selected"<?php } ?>>
                                        -<?= $groupName ?>-
                                    </OPTION>;
                                <?


                                }
                                ?>
                            </SELECT>
                        </td>
                        <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">
                            电话：
                        </td>
                        <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">
                            <input name="tel" type="text" id="tel" size="30" maxlength="40"
                                   value="<?= $user->tel ?>"></td>
                        <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">
                            任何电话号码，多个号码以半角逗号&quot;,&quot;分隔
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">
                            邮件：
                        </td>
                        <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:45%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">
                            <input name="email" type="text" id="email" size="30" maxlength="40"
                                   value="<?= $user->email ?>"></td>
                        <td style="text-align:left;height:25px;line-height:25px;padding:2px;width:40%;border-bottom:1px solid #e8e8e8;">
                            常用电子邮件
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="3"
                            style="text-align:center;height:25px;line-height:25px;padding:2px;width:15%;border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8;">
                            <input type="submit" name="Submit" class="submit" value="-确认-">
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
