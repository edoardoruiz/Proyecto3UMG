<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comprobante.aspx.cs" Inherits="Dw_Proyecto_3.Comprobante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <%--<link href="css/blueimp-gallery.min.css" rel="stylesheet" />--%>
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <script src="js/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title></title>


</head>
<body>

    <% Response.Write(pintarMen());   %>
    <br />
    <br />
    <input class="btn btn-success" type="submit" id="btn1" name="name" value="Hola" />

    <h2>Section title</h2>

    <div class="container">
        <div class="jumbotron">
            <div class="table-responsive">
                <table class="table table-striped">
                    <tr>
                        <th>
                            <h3>Comprobante</h3>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <a class='btn btn-sm btn-primary' href="Componentes/Recibo_1.pdf">Componentes/Recibo</a>
                        </th>

                    </tr>


                </table>
            </div>


        </div>
    </div>

    <script>
        $("#btn1").click(function () {
            //$(this).slideUp();
            alert("Hola");
        });
    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>

</body>
</html>
