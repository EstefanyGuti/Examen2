<%@ Page Title="" Language="C#" MasterPageFile="~/Examen2.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Examen2.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 class="auto-style1">+</h1>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateColumns="False" DataKeyNames="numeroencuesta" DataSourceID="SqlExamen2">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="numeroencuesta" HeaderText="Numero Encuesta" InsertVisible="False" ReadOnly="True" SortExpression="numeroencuesta" />
                <asp:BoundField DataField="nombreparticipante" HeaderText="Nombre de Participante" SortExpression="nombreparticipante" />
                <asp:BoundField DataField="apellido" HeaderText="Apellido" SortExpression="apellido" />
                <asp:BoundField DataField="fechanacimiento" HeaderText="Fecha Nacimiento" SortExpression="fechanacimiento" />
                <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="Edad" />
                <asp:BoundField DataField="correoelectronico" HeaderText="Correo Electronico" SortExpression="correoelectronico" />
                <asp:BoundField DataField="carropropio" HeaderText="Cuenta con carro propio" SortExpression="carropropio" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlExamen2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [encuestas]"></asp:SqlDataSource>
    </div>
    <div>
        <div>
            <img src="encuesta.jpg" alt="portada" width="200" />
        </div>
        <div>
            Nombre
            <asp:TextBox ID="Tnom" runat="server"></asp:TextBox>
            Apellido
            <asp:TextBox ID="Tape" runat="server"></asp:TextBox>
            Fecha Nacmiento
            <asp:TextBox ID="Tfena" runat="server"></asp:TextBox>
            Edad
            <asp:TextBox ID="Tedad" runat="server"></asp:TextBox>
            <br />
            Correo electronico
            <asp:TextBox ID="Temail" runat="server"></asp:TextBox>
            <br />
            Posee carro propio?
            <asp:RadioButton ID="Rsi" runat="server" Text="Sí" /> 
            <asp:RadioButton ID="Rno" runat="server" Text="No" />
        </div>
        <div>
            <asp:Button ID="Breg" runat="server" Text="Registrar" />

        </div>
    </div>
</asp:Content>
