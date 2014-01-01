<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<base href="<?= base_url()?>" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/chili-1.7.pack.js"></script>
<script type="text/javascript" src="js/jquery.easing.js"></script>
<script type="text/javascript" src="js/jquery.dimensions.js"></script>
<script type="text/javascript" src="js/jquery.accordion.js"></script>
<script language="javascript">
	jQuery().ready(function(){
		jQuery('#navigation').accordion({
			header: '.head',
			navigation1: true, 
			event: 'click',
			fillSpace: true,
			animated: 'bounceslide'
		});
	});
</script>
<style type="text/css">
<!--
body {
	margin:0px;
	padding:0px;
	font-size: 12px;
}
#navigation {
	margin:0px;
	padding:0px;
	width:147px;
}
#navigation a.head {
	cursor:pointer;
	background:url(images/main_34.gif) no-repeat scroll;
	display:block;
	font-weight:bold;
	margin:0px;
	padding:5px 0 5px;
	text-align:center;
	font-size:12px;
	text-decoration:none;
}
#navigation ul {
	border-width:0px;
	margin:0px;
	padding:0px;
	text-indent:0px;
}
#navigation li {
	list-style:none; display:inline;
}
#navigation li li a {
	display:block;
	font-size:12px;
	text-decoration: none;
	text-align:center;
	padding:3px;
}
#navigation li li a:hover {
	background:url(images/tab_bg.gif) repeat-x;
		border:solid 1px #adb9c2;
}
#navigation .leftmenuli {
    background: url("/images/left_icon.gif") no-repeat scroll 5px 6px #DBECFA;
    border-top: 1px solid #CBCBCB;
    height: 22px;
    line-height: 22px;
    padding-left: 20px;
    display: block;
    width: 127px !important;
}
-->
</style>
</head>
<body>
<div  style="height:100%;">
  <ul id="navigation">
    <li> <a class="head">服务供应商管理</a>
      <ul>
      <li class="leftmenuli">服务商管理</li>
        <li><a href="/development/add" target="rightFrame">新建服务商</a></li>
        <li><a href="/development" target="rightFrame">管理服务商</a></li>
        <li class="leftmenuli">拓展管理</li>
         <li><a href="/expand/add" target="rightFrame">新建拓展</a></li>
        <li><a href="/expand" target="rightFrame">管理拓展</a></li>
      </ul>
      
    </li>
    <li> <a class="head">订单管理</a>
      <ul>
      <li class="leftmenuli">代理商管理</li>
        <li><a href="/agent/add" target="rightFrame">新建代理商</a></li>
        <li><a href="/agent" target="rightFrame">管理代理商</a></li>
        <li class="leftmenuli">客户管理</li>
        <li><a href="/customer/add" target="rightFrame">新建客户</a></li>
        <li><a href="/customer" target="rightFrame">管理客户</a></li>
        <li class="leftmenuli">订单管理</li>
        <li><a href="/order/add" target="rightFrame">新建订单</a></li>
        <li><a href="/order" target="rightFrame">管理订单</a></li>
        <li class="leftmenuli">流水单管理</li>
        <li><a href="/orderflow/add" target="rightFrame">新建流水单</a></li>
        <li><a href="/orderflow" target="rightFrame">管理流水单</a></li>
      </ul>
    </li>
    <li> <a class="head">市场活动</a>
      <ul>
       
        <li><a href="/activity/add" target="rightFrame">新建活动</a></li>
        <li><a href="/activity" target="rightFrame">管理活动</a></li>
      </ul>
    </li>
    <li> <a class="head">数据报表</a>
      <ul>
        <li class="leftmenuli">服务供应商报表</li>
        <?php if($_userdlname=='admin'||$_fuze==1){?><li><a href="/report_wish/index/development" target="rightFrame">期望数值设定</a></li><?php }?>
        <li><a href="/development_report" target="rightFrame">报表查看</a></li>
        <li class="leftmenuli">订单报表</li>
         <?php if($_userdlname=='admin'||$_fuze==1){?><li><a href="/report_wish/index/order" target="rightFrame">期望数值设定</a></li><?php }?>
        <li><a href="/order_report" target="rightFrame">报表查看</a></li>
      </ul>
    </li>
    <?php if($_userdlname=='admin'){?>
    <li> <a class="head">基础设置</a>
      <ul>
      <li class="leftmenuli">部门管理</li>
        <li><a href="/department/add" target="rightFrame">增加部门</a></li>
        <li><a href="/department" target="rightFrame">管理部门</a></li>
        <li class="leftmenuli">用户管理</li>
        <li><a href="/user/add" target="rightFrame">增加用户</a></li>
        <li><a href="/user/user_list" target="rightFrame">用户管理</a></li>
        <li class="leftmenuli">个人设置</li>
        <li><a href="/user/info" target="rightFrame">修改信息</a></li>
        <li><a href="/user/pswd" target="rightFrame">修改密码</a></li>
      </ul>
    </li>
    <?php }else{?>
      <li> <a class="head">个人设置</a>
      <ul>
        <li><a href="/user/info" target="rightFrame">修改信息</a></li>
        <li><a href="/user/password" target="rightFrame">修改密码</a></li>
      </ul>
    </li>
    <?php }?>
  </ul>
</div>
</body>
</html>
