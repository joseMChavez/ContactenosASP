<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Contactanos.aspx.cs" Inherits="Contactos.Contactanos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="panel panel-success">
            <div class="panel-heading">
               <h3> Contactanos</h3>
                <h4>Bienvenido/a .</h4>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="panel-body">

                <div class="form-horizontal col-md-12" role="form">
                    <%-- ID --%>
                    <div class="form-group">

                        <label class="col-md-4 col-sm-4 col-xs-12 control-label input-sm" for="TextBoxName">Id</label>
                        <div class="col-md-2 col-xs-8">
                               <asp:TextBox ID="TextBoxId" CssClass="form-control " runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-2 col-xs-8">
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="ButtonBuscar" runat="server" OnClick="ButtonBuscar_Click"><span class="glyphicon glyphicon-search"></span> </asp:LinkButton>
                        </div>

                    </div>
                    <%-- Nombre --%>
                    <div class="form-group">

                        <label class="col-md-4 col-sm-4 col-xs-12 control-label input-sm" for="TextBoxName">Nombre</label>
                        <div class="col-md-3 col-xs-12">
                               <asp:TextBox ID="TextBoxName" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ControlToValidate="TextBoxName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Introduzca Su Nombre" ForeColor="#ff0000" BorderColor="#cc0000"></asp:RequiredFieldValidator>
                        </div>
                     

                    </div>
                    <%-- Email --%>
                    <div class="form-group">

                        <label class="col-md-4 col-sm-4 col-xs-12 control-label input-sm" for="TextBoxEmail">e-Mail</label>
                       
                        <div class="col-md-3 col-xs-12">
                               <asp:TextBox ID="TextBoxEmail" CssClass="form-control input-sm" runat="server" ToolTip="Ejemplo@gmail.com"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="TextBoxEmail" ID="RequiredFieldValidatorEm" runat="server" ErrorMessage="Introduzca Su Email" ForeColor="#ff0000" BorderColor="#cc0000"></asp:RequiredFieldValidator>
                        </div>

                    </div>
                    <%-- Asunto --%>
                    <div class="form-group">
                        <label class="col-md-4 col-sm-4 col-xs-12 control-label input-sm" for="TextBoxAsunto">Asunto</label>

                        <div class="col-md-3 col-xs-12">
                               <asp:TextBox ID="TextBoxAsunto" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ControlToValidate="TextBoxAsunto" ID="RequiredFieldValidatorAS" runat="server" ErrorMessage="Introduzca El Asunto del Mensaje" ForeColor="#ff0000" BorderColor="#cc0000"></asp:RequiredFieldValidator>
                        </div>
                    <%-- Mensaje --%>
                    
                        </div>
                        <div class="form-group">

                            <label class="col-md-4 col-sm-4 col-xs-12 control-label input-sm" for="TextBoxMensaje">Mensaje</label>
                            <div class="col-md-6 col-xs-12">
                               <asp:TextBox ID="TextBoxMensaje" CssClass="form-control input-sm" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="TextBoxMensaje" ID="RequiredFieldValidatorM" runat="server" ErrorMessage="Introduzca Su Mensaje!" ForeColor="#ff0000" BorderColor="#cc0000"></asp:RequiredFieldValidator>
                        </div>
                        

                    </div>

                </div>
            </div>


            <div class="panel-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-xs-4"></div>
                        <div class="center-block col-md-4 col-xs-4">
                            <asp:Button CssClass="btn btn-info" ID="ButtonNuevo" runat="server" Text="Nuevo" OnClick="ButtonNuevo_Click" />
                            <asp:Button CssClass=" btn btn-success" ID="ButtonGuardar" runat="server" Text=" Guardar" OnClick="ButtonGuardar_Click" />
                            
                            <asp:Button CssClass="btn btn-danger" ID="ButtonEliminar" runat="server" Text="Eliminar" OnClick="ButtonEliminar_Click" />
                        </div>
                        <div class="col-md-4 col-xs-4"></div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
