<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Contactanos.aspx.cs" Inherits="Contactos.Contactanos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">
            Contactanos
        </div>
        <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">
                <div class="form-group">
                    <%-- aqui colocamos lo del formulario --%>
                    <div class="input-group">
                        
                        <span class="input-group-addon" id="basic-addon1">Nombre:</span>
                        <asp:TextBox CssClass="col-md-6 col-xs-10" ID="TextBoxName" runat="server"></asp:TextBox>

                    </div>

                </div>

            </div>
        </div>
         <div class="panel-footer">
             <asp:Button cssClass="btn btn-info" ID="Button1" runat="server" Text="Enviar" />
        </div>
    </div>
</asp:Content>
