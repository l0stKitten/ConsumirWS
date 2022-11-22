<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConsumirClienteWS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>CRUD Productos</h1>
    </div>
    <div class="row">
        <h2>Producto</h2>
    </div>
    <div class="row">
        <div class="col-md-2">
            <p>ID Producto</p>
            <asp:TextBox ID="id_prod" runat="server" Enabled="False"></asp:TextBox>
            <p>Código Producto</p>
            <asp:TextBox ID="cod_prod" runat="server"></asp:TextBox>
        </div>        
        <div class="col-md-2">
            <p>Nombre Producto</p>
            <asp:TextBox ID="nombre_prod" runat="server"></asp:TextBox>
            <p>Precio Compra Producto</p>
            <asp:TextBox ID="precc_prod" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <p>Precio Venta Producto</p>
            <asp:TextBox ID="precv_prod" runat="server"></asp:TextBox>
        </div>

        <div class="col-md-2">
            
            <asp:TextBox ID="desc_prod" runat="server" EnableViewState="False" Visible="False"></asp:TextBox>
            
            <asp:TextBox ID="mat_prod" runat="server" EnableViewState="False" Visible="False"></asp:TextBox>
        </div>
        <div class="col-md-2">
            
            <asp:TextBox ID="marca_prod" runat="server" EnableViewState="False" Visible="False"></asp:TextBox>
        </div>

    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Button ID="crear_producto" Text="Crear" runat="server" OnClick="crear_producto_Click"/>
        </div>
        <div class="col-md-4">
            <asp:Button ID="act_producto" Text="Actualizar" runat="server" OnClick="act_producto_Click"/>
        </div>
    </div>
    <div class="row">
        <p>Lista Productos</p>
        <asp:GridView ID="tabla_prod" runat="server" AutoGenerateColumns="false" Width="842px" OnRowDeleting="grvProductos_RowDeleting" OnRowEditing="grvProductos_RowEditing">
            <Columns>
                <asp:TemplateField HeaderText="ID">  
                     <HeaderStyle HorizontalAlign="Left" />  
                     <ItemStyle HorizontalAlign="Left" />  
                     <ItemTemplate>  
                          <asp:Label runat="server" ID="lbl_id_prod" Text='<%#Eval("ID_PROD") %>'></asp:Label>  
                     </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="CODIGO">  
                     <HeaderStyle HorizontalAlign="Left" />  
                     <ItemStyle HorizontalAlign="Left" />  
                     <ItemTemplate>  
                          <asp:Label runat="server" ID="lbl_cod" Text='<%#Eval("CODIGO") %>'></asp:Label>  
                     </ItemTemplate>                  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="NOMBRE">  
                     <HeaderStyle HorizontalAlign="Left" />  
                     <ItemStyle HorizontalAlign="Left" />  
                     <ItemTemplate>  
                           <asp:Label runat="server" ID="lbl_nombre" Text='<%#Eval("NOMBRE") %>'></asp:Label>  
                     </ItemTemplate>                 
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Precio Compra">  
                     <HeaderStyle HorizontalAlign="Left" />  
                     <ItemStyle HorizontalAlign="Left" />  
                     <ItemTemplate>  
                            <asp:Label runat="server" ID="lbl_prec_comp" Text='<%#Eval("PRECIO_COMPRA") %>'></asp:Label>  
                     </ItemTemplate>          
                 </asp:TemplateField>  
                 <asp:TemplateField HeaderText="Precio Venta">  
                     <HeaderStyle HorizontalAlign="Left" />  
                     <ItemStyle HorizontalAlign="Left" />  
                     <ItemTemplate>  
                            <asp:Label runat="server" ID="lbl_prec_venta" Text='<%#Eval("PRECIO_VENTA") %>'></asp:Label>  
                     </ItemTemplate>            
                 </asp:TemplateField>  

                 <asp:TemplateField HeaderText="Update">  
                      <HeaderStyle HorizontalAlign="Left" />  
                      <ItemStyle HorizontalAlign="Left" />  
                      <ItemTemplate>  
                             <asp:LinkButton runat="server" ID="btnEdit" Text="Edit" CommandName="Edit" ToolTip="Cliquea aquí para actualizar el registro" />                                                                                         
                       </ItemTemplate>  
                 </asp:TemplateField>  
                 <asp:TemplateField HeaderText="Delete">  
                       <HeaderStyle HorizontalAlign="Left" />  
                       <ItemStyle HorizontalAlign="Left" />  
                       <ItemTemplate>                                                                          
                             <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandName="Delete" OnClientClick="return confirm('¿Estás seguro de eliminar este registro?');" ToolTip="Cliquea aquí para eliminar el registro" />  
                             </span>  
                       </ItemTemplate>                                         
                 </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
