<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Contactanos.aspx.cs" Inherits="Contactos.Contactanos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="panel panel-primary">
            <div class="panel-heading">
                Contactanos
            </div>
            <div class="panel-body">

                <div class="form-horizontal col-md-12" role="form">
                    <%-- Nombre --%>
                    <div class="form-group">

                        <label class="col-md-4 col-sm-4 col-xs-12 control-label input-sm" for="TextBoxName">Id</label>
                        <div class="col-md-2 col-xs-8">
                               <asp:TextBox ID="TextBoxId" CssClass="form-control " runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-2 col-xs-8">
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="ButtonBuscar" runat="server"><span class="glyphicon glyphicon-search"></span> </asp:LinkButton>
                        </div>

                    </div>
                    <%-- Nombre --%>
                    <div class="form-group">

                        <label class="col-md-4 col-sm-4 col-xs-12 control-label input-sm" for="TextBoxName">Nombre</label>
                        <div class="col-md-3 col-xs-12">
                               <asp:TextBox ID="TextBoxName" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                        </div>
                     

                    </div>
                    <%-- Email --%>
                    <div class="form-group">

                        <label class="col-md-4 col-sm-4 col-xs-12 control-label input-sm" for="TextBoxEmail">e-Mail</label>
                       
                        <div class="col-md-3 col-xs-12">
                               <asp:TextBox ID="TextBoxEmail" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                        </div>

                    </div>
                    <%-- Asunto --%>
                    <div class="form-group">
                        <label class="col-md-4 col-sm-4 col-xs-12 control-label input-sm" for="TextBoxAsunto">Asunto</label>

                        <div class="col-md-3 col-xs-12">
                               <asp:TextBox ID="TextBoxAsunto" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                        </div>
                    <%-- Mensaje --%>
                    
                        </div>
                        <div class="form-group">

                            <label class="col-md-4 col-sm-4 col-xs-12 control-label input-sm" for="TextBoxMensaje">Mensaje</label>
                            <div class="col-md-6 col-xs-12">
                               <asp:TextBox ID="TextBoxMensaje" CssClass="form-control input-sm" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        

                    </div>

                </div>
            </div>


            <div class="panel-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-xs-4"></div>
                        <div class="center-block col-md-4 col-xs-4">
                            <asp:Button CssClass="btn btn-info" ID="ButtonNuevo" runat="server" Text="Nuevo" />
                            <asp:Button CssClass=" btn btn-success" ID="ButtonGuardar" runat="server" Text=" Guardar" />
                            
                            <asp:Button CssClass="btn btn-danger" ID="ButtonEliminar" runat="server" Text="Eliminar" />
                        </div>
                        <div class="col-md-4 col-xs-4"></div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
