<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=basePath %>static/css/jqueryui.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath %>static/css/style.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath %>static/css/vstyle.css" type="text/css" rel="stylesheet" />
<script src="<%=basePath %>static/js/commonUtil.js" type="text/javascript"></script>
<title>1000万-登录</title>
</head>

<body class="bg1">
<div class="login fn_clear">
	<div class="title">
    	<div class="wrap fn_clear">
        	<div class="logo"><a href="<%=basePath %>"><img src="<%=basePath %>static/images/logo2.png" /></a><cite class="txt">用户登录</cite></div>
            <div class="list"><cite>品质专业的彩票网</cite><cite>千万彩民的共同选择</cite><cite>成就千万梦想</cite></div>
        </div>
    </div>
    <div class="box">
    	<div class="wrap fn_clear">
        	<div class="formbox fn_clear">
            	<div class="ftitle fn_clear"><em>会员登录</em><a href="<%=basePath %>user/register">免费注册</a></div>
                <form id="loginForm" action="<%=basePath %>user/dologin" method="post">
                <div class="formc">
                	<dl class="fn_clear">
                    	<dt>用户名：</dt>
                        <dd><input type="text" name="userName" errormsg="用户名为5到20个字符！" /></dd>
                    </dl>
                    <dl class="fn_clear">
                    	<dt>密码：</dt>
                        <dd><input type="password" name="pwd" datatype="*" /></dd>
                    </dl>
                    <dl class="fn_clear">
                    	<dt>验证码：</dt>
                        <dd><input type="text" name="randomCode" datatype="s4-4" errormsg="验证码为4位字符！" class="yz" /><img id="imageCode" src="<%=basePath %>imageServlet" class="yz" /><a href="javascript:refresh();" class="yz"></a></dd>
                    </dl>
                    <dl class="fn_clear">
                    	<dt>&nbsp;</dt>
                        <dd><input class="btn" type="submit" onclick="checkForm()" value="登 录" /><a href="#">忘记密码？</a></dd>
                    </dl>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../footer.jsp"></jsp:include>
<script type="text/javascript" src="<%=basePath %>static/js/Validform_v5.3.2_min.js"></script>
	<script type="text/javascript">
	    function refresh() {
	        $("#imageCode").attr("src","<%=basePath %>imageServlet?"+Math.random());
	    }
	    
	    function checkForm(){
	      $("#loginForm").Validform();
	    }
	    
	    $(document).ready(function(){
	       var resultMsg='${resultMsg}';
	       if(resultMsg != null && resultMsg != ""){
	         	custom_alert(resultMsg,"提示");
	       }
	    });
    </script>
</body>
</html>

