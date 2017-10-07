<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductoDetalle.aspx.cs" Inherits="Dw_Proyecto_3.ProductoDetalle" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <%--<link href="css/blueimp-gallery.min.css" rel="stylesheet" />--%>
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <script src="js/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title></title>
    <style>
        .carousel-inner > .item > img {
            object-fit: scale-down;
            height: 50vh;
            width: 100%;
        }

        .auto-style1 {
            width: 268px;
        }
    </style>

</head>
<body>
    <% Response.Write(pintarMen());   %>
    <form runat="server">



        <br />
        <br />
        <div class="container">
            <div class="jumbotron">
                <div class="table-responsive">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <tr>
                                <th colspan="2">
                                    <h4><strong>Producto :</strong>  </h4>
                                    <input class="form-control" type="text" readonly id="txtproducto" value="" runat="server" aria-readonly="true" />
                                </th>
                            </tr>
                            <tr>
                                <th colspan="2">

                                    <asp:Label ID="lblnombreproducto" runat="server"></asp:Label>
                                </th>
                            </tr>
                            <tr>
                                <td class="auto-style1">

                                    <img id='txtImagen' runat="server" style='width: 156px; height: 123px;' class="card-img-top img-fluid" src="http://placehold.it/100x100" alt="" /></td>
                                <td>Cantidad disponible:
                                <asp:Label ID="lblcantidad" runat="server"></asp:Label><br />
                                    Precio:
                                <asp:Label ID="lblprecio" runat="server"></asp:Label>
                                    <br />
                                    <p>Cantidad a Comprar</p>
                                    <input class="form-control" required="" runat="server" type="text" id="txtCantidad" value="" />

                                    <asp:Button class="btn btn-primary btn-md" ID="compraloahora" runat="server" Text="Agregar a Carrito" OnClick="compraloahora_Click" />
                                </td>

                            </tr>
                        </table>
                        <table class="table table-striped">
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="lbl1" runat="server" Text="Detalle de producto"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="lbldescripcion" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <%CargarCarrousell(); %>
                    </div>

                </div>


            </div>
        </div>
        <input class="btn btn-success" type="submit" id="btn1" name="name" value="Hola" />
        <script>
            $("#btn1").click(function () {
                //$(this).slideUp();
                alert("Hola");
            });
        </script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.min.js"></script>
    </form>
</body>
</html>
