<%@ page language="java" import="java.util.*" 
pageEncoding="utf-8"%>
 <!DOCTYPE HTML>
<html>
  <head> 
    <title>登录页</title> 
    <script type="text/javascript">
       function $(id){return document.getElementById(id);}
       function check()
       {
          var un=$('un');
          var pwd=$('pwd');
          if(un.value=="")
          {
            alert("用户名不能为空，谢谢！");
            un.focus();//光标停在当前的文本框中
            return false;
          }
          if(pwd.value=="")
          {
            alert("密码不能为空，谢谢！");
            pwd.focus();//光标停在当前的文本框中
            return false;
          }
          return true;
       }
    </script>     
  </head> 
  <body>  
    <%--    action的值一定跳到web.xml找到url为login --%>     
    <form action="login.action" method="post" onsubmit="return check()">
       <table align="center" border="1">
         <tr>
           <th>用户名</th><td><input name="uname" id="un" /></td>
         </tr>
          <tr>
           <th>密码</th><td>
           <input name="upwd" id="pwd" type="password"/>
           <a href="register.jsp">注册</a>
           </td>
         </tr>
         <tr>
           <th>角色</th><td>
           <input type="radio" name="urole" value="0" checked="checked"/>管理员
           <input type="radio" name="urole" value="1"/>用户
           </td>
         </tr>
         <tr>
           <td>&nbsp;</td><td><input type="submit" value="登录"/></td>
         </tr>
       </table>  
    </form>
  </body>
</html>
