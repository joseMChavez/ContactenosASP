<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="loginP.aspx.cs" Inherits="Contactos.loginP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="panel panel-success">
            <div class="panel-heading">
                ENTRADA</div>
            <div class="panel-body">

                <div class="form-horizontal col-md-12" role="form">
                    <%-- nombree --%>
                    <div class="form-group">

                        <label class="col-md-4 col-sm-4 col-xs-12 control-label input-sm" for="TextBoxName">Nombre</label>
                        <div class="col-md-2 col-xs-8">
                               <asp:TextBox ID="TextBoxName" CssClass="form-control " runat="server"></asp:TextBox>
                        </div>
                        

                    </div>
                    <%-- Apellido --%>
                    <div class="form-group">

                        <label class="col-md-4 col-sm-4 col-xs-12 control-label input-sm" for="TextBoxApe">Apellido</label>
                        <div class="col-md-3 col-xs-12">
                               <asp:TextBox ID="TextBoxApe" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                        </div>
                     <div class="col-md-2 col-xs-8">
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="ButtonBuscar" runat="server" OnClick="ButtonBuscar_Click"><span class="glyphicon glyphicon-send"></span> </asp:LinkButton>
                        </div>

                    </div>
                  

                </div>
            </div>
    </div>
</asp:Content>
