<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Dw_Proyecto_3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="site-wrapper">
        <div class="site-wrapper-inner">
            <div class="cover-container">
                <div class="masthead clearfix">
                    <div class="inner">
                        <h3 class="masthead-brand">Compralo Ya
                        </h3>
                        <nav>
                            <ul class="nav masthead-nav">
                                <li class="active">
                                    <a href="Login.aspx">Proyecto
                                    </a>
                                </li>
                                <li>
                                    <a href="AcercaDe.aspx">Acerca de
                                    </a>
                                </li>
                                <li>
                                    <a href="Contacto.aspx">Contacto
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="inner cover">
                    <br>
                        <!--<h1 class="cover-heading">Cover your page.</h1>- -->
                        <h2 class="form-signin-heading">Inicio de Sesión
                        </h2>
                        <label class="sr-only" for="inputEmail">
                            Email address
                        </label>
                        <p1>
                                Usuario
                            </p1>
                        <!--<input autofocus="" class="form-control" id="Usuario" placeholder="Usuario" required="" type="text"> -->
                        <asp:TextBox ID="txtUsuario" runat="server" autofocus="" class="form-control" placeholder="Usuario" required="" type="text"></asp:TextBox>
                        <label class="sr-only" for="inputPassword">
                            Password
                        </label>
                        <p1>
                                    Contraseña
                                </p1>
                        <asp:TextBox ID="txtPass" runat="server" autofocus="" class="form-control" placeholder="Contraseña" required="" type="password"></asp:TextBox>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="remember-me">
                                                Mantenerme Conectado
                                </input>
                            </label>
                        </div>
                        <asp:Button ID="Button1" class="btn btn-lg btn-primary" runat="server" Text="Iniciar Sesión" OnClick="Button1_Click" />
                        <!--<button class="btn btn-lg btn-primary" type="submit">
                                    Inicio Sesión
                                </button> -->
                        <p class="lead">
                        </p>

                        </input>
                    </br>
                </div>
                <div class="mastfoot">
                    <div class="inner">
                        <p>
                            UMG 2017 Arquitectura de Computadorsas
                            <!--    <a href="http://getbootstrap.com">Arduino
                                </a>
                            <!--, by <a href="https://twitter.com/mdo">@mdo</a>.</p> -->
                        </p>
                    </div>
                </div>
            </div>
        </div>

        
        </div>
    </form>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
</body>
</html>
