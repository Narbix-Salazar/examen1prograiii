<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RecyclingManagement.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Puedes agregar estilos específicos para esta página si es necesario -->
    <style>
        /* Estilos específicos para Default.aspx */
        .jumbotron {
            background-color: #dcedc8; /* Verde claro más suave */
            padding: 20px;
            border-radius: 4px;
            margin-bottom: 20px;
        }

        .container {
            background-color: #e0f7da; /* Verde claro */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 0px #000;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            background-color: #388e3c; /* Verde oscuro */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #2e7d32; /* Verde más oscuro */
        }

        .message {
            margin-top: 20px;
            color: red;
        }

        .leaf1, .leaf2 {
            position: absolute;
            width: 100px;
            height: 100px;
            background-image: url('Images/leaf.png'); /* Reemplazar con la URL correcta */
            background-size: contain;
            background-repeat: no-repeat;
        }

        .leaf1 {
            top: 20px;
            right: 20px;
        }

        .leaf2 {
            bottom: 20px;
            left: 20px;
        }

        .button-container {
            margin-top: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Bienvenido a Recycling Management</h1>
        <p>Contenido principal de la página de inicio.</p>
        <img src="~/Images/reciclaje.png" alt="Reciclaje" />
    </div>

    <div class="container">
        <h1>Registro de Usuarios</h1>
        <div class="leaf1"></div>
        <div class="leaf2"></div>
        <div class="form-group">
            <label for="cedula">Cédula:</label>
            <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="nombre">Nombre:</label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="apellido">Apellido:</label>
            <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="correo">Correo:</label>
            <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" required="required" TextMode="Email"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="contrasena">Contraseña:</label>
            <asp:TextBox ID="txtContrasena" runat="server" CssClass="form-control" required="required" TextMode="Password"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="RegistrarUsuario" CssClass="btn" />
        </div>
        <asp:Label ID="lblMensaje" runat="server" CssClass="message" Text=""></asp:Label>

        <div class="button-container">
            <asp:Button ID="btnInformacion" runat="server" Text="Ir a Información" OnClick="IrAInformacion" CssClass="btn" />
            <asp:Button ID="btnContadorPuntos" runat="server" Text="Ir a Contador de Puntos" OnClick="IrAContadorPuntos" CssClass="btn" />
        </div>
    </div>
</asp:Content>
