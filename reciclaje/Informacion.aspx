<%@ Page Title="Información sobre el Reciclaje" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Informacion.aspx.cs" Inherits="RecyclingManagement.Informacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .info-container {
            background-color: #e0f7da; /* Verde claro */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 0px #000;
            margin-bottom: 20px;
        }

        .info-title {
            font-size: 24px;
            font-weight: bold;
            color: #388e3c; /* Verde oscuro */
            text-align: center; /* Centra el título */
        }

        .info-section {
            margin-top: 20px;
        }

        .info-section h2 {
            font-size: 20px;
            font-weight: bold;
            color: #2e7d32; /* Verde más oscuro */
        }

        .info-section p {
            font-size: 16px;
            color: #333;
            line-height: 1.6;
        }

        .info-image {
            display: block;
            margin: 20px auto;
            width: 50%;
            text-align: center; /* Centra la imagen */
        }

        .info-image img {
            max-width: 100%;
            height: auto;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50; /* Verde */
            color: white;
            text-decoration: none;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="info-container">
        <h1 class="info-title">Información sobre el Reciclaje</h1>
        
        <div class="info-section">
            <h2>Beneficios del Reciclaje</h2>
            <p>El reciclaje tiene múltiples beneficios para el medio ambiente y la sociedad, entre ellos:</p>
            <ul>
                <li>Reducción de la cantidad de residuos enviados a vertederos e incineradoras.</li>
                <li>Conservación de recursos naturales como madera, agua y minerales.</li>
                <li>Prevención de la contaminación al reducir la necesidad de recolectar nuevas materias primas.</li>
                <li>Ahorro de energía, ya que fabricar productos con materiales reciclados consume menos energía.</li>
                <li>Fomento de la economía verde y creación de empleo en la industria del reciclaje.</li>
            </ul>
        </div>
        
        <div class="info-section">
            <h2>Impacto Global del Reciclaje</h2>
            <p>El reciclaje contribuye significativamente a la protección del medio ambiente a nivel global:</p>
            <ul>
                <li>Disminuye la emisión de gases de efecto invernadero, combatiendo el cambio climático.</li>
                <li>Reduce la contaminación de océanos y suelos, protegiendo la biodiversidad.</li>
                <li>Promueve un uso más eficiente y sostenible de los recursos naturales.</li>
            </ul>
        </div>

        <div class="info-section">
            <h2>Proceso de Reciclaje en Nuestra Comunidad</h2>
            <p>En nuestra comunidad, hemos implementado un sistema de reciclaje eficiente que incluye:</p>
            <ul>
                <li>Recogida selectiva de residuos: plástico, vidrio, papel, aluminio, y cartón.</li>
                <li>Campañas de concienciación y educación ambiental.</li>
                <li>Puntos de reciclaje accesibles y bien señalizados.</li>
            </ul>
        </div>

        <div class="info-section">
            <h2>Cómo Puedes Participar</h2>
            <p>Todos podemos contribuir al reciclaje siguiendo estos pasos sencillos:</p>
            <ul>
                <li>Separar los residuos en casa según las categorías indicadas.</li>
                <li>Llevar los residuos a los puntos de reciclaje adecuados.</li>
                <li>Participar en las campañas de reciclaje y eventos comunitarios.</li>
            </ul>
        </div>

        <div class="info-image">
            <img src="Images/reciclaje.png" alt="Reciclaje" />
        </div>

        <div style="text-align: center; margin-top: 20px;">
            <a href="ContadorPuntos.aspx" class="btn">Ir a Contador de Puntos</a>
        </div>
    </div>
</asp:Content>

