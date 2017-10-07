<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pruebas.aspx.cs" Inherits="Dw_Proyecto_3.pruebas" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
        <meta content="width=device-width, initial-scale=1" name="viewport">
            <title>Testing - Bootstrap FileStyle
            </title>
            <link href="icons/favicon.png" rel="icon" type="image/png">
                <%--<link crossorigin="anonymous" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" rel="stylesheet">
                --%>
                <link href="css/bootstrap.min.css" rel="stylesheet" />
                <link href="open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">

                    <%--<script crossorigin="anonymous" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" src="https://code.jquery.com/jquery-3.2.1.slim.min.js">
                        </script>--%>
                    <script src="js/jquery.min.js"></script>
                    <script crossorigin="anonymous" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js">
                    </script>
                    <%--  <script crossorigin="anonymous" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js">
                        </script>--%>
                    <script src="js/bootstrap.min.js"></script>
                    <script src="css/bootstrap-filestyle.js"></script>
                </link>
            </link>
            </link>
        </meta>
    </meta>
</head>
<body>
    <form runat="server" >
   
    <div class="container-fluid">
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <a href="Componentes/Recibo.pdf">Componentes/Recibo_1.pdf</a>
        
    </div>
    <script type="text/javascript">
        $('#input01').filestyle()
        $('#input001').filestyle({
            'placeholder': 'Placeholder test'
        });
        $('#input02').filestyle({
            text: 'Elegir Archivo'
        });
        $('#File44').filestyle({
            text: 'Elegir Archivo'
        });

    </script>
        </form>
</body>
</html>
