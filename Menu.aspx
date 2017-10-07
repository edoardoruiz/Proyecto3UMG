/<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Dw_Proyecto_3.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <%--<link href="css/blueimp-gallery.min.css" rel="stylesheet" />--%>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <%-- <link href="css/now-ui-kit.css" rel="stylesheet" />--%>
    <script src="js/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>


</head>
<body class="landing-page">
    <!-- Navbar Inicio  -->
    <!-- Fixed navbar -->
    <% Response.Write(pintarMen());   %>

    <!-- Navbar Fin -->




    <!-- -->

    <div class="wrapper">
        <div class="page-header page-header-small">
            <div class="page-header-image" data-parallax="true" style="background-image: url('images/Compras.jpg');">
                <img src="images/Compras.jpg" />
            </div>
            <div class="container">
                <div class="content-center">
                    <h1 class="title">Compras en Linea</h1>
                    <div class="text-center">
                        <a href="#pablo" class="btn btn-default btn-icon  btn-icon-mini">
                            <i class="fa fa-facebook-square"></i>
                        </a>
                        <a href="#pablo" class="btn btn-info btn-icon btn-icon-mini">
                            <i class="fa fa-twitter"></i>
                        </a>
                        <a href="#pablo" class="btn btn-danger btn-icon  btn-icon-mini">
                            <i class="fa fa-google-plus"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="right_col" role="main" id="c2">
            <!--FECHA-->
        </div>
        <footer class="footer footer-default">
            <div class="container">
                <nav>
                    <ul>
                        <li>
                            <a href="https://www.creative-tim.com">Creative Tim
                            </a>
                        </li>
                        <li>
                            <a href="http://presentation.creative-tim.com">About Us
                            </a>
                        </li>
                        <li>
                            <a href="http://blog.creative-tim.com">Blog
                            </a>
                        </li>
                        <li>
                            <a href="https://github.com/creativetimofficial/now-ui-kit/blob/master/LICENSE.md">MIT License
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>
                    , Designed by
                    <a href="http://www.invisionapp.com" target="_blank">Invision</a>. Coded by
                    <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>.
                </div>
            </div>
        </footer>
    </div>
    <input class="btn btn-success" type="submit" id="btn1" name="name" value="Hola" />

    <a class="btn btn-outline-primary" href="/docs/4.0/layout/overview/">Explore the docs</a>

    <input class="form-control mr-sm-2" placeholder="Search" type="text">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
            Search
        </button>
    </input>

    <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">
        Search
    </button>



    <div class="container">
        <div class="col-md-12">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">

                    <div class="item active">
                        <img src="images/Compras.jpg" alt="primero" style="height: 450px; width :100%" />
                        <div class="carousel-caption">
                            <h3>Radisson</h3>
                            <p>Central</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="images/Add_image.png" alt="tercero" style="height: 450px;  width:100%" "  />
                    </div>
                </div>

                <!-- Left and right controls -->
                <a href="#myCarousel" class="left carousel-control" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Anterior</span>
                </a>
                <a href="#myCarousel" class="right carousel-control" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Siguiente</span>
                </a>
                <a href="#myCarousel" class="right carousel-control" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Siguiente</span>
                </a>
            </div>
        </div>
    </div>







    <script>
        $("#btn1").click(function () {
            //$(this).slideUp();
            alert("Hola");
        });
    </script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>

    <script src="js/bootstrap.min.js"></script>
</body>
</html>
