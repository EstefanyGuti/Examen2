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
            <img src="descargar.png" alt="portada" width="200" />
        </div>
        <div>
            # Encuesta
            <asp:TextBox ID="Tnumeroencuesta" runat="server"></asp:TextBox>
            <br />
            Nombre
            <!-- HTML -->
            <asp:TextBox ID="Tnom" runat="server"></asp:TextBox>
            Apellido
            <asp:TextBox ID="Tape" runat="server"></asp:TextBox>
            Fecha Nacimiento
            <asp:TextBox ID="Tfena" runat="server" TextMode="Date"></asp:TextBox>
            Edad
            <asp:TextBox ID="Tedad" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            Correo electrónico
            <asp:TextBox ID="Temail" runat="server" TextMode="Email"></asp:TextBox>
            <br />

            <label for="carropropio">¿Posee carro propio?</label>
            <select id="carropropio" name="carropropio" runat="server" required>
                <option value="1">Sí</option>
                <option value="0">No</option>
            </select>

            <asp:Button ID="Breg" CssClass="button button" runat="server" Text="Registrar" OnClick="Button1_Click" />
            <asp:Label ID="lblMensaje" runat="server" Text="" Visible="false"></asp:Label>

        </div>
    </div>
</asp:Content>
