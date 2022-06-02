<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <link rel="stylesheet" href="bootstrap-3.4.1-dist/css/bootstrap.min.css">
    <style>
        body { padding-top: 50px; }
        .row{
            padding-left: 30px;
            padding-right: 30px;
        }
        .introduce{
            padding-top: 50px;
        }
        .three-column{
            /*padding-top: 30px;*/
        }
        .jumbotron{
            background: url("/img/backgroud.jpg");
        }
    </style>
    <title>HOTEL MIS</title>
</head>
<body>
<%--导航条--%>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">HOTEL MIS</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.jsp">即刻预定</a></li>
<%--                <li class="dropdown">--%>
<%--                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>--%>
<%--                    <ul class="dropdown-menu">--%>
<%--                        <li><a href="#">Action</a></li>--%>
<%--                        <li><a href="#">Another action</a></li>--%>
<%--                        <li><a href="#">Something else here</a></li>--%>
<%--                        <li role="separator" class="divider"></li>--%>
<%--                        <li><a href="#">Separated link</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<%--轮播图--%>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="./img/forest.jpg"alt="">
<%--            <div class="carousel-caption">--%>
<%--                ...--%>
<%--            </div>--%>
        </div>
        <div class="item">
            <img src="img/gulf.jpg"alt="">
        </div>
        <div class="item">
            <img src="img/castle.jpg"alt="">
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<%--简介--%>
<div class="container introduce">
    <div class="jumbotron text-center">
        <h2>邂逅不期而遇的美好</h2>
        <p>选你所想 - 旗下四个不同品牌于100个国家及地区、100个目的地的100多家酒店与度假酒店。</p>
    </div>
</div>

<%--三列布局--%>
<div class="container three-column">
    <h3 class="text-center">住 宿</h3>
    <div class="row">
        <div class="col-sm-6 col-md-4 text-center">
            <div class="thumbnail">
                <img src="./img/mountainRoom.jpg"alt="">
                <div class="caption">
                    <h4>豪华山景客房</h4>
                    <p>宽阔的客房融入现代各式各样的元素，以自然主题的玉树特色。搭配自然，尽显美景</p>
                <%--                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>--%>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4 text-center">
            <div class="thumbnail">
                <img src="./img/seaRoom.jpg"alt="">
                <div class="caption">
                    <h4>全新海景客房</h4>
                    <p>入住全新海景客房，感受大海的气息，包揽壮阔的海湾美景</p>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4 text-center">
            <div class="thumbnail">
                <img src="img/luxury.jpg"alt="">
                <div class="caption">
                    <h4>奢华套房</h4>
                    <p>专为喜欢宽敞空间工作和休闲的客人或是家庭而设。客卧分开，可饱览美景</p>
                </div>
            </div>
        </div>

    </div>
</div>

<%--线--%>
<div class="container"> <hr></div>



<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://fastly.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
</body>
</html>