<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agregar_Imagen.aspx.cs" Inherits="Dw_Proyecto_3.Agregar_Imagen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="icon" type="image/png" href="/images/mifavicon.png" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <script src="js/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Producto</title>
    <script src="css/bootstrap-filestyle.js"></script>
    <style>
        .carousel-inner > .item > img {
            object-fit: scale-down;
            height: 50vh;
            width: 100%;
        }
    </style>

</head>
<body>

    <form id="form1" runat="server">
        <h2>Agregar Imagenes</h2>
        <div>
            <div class="form-group">
                <!-- Full Name -->
                <%--<label for="full_name_id" class="control-label">Id de Producto</label>--%>
                <h4>Id de Producto  
                    <h4>
                        <input type="text" class="form-control" runat="server" id="txtId" placeholder="Id de Producto" readonly>
            </div>
            <input class="btn btn-primary" id="filMyFile" type="file" runat="server" multiple />
            <br />
            <asp:Button class="btn btn-success" ID="btnGuardarImagen" runat="server" Text="Guardar" OnClick="btnGuardarImagen_Click" />


        </div>




        <!-- Carousel
    ================================================== -->
        <div class="container">
            <h2>Imagenes</h2>

            <div id="myCarousel" class="carousel slide" data-ride="carousel">
            </div>
            <%--<!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>                    
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="images/Compras.jpg" alt="Los Angeles">
                    </div>

                    <div class="item">
                        <img src="images/Compras.jpg" alt="Chicago">
                    </div>

                    <div class="item">
                        <img src="images/Compras.jpg" alt="New york">
                    </div>
                    <div class="item">
                        <img src="images/Compras.jpg" alt="New york">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>--%>
        </div>


        <!-- /.carousel -->
        <input class="btn btn-success" type="submit" onclick="return false;" id="btn1" name="name" value="Hola" />
        <script src="css/bootstrap-filestyle.js"></script>
        <script>
            document.getElementById('filMyFile').value = "";
            var VL_producto = $("#txtId").val();
            CargarImages("myCarousel", VL_producto);
            
            function CargarImages(Carrousel, Id) {

                var actionData = "{Id : " + Id + " }";


                //metodo Ajax que ejecute metodo CargaCatalogos 
                $.ajax(
                   {
                       url: "Agregar_imagen.aspx/ConsultaImages",
                       data: actionData,
                       dataType: "json",
                       type: "POST",
                       contentType: "application/json; charset=utf-8",
                       success: function (msg) {
                           // $("#txtCategoria").html(msg).fadeIn();
                           // $('#txtCategoria').html("<option value='WA'>Washington</option>  <option value='WV'>West Virginia</option>");
                           //alert(msg.d);
                           $("#" + Carrousel).html(msg.d);
                       },
                       error: function (result) {
                           alert("ERROR " + result.status + ' ' + result.statusText + result.toString);
                       }
                   });
            }


            $("#btn1").click(function () {
                //$(this).slideUp();
                alert("Hola");
            });
            $('#filMyFile').filestyle({
                text: ' Elegir Imagenes',
                btnClass: 'btn-primary'
            });
            $(":file").filestyle({ htmlIcon: '<span class="oi oi-random"></span>' });
        </script>

        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.min.js"></script>
        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
    </form>
</body>
</html>


