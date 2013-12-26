<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="<?= $charset?>">
	<title>消息提示</title>

	<style type="text/css">

	::selection{ background-color: #E13300; color: white; }
	::moz-selection{ background-color: #E13300; color: white; }
	::webkit-selection{ background-color: #E13300; color: white; }

	body {
		background-color: #fff;
		margin: 40px;
		font: 13px/20px normal Helvetica, Arial, sans-serif;
		color: #4F5155;
	}

	a {
		color: #003399;
		background-color: transparent;
		font-weight: normal;
	}

	h1 {
		color: #444;
		background-color: transparent;
		border-bottom: 1px solid #D0D0D0;
		font-size: 19px;
		font-weight: normal;
		margin: 0 0 14px 0;
		padding: 14px 15px 10px 15px;
	}

	code {
		font-family: Consolas, Monaco, Courier New, Courier, monospace;
		font-size: 12px;
		background-color: #f9f9f9;
		border: 1px solid #D0D0D0;
		color: #002166;
		display: block;
		margin: 14px 0 14px 0;
		padding: 12px 10px 12px 10px;
	}

	#body{
		margin: 0 15px 0 15px;
	}
	
	p.footer{
		text-align: right;
		font-size: 11px;
		border-top: 1px solid #D0D0D0;
		line-height: 32px;
		padding: 0 10px 0 10px;
		margin: 20px 0 0 0;
	}
	
	#container{
		margin: 10px;
		border: 1px solid #D0D0D0;
		-webkit-box-shadow: 0 0 8px #D0D0D0;
	}
	</style>
</head>
<body>

<div id="container">
	<h1>消息提示！</h1>

	<div id="body">
		
		<div class="tip_messages"><?= $message?><span id="time"><?=$time?></span> 秒后自动跳转</div>
                <div class="tip_help">点此跳转<a href="<?=$url?>" class="button"><span class="icon rightarrow">&nbsp;</span>跳转</a></div>
	</div>

	<p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds</p>
</div>
	<script type='text/javascript'>
		window.onload=function(){
			setInterval(show_time, 1000);
		}
		function show_time(){
			var u =encodeURI("<?=$url?>");
			var time = document.getElementById("time").innerHTML;
			time = parseInt(time);
			 if(time==0)return false;
			if (time >0)
			{
				time -= 1; 
			}
			document.getElementById("time").innerHTML = time;
			if(time==0&&u){
				document.location.href = u;
			}
		}
	
	
	</script>
</body>
</html>