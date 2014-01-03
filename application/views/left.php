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
      <?php
      foreach($permission as $k=>$p){
          ?>
          <li><a class="head"><?= $modules[$k]['name']?></a>
              <ul>
                <?php foreach($p as $sub){?>
                    <li><a href="/<?=$modules[$k]['controller']?>/<?=$modules[$sub['id']]['controller']?>" target="rightFrame"><?= $sub['name']?></a></li>
                  <?php }?>
              </ul>

          </li>
      <?php
      }
      ?>
  </ul>
</div>
</body>
</html>
