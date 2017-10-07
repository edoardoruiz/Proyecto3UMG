<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="Dw_Proyecto_3.Producto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="icon" type="image/png" href="/images/mifavicon.png" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <script src="js/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Producto</title>


</head>
<body>
    <% Response.Write(pintarMen());   %>
    <br />
    <form id="form1" runat="server">
        <div class="jumbotron">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="panel-title">Producto</h2>
                </div>
                <div class="panel-body">

                    <div class="form-group">
                        <!-- Full Name -->
                        <label for="full_name_id" class="control-label">Id</label>
                        <input type="text" class="form-control" runat="server" id="txtId" placeholder="Id de Producto" readonly>
                        <p id="txtAlerta1"></p>
                    </div>

                    <div class="form-group">
                        <!-- State Button -->
                        <label for="state_id" class="control-label">Categoria</label>
                        <select class="form-control" id="txtCategoria" required="" runat="server">
                            <%--<option value="AL">Alabama</option>
                            <option value="AZ">Arizona</option>--%>
                        </select>
                    </div>

                    <div class="form-group">
                        <!-- State Button -->
                        <label for="state_id" class="control-label">Sub Categoria</label>
                        <select class="form-control" id="txtSubCategoria" required="" runat="server">
                            <%--<option value="AL">Alabama</option>
                            
                            <option value="WY">Wyoming</option>--%>
                        </select>
                    </div>

                    <div class="form-group">
                        <!-- Street 1 -->
                        <label for="street1_id" class="control-label">Nombre</label>
                        <input type="text" class="form-control" id="txtNombre" required="" placeholder="Nombre del Articulo" runat="server">
                    </div>
                    <div class="form-group">
                        <!-- Street 2 -->
                        <label for="street2_id" class="control-label">Descripción</label>
                        <input type="text" class="form-control" id="txtDescripcion" required="" placeholder="Descripción del Articulo" runat="server">
                    </div>

                    <div class="form-group">
                        <!-- City-->
                        <label for="city_id" class="control-label">Cantidad</label>
                        <input type="number" class="form-control" id="txtCantidad" required="" placeholder="Cantidad" runat="server">
                    </div>

                    <div class="form-group">
                        <!-- Zip Code-->
                        <label for="zip_id" class="control-label">Precio</label>
                        <input type="number" class="form-control" id="txtPrecio" required="" placeholder="Precio Unitario" runat="server">
                    </div>
                    <div class="form-group">
                        <!-- State Button -->
                        <label for="state_id" class="control-label">Moneda</label>
                        <select class="form-control" id="txtMoneda" required="" runat="server">
                            <option value="1">Quetzal</option>
                            <option value="2">Dollar</option>
                            <option value="3">Euro</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <!-- State Button -->
                        <label for="state_id" class="control-label">Pais</label>
                        <select class="form-control" id="txtPais" required="" runat="server">
                            <option value="AL">Alabama</option>
                            <option value="AK">Alaska</option>
                            <option value="WI">Wisconsin</option>
                            <option value="WY">Wyoming</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <!-- Submit Button -->
                        <input class="btn btn-primary" type="submit" onclick="return false;" id="btnGuardar" name="name" value="Guardar" />
                        <%--<asp:Button ID="btnGuardar" runat="server" class="btn btn-primary" OnClick="btnGuardar_Click" Text="Guardar" />--%>
                        <%-- <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />--%>
                    </div>
                </div>
            </div>
            
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="panel-title">Imagenes</h2>
                </div>
             
                <div class="form-group">

                    <h3>Agregar Imagenes</h3>
                    
                    <img src="images/Add_image.png" onclick="MuestraFormImagen();" class="img-thumbnail" alt="Cinque Terre" width="150" height="120" />
                </div>

            </div>
            <%--<input class="btn btn-success" type="submit" onclick="return false;" id="btn1" name="name" value="Hola" />--%>
            <!-- METODOS DE JQUERY INICIO -->
            <script>
                $(document).ready(function () {
                    //CARGAR SELECT CON CATEGORIAS
                    CargaCategorias("txtCategoria", 1);
                    //CARGAR SELECT CON PAISES
                    CargaCategorias("txtPais", 3);
                    // verificamos que el no venga producto en la ruta por metodo get
                    VarificaProducto();
                    //funcion click en btn1
                    $("#btn1").click(function () {
                        alert("Hola");
                    });
                    //funcion click en btnGuardar
                    $("#btnGuardar").click(function () {
                        var VL_producto = $("#txtId").val();
                        var VL_categoria = $("#txtCategoria").val();
                        var VL_subCategoria = $("#txtSubCategoria").val();
                        var VL_nombre = $("#txtNombre").val();
                        var VL_descripcion = $("#txtDescripcion").val();
                        var VL_cantidad = $("#txtCantidad").val();
                        var VL_precio = $("#txtPrecio").val();
                        var VL_moneda = $("#txtMoneda").val();
                        var VL_pais = $("#txtPais").val();
                        var VL_usuario = "prueba";
                        if (VL_producto != "") {
                            var actionData = "{producto : " + VL_producto + " , categoria : " + VL_categoria + " , subCategoria : " + VL_subCategoria
                                + " , nombre : '" + VL_nombre + "' , descripcion : '" + VL_descripcion + "' , cantidad : " + VL_cantidad +
                             " , precio : " + VL_precio + " , moneda : " + VL_moneda + " , pais : " + VL_pais + " , usuario : '" + VL_usuario + "' }";
                        }
                        else {
                            var actionData = "{producto : 0 , categoria : " + VL_categoria + " , subCategoria : " + VL_subCategoria
                               + " , nombre : '" + VL_nombre + "' , descripcion : '" + VL_descripcion + "' , cantidad : " + VL_cantidad +
                           " , precio : " + VL_precio + " , moneda : " + VL_moneda + " , pais : " + VL_pais + " , usuario : '" + VL_usuario + "' }";
                        }

                        //alert(actionData);
                        //metodo Ajax que ejecute metodo CargaCatalogos 
                        $.ajax(
                           {
                               url: "Producto.aspx/GuardarProducto",
                               data: actionData,
                               dataType: "json",
                               type: "POST",
                               contentType: "application/json; charset=utf-8",
                               success: function (msg) {
                                   // $("#txtCategoria").html(msg).fadeIn();
                                   // $('#txtCategoria').html("<option value='WA'>Washington</option>  <option value='WV'>West Virginia</option>");
                                   $("#txtId").val(msg.d);
                                   $("html, body").animate({ scrollTop: 0 }, 600);
                               },
                               error: function (result) {
                                   alert("ERROR " + result.status + ' ' + result.statusText + result.toString);

                               }
                           });
                    });

                });
                //evento cambio de valor seleccionado en txtcategoria <Campo tipo Select>
                $("#txtCategoria").change(function () {
                    ActualizaSubCatalogo();
                });

           
                function ActualizaSubCatalogo()
                {
                    var cat = $("#txtCategoria").val();
                    CargaCategorias("txtSubCategoria", 2, cat);
                }
                //funcion que si viene producto en la ruta
                function VarificaProducto() {
                    var prodId = $_GET('Producto');
                    if (prodId != null) {
                        ConsultaProducto(prodId);
                    }

                }
                //funcion que extrae parametros desde la ruta 
                function $_GET(param) {
                    /* Obtener la url completa */
                    url = document.URL;
                    /* Buscar a partir del signo de interrogación ? */
                    url = String(url.match(/\?+.+/));
                    /* limpiar la cadena quitándole el signo ? */
                    url = url.replace("?", "");
                    /* Crear un array con parametro=valor */
                    url = url.split("&");
                    /* 
                    Recorrer el array url
                    obtener el valor y dividirlo en dos partes a través del signo = 
                    0 = parametro
                    1 = valor
                    Si el parámetro existe devolver su valor
                    */
                    x = 0;
                    while (x < url.length) {
                        p = url[x].split("=");
                        if (p[0] == param) {
                            return decodeURIComponent(p[1]);
                        }
                        x++;
                    }
                }
                //funcion que carga Categorias en los Select 
                function CargaCategorias(Select, Id, Categoria) {
                    if (Categoria != null) {
                        var actionData = "{Id : " + Id + " , Categoria : " + Categoria + " }";
                    }
                    else {
                        var actionData = "{Id : " + Id + " , Categoria : 0 }";
                    }

                    //metodo Ajax que ejecute metodo CargaCatalogos 
                    $.ajax(
                       {
                           url: "Producto.aspx/CargaCatalogos",
                           data: actionData,
                           dataType: "json",
                           type: "POST",
                           contentType: "application/json; charset=utf-8",
                           success: function (msg) {
                               // $("#txtCategoria").html(msg).fadeIn();
                               // $('#txtCategoria').html("<option value='WA'>Washington</option>  <option value='WV'>West Virginia</option>");
                               $("#" + Select).html(msg.d)
                           },
                           error: function (result) {
                               alert("ERROR " + result.status + ' ' + result.statusText + result.toString);
                           }
                       });
                }

                //funcion que consulta producto llena campos
                function ConsultaProducto(Id) {
                    var actionData = "{Id : " + Id + "}";
                    $.ajax(
                       {
                           url: "Producto.aspx/ConsultarProducto",
                           data: actionData,
                           dataType: "json",
                           type: "POST",
                           contentType: "application/json; charset=utf-8",
                           success: function (msg) {

                               var valores = new Array();
                               //alert(msg.d);
                               valores = msg.d.split(';');
                               if (valores[0] != '-1')
                               {
                                   $("#txtId").val(Id);
                                   $("#txtCategoria").val(valores[1]);
                                   ActualizaSubCatalogo();
                                   $("#txtSubCategoria").val(valores[2]);
                                   $("#txtNombre").val(valores[3]);
                                   $("#txtDescripcion").val(valores[4]);
                                   $("#txtCantidad").val(valores[5]);
                                   $("#txtPrecio").val(valores[6]);
                                   $("#txtMoneda").val(valores[7]);
                                   $("#txtPais").val(valores[8]);
                               }
                               else
                               {
                                   alert("No Existe El Producto Seleccionado");
                               }
                               

                           },
                           error: function (result) {
                               alert("ERROR " + result.status + ' ' + result.statusText + result.toString);
                           }
                       });
                }

                //funcion que llama una ventana externa para cargar Imagenes
                function MuestraFormImagen() {
                    var id = document.getElementById("txtId");
                    //validacion que debe haber guardado un producto
                    if (id.value != "") {
                        var myVentana = window.open("Agregar_Imagen.aspx?id=" + id.value, "", "width=550,height=400");
                    }
                    else {
                        alert("Debe Guardar El Producto");
                    }

                }
            </script>
            <!-- METODOS DE JQUERY FIN -->
            <!-- INICIO IMPORTAMOS ARCHIVOS JS DE JQUERY-->
            <script src="js/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <!-- FIN IMPORTAMOS ARCHIVOS JS DE JQUERY-->
        </div>
    </form>

</body>
</html>
