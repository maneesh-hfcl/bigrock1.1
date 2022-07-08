<%@ Page Title="DELHI JAL BOARD" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Account_Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2 class="text-center"><%: Title %><img alt="" src="../Content/delhi-jal-board-giri-nagar-kalkaji-delhi-lk7jj.jpg" style="width: 190px; height: 178px" class="navbar-header" />.</h2>

    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4><span style="font-size: xx-large"></span></h4>
                    <p class="text-center"><strong><span style="font-size: xx-large">HOUSE ALLOTMENT SYSTEM</span></strong></p>
                    <p class="text-center"><strong><span style="font-size: xx-large; color: #FF0000">MASTER PAGE</span></strong></p>
                    <p class="text-center"><strong><span style="font-size: xx-small; color: #FF0000">*This site is restricted.</span></strong></p>
                </div>
            </section>
        </div>

        <div class="col-md-4">
            <section id="socialLoginForm">
                <span style="font-size: x-small; color: #FF0000">*UHID=Unique House Identifier</span><br style="font-size: x-small; color: #FF0000" />
                <span style="font-size: x-small; color: #FF0000">*DOA=Date of Application</span><br style="font-size: x-small; color: #FF0000" />
                <span style="font-size: x-small; color: #FF0000">*DOV=Date of Vacation of the house.</span><br style="font-size: x-small; color: #FF0000" />
                <span style="font-size: x-small; color: #FF0000">*Remark indicates Preference or Category.</span><br />
                <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
            </section>
        </div>
    </div>
</asp:Content>

