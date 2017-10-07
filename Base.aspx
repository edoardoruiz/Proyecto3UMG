<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Base.aspx.cs" Inherits="Dw_Proyecto_3.Base" %>


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

    <input class="btn btn-success" type="submit" id="btn1" name="name" value="Hola" />

    <h2>Section title</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Header</th>
                    <th>Header</th>
                    <th>Header</th>
                    <th>Header</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1,001</td>
                    <td>Lorem</td>
                    <td>ipsum</td>
                    <td>dolor</td>
                    <td>sit</td>
                </tr>
                <tr>
                    <td>1,002</td>
                    <td>amet</td>
                    <td>consectetur</td>
                    <td>adipiscing</td>
                    <td>elit</td>
                </tr>
                <tr>
                    <td>1,003</td>
                    <td>Integer</td>
                    <td>nec</td>
                    <td>odio</td>
                    <td>Praesent</td>
                </tr>
                <tr>
                    <td>1,004</td>
                    <td>libero</td>
                    <td>Sed</td>
                    <td>cursus</td>
                    <td>ante</td>
                </tr>
            </tbody>
        </table>

        <a class="btn btn-outline-primary" href="/docs/4.0/layout/overview/">Explore the docs</a>

        <input class="form-control mr-sm-2" placeholder="Search" type="text">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
                Search
            </button>
        </input>

         <a class="btn btn-outline-primary" href="/docs/4.0/layout/overview/">Explore the docs</a>

        <input class="form-control mr-sm-2" placeholder="Search" type="text">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
                Search
            </button>
        </input>

         <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">
                Search
            </button>


          <a class="btn btn-outline-primary" href="/docs/4.0/layout/overview/">Explore the docs</a>

        <input class="form-control mr-sm-2" placeholder="Search" type="text">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
                Search
            </button>
        </input>

         <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">
                Search
            </button>



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
