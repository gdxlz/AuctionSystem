<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>
	
	<script type="text/javascript">
		<%
			String msg = request.getParameter("msg");
			if("registerSuccess".equals(msg)){
				out.print("alert('注册成功，系统将自动跳转登录页');");
			}
			if("loginError".equals(msg)){
				out.print("alert('用户名密码错误，请重新登录');");
			}
			if("validateCodeError".equals(msg)){
				out.print("alert('验证码错误，请重新输入');");
			}
		%>	
	</script>

  </head>
  
<body>
<div class="wrap">
<!-- main begin-->
 <div class="main">
   <div class="sidebar">
     <p><img src="images/img1.jpg" width="443" height="314" alt="" /></p>
   </div>
   <div class="sidebarg">
     <form action="${pageContext.request.contextPath}/user/doLogin" method="post">
    <div class="login">
      <dl>
        <dt class="blues">用户登陆</dt>
        <dd><label for="name">用户名：</label>
        	<input type="text" name="username" class="inputh" value="${username}" id="name"/></dd>
        <dd><label for="password">密 码：</label>
        	<input type="password" name="userpassword" class="inputh" value="${userpassword}" id="password"/></dd>
        <dd>
           <label class="lf" for="passwords">验证码：</label>
           <input type="text" name="inputCode" class="inputh inputs lf" value="" id="passwords"/>
          
           <span class="wordp lf">
           		 <!-- 把jsp界面当成一个图片？？？ -->
                 <img id="validateCode" src="Number.jsp" width="96" height="27" alt="" />
           </span>
           <span class="blues lf"><a id="changeCode" href="javascript:void(0);" title="">看不清</a></span>
        </dd>
        <dd>
           <input name=""  type="checkbox" id="rem_u"  />
           <span class="rem_u">下次自动登录</span>
           <span style="font-size: 18px; color: red; font-weight: bold">${errorMsg}</span>
        </dd>
        <dd class="buttom">
           <input name="" type="submit" value="登 录" class="spbg buttombg f14 lf" />
           <!-- 点击按钮，执行JavaScript代码，跳转到工作路径（与当前页面同一目录下）下的 register.jsp-->
           <input id="register" onclick="javascript:location='${pageContext.request.contextPath}/register.jsp'" type="button" value="注 册" class="spbg buttombg f14 lf" />
           <span class="blues  lf"><a href="" title="">忘记密码?</a></span>
           <div class="cl"></div>
        </dd>
       
      </dl>
    </div>
    </form>
   </div>
  <div class="cl"></div>
 </div>
<!-- main end-->
 
<!-- footer begin-->
</div>
 <!--footer end-->
</body>
</html>
