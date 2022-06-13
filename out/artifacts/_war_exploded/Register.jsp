<%@page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String basePath2=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
%>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
    <meta charset="utf-8">
    <title>Fullscreen Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/supersized.css">
    <link rel="stylesheet" href="assets/css/style-regist.css">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<body>

<div class="page-container">
    <h1>Regist</h1>
    <form action="" method="post">
        <input type="text" name="username"  placeholder="Userid">
        <input type="text" name="username" class="username" placeholder="Username">
        <input type="password" name="password" class="password" placeholder="Password">
        <input type="text" name="citizenid" class="username" placeholder="Citizenid">
        <input type="date" name="birthday" class="username" placeholder="birthday">
        <input type="text" name="Sex" class="username" placeholder="Sex">
        <input type="text" name="telephone" class="password" placeholder="Telephone">
        <input type="email" name="email" class="password" placeholder="Email">
        <button type="submit">Regist Now</button>
    </form>
</div>
</body>
<script src="assets/js/jquery-1.8.2.min.js"></script>
<script src="assets/js/supersized.3.2.7.min.js"></script>
<script src="assets/js/suersized-init-register.js"></script>
<script src="assets/js/scripts.js"></script>
<script>
    layui.use(['form','layer'], function(){
        $ = layui.jquery;
        var form = layui.form
            ,layer = layui.layer;



        //监听提交
        form.on('submit(add)', function(data){
            /*
               1、获取输入框的值信息
               2、通过ajax请求向后端发送请求
               3、根据响应反馈信息提示，并刷新主页
             */
            var data=data.field;

            debugger
            //
            if(data.sex=='ON'){
                data.sex="女";
            }else{
                data.sex="男";
            }
            debugger
            $.ajax({
                url:"<%=basePath%>userServlet?flag=insert",
                type:"post",
                data:data,
                success:function(result){
                    if(result.code==0){
                        layer.alert("增加成功", {icon: 6},function () {
                            //关闭当前frame
                            x_admin_close();
                            // 可以对父窗口进行刷新
                            x_admin_father_reload();
                        });
                    }else{
                        layer.msg("不 好意思，添加失败了...")
                    }
                }
            })
            return false;
        });


    });
</script>
</html>


