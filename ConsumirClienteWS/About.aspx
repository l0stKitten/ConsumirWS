<%@ Page Title="Cliente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ConsumirClienteWS.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Métodos web para un CRUD</h1>
        <p class="lead">Implementacíón de método web para un CRUD en el proyecto de un sistema de ventas de cámaras.</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Crear cliente</h2>
            Ingrese los datos del cliente a crear:
            <p>
                NOMBRE CLIENTE
            <asp:TextBox ID="nom_clientC" runat="server"></asp:TextBox>
            <p>
                DIRECCION CLIENTE
            <asp:TextBox ID="dir_clientC" runat="server"></asp:TextBox>
            <p>
                TELEFONO CLIENTE
            <asp:TextBox ID="tel_clientC" runat="server"></asp:TextBox>
            <p>
                EMAIL CLIENTE
            <asp:TextBox ID="email_clientC" runat="server"></asp:TextBox>
            <p>
                
                Dar click aquí para actualizar la informacion de un cliente existente.</p>
            <p>
                <asp:Button ID="crear_usuario" runat="server" Text="Crear" OnClick="Button1_Click" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>Actualizar cliente</h2>&nbsp;
            Ingrese los datos del cliente a actualizar:
            <p>
                ID CLIENTE
            <asp:TextBox ID="id_clientA" runat="server"></asp:TextBox>
            <p>
                NOMBRE CLIENTE
            <asp:TextBox ID="nom_clientA" runat="server"></asp:TextBox>
            <p>
                DIRECCION CLIENTE
            <asp:TextBox ID="dir_clientA" runat="server"></asp:TextBox>
            <p>
                TELEFONO CLIENTE
            <asp:TextBox ID="tel_clientA" runat="server"></asp:TextBox>
            <p>
                EMAIL CLIENTE
            <asp:TextBox ID="email_clientA" runat="server"></asp:TextBox>
            <p>
                
                Dar click aquí para actualizar la informacion de un cliente existente.</p>
            <p>
                <asp:Button ID="actualizar_cliente" runat="server" Text="Actualizar" OnClick="Button2_Click" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>Eliminar</h2>
            Ingrese el ID del cliente a eliminar:
            <p>
                ID CLIENTE
            <asp:TextBox ID="id_clientE" runat="server"></asp:TextBox>
            <p>
                Dar click aquí para eliminar un cliente existente.
            </p>
            <p>
               <asp:Button ID="eliminar_cliente" runat="server" Text="Eliminar" OnClick="Button3_Click" />
            </p>
        </div>
         <div class="row">
            <p>Lista Clientes</p>
            <asp:GridView ID="tabla_cli" runat="server" Width="842px">
            </asp:GridView>
        </div>
    </div>

</asp:Content>
