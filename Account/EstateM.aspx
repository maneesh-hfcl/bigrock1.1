<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="EstateM.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        
        <img alt="" src="../Content/delhi-jal-board-giri-nagar-kalkaji-delhi-lk7jj.jpg" style="width: 277px; height: 272px" />&nbsp;&nbsp;&nbsp; <span style="color: #FF0000"><strong>ESTATE MANAGER LOGIN</strong></span></h2>
    <p>
        
        <span style="color: #FF0000">*<strong>Manage your Houses in your Jurisdiction only</strong></p>
    <p>
        
        <strong>* Any alteration to houses done here will be tracked and unauthorized use is liable to prosecution!</strong></p>
    <p>
        
        <strong>*Change House allotment Status to &quot;Possessed&quot; or &quot;vacant&quot; or example.</strong></p>
    <p>
        
        <strong>*Enter File Name in remarks column, this is mandatory</strong></p>
    </span>
    <p>
        
        &nbsp;</p>
    <p><strong>
        <asp:Label ID="Label1" runat="server" style="font-size: large" Text="Enter UHID/Occupant Name/Location/House No"></asp:Label>
        </strong></p>
    <p style="text-align: left"><strong>
        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid"></asp:TextBox>
        </strong></p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="Search" Width="121px" />
    </p>
    <p>
        <strong>Generate Technical Possession(Enter UHID)</strong></p>
    <p>
        <strong>
        <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid"></asp:TextBox>
        </strong>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search UHID" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <strong>Generate Physical Possession(Enter UHID)</strong></p>
    <p>
        <strong>
        <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid"></asp:TextBox>
        </strong>
    </p>
    <p>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Search UHID" />
    </p>
    <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Generate Tech Possesion" />
        </Columns>
    </asp:GridView>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView3" runat="server" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Generate Physical Possession" />
        </Columns>
    </asp:GridView>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UHID" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-right: 88px" Width="229px">
        <Columns>
            <asp:CommandField EditText="Update" ShowEditButton="True"></asp:CommandField>
            <asp:TemplateField HeaderText="UHID">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("UHID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="locationtype">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("locationtype") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Typeh">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Typeh") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="HouseNo">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("HouseNO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="damaged">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("damaged") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="vacant">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>VACANT</asp:ListItem>
                        <asp:ListItem>Tech Possession</asp:ListItem>
                        <asp:ListItem>ALLOTTED</asp:ListItem>
                        <asp:ListItem>DAMAGED</asp:ListItem>
                        <asp:ListItem>OTHER</asp:ListItem>
                        <asp:ListItem>Physical Possession</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("vacant") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="remarks">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Remarks") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("remarks") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
