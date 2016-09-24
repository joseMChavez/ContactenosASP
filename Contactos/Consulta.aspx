<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Contactos.Consulta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class="container">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3>Consulta de Mensajes</h3>
            </div>
            <div class="panel-body">

                <div class="form-horizontal col-md-12" role="form">
                    <div class="form-group">
                        <label class="col-md-2 col-sm-4 col-xs-12 control-label input-sm" for="DropDLFiltro">Filtrar por:</label>
                        <div class="col-md-4 col-md-4 col-xs-12">
                            <asp:DropDownList ID="DropDLFiltro" CssClass="form-control input-sm" readOnly="true" runat="server">
                                <asp:ListItem Value="Id">Id</asp:ListItem>
                                <asp:ListItem Value="Nombre">Nombre</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-4 col-xs-12">
                            <asp:TextBox ID="TextBoxFiltro" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="TextBoxFiltro" ID="RequiredFieldValidatorAS" runat="server" ErrorMessage="Introduzca El Asunto del Mensaje" ForeColor="#ff0000" BorderColor="#cc0000"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-2  col-md-2 col-xs-8">
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="ButtonBuscar" runat="server" OnClick="ButtonBuscar_Click" Width="36px"><span class="glyphicon glyphicon-search"></span> </asp:LinkButton>
                        </div>
                    </div>

                </div>
                <asp:GridView cssClass=" table table-responsive table-bordered table-hover" ID="GridView1" runat="server">
                    <Columns>
                        <asp:HyperLinkField
                                        DataNavigateUrlFields="Id"
                                        DataNavigateUrlFormatString="Contactanos.aspx?Id={0}"
                                        Text="Ver" />
                    </Columns>
                </asp:GridView>
               
            </div>


            <div class="panel-footer">
            </div>
        </div>
    </div>
</asp:Content>
