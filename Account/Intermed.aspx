<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Intermed.aspx.cs" Inherits="WebApplication1.Account.Intermed2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation Page</title>
    <style type="text/css">
        .auto-style1 {
            width: 189px;
            height: 177px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style7 {
            color: #0066FF;
            width: 54%;
            height: 1047px;
        }
        .auto-style10 {
            width: 23px;
            height: 23px;
        }
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style15 {
            color: #000099;
        }
        .auto-style18 {
            width: 135px;
            height: 23px;
            color: #000099;
        }
        .auto-style20 {
            width: 135px;
            color: #000099;
        }
        .auto-style21 {
            width: 135px;
            height: 23px;
        }
        .auto-style22 {
            width: 135px;
        }
        .auto-style24 {
            width: 23px;
        }
        .auto-style26 {
            width: 135px;
            height: 22px;
            color: #000099;
            font-size: x-large;
        }
        .auto-style27 {
            width: 23px;
            height: 22px;
        }
        .auto-style28 {
            width: 152px;
            height: 122px;
        }
        .auto-style29 {
            width: 23px;
            color: #000000;
            font-size: x-large;
            text-align: center;
        }
        .auto-style30 {
            color: #000099;
            font-size: x-large;
        }
        .auto-style31 {
            font-size: small;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style2">
    
        <div class="auto-style2">
    
        <img alt="" class="auto-style1" src="../Content/delhi-jal-board-giri-nagar-kalkaji-delhi-lk7jj.jpg" /><br />
        <br />
            <strong>
        <br class="auto-style13" />
            </strong><span class="auto-style13">You are about to submit an application!<br />
            Please carefully review information before submitting.<br />
            </span><span class="auto-style31">*This page is tracked, and any unauthorized use/Misinformation shall lead to disciplinary proceedings</span><strong><br class="auto-style13" />
            </strong>
        <br />
        <br />
        </div>
        <table align="center" border="1" class="auto-style7">
            <tr>
                <td class="auto-style20">
    
        <img alt="" class="auto-style28" src="../Content/delhi-jal-board-giri-nagar-kalkaji-delhi-lk7jj.jpg" /></td>
                <td class="auto-style29">
                    Please confirm your details before submitting!!</td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <strong>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style30" Text="Unique Application No : "></asp:Label>
                    </strong>
                </td>
                <td class="auto-style27">
        <strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style30"></asp:Label>
        </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <strong>
        <asp:Label ID="Label4" runat="server" Text="Employee Name  :  " CssClass="auto-style15"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style10"><strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style15"></asp:Label>
        </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong><asp:Label ID="Label5" runat="server" CssClass="auto-style15" Text="Employee ID : "></asp:Label>
                    </strong>
                </td>
                <td class="auto-style24"><strong>
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style15"></asp:Label>
        </strong>
                </td>
            </tr>
            <tr class="auto-style15">
                <td class="auto-style21"><strong>Preference 1:</strong></td>
                <td class="auto-style10">
                    <strong>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr class="auto-style15">
                <td class="auto-style22"><strong>Preference 2:</strong></td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr class="auto-style15">
                <td class="auto-style22"><strong>Preference 3:</strong></td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr class="auto-style15">
                <td class="auto-style22"><strong>Address:</strong></td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr class="auto-style15">
                <td class="auto-style22"><strong>Allot Anywhere?</strong></td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr class="auto-style15">
                <td class="auto-style22"><strong>Category Applied :</strong></td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr class="auto-style15">
                <td class="auto-style22"><strong>Type Applied:</strong></td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr class="auto-style15">
                <td class="auto-style22"><strong>Date of Joining:</strong></td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr class="auto-style15">
                <td class="auto-style22"><strong>Date of Application:</strong></td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr class="auto-style15">
                <td class="auto-style22"><strong>Sex:</strong></td>
                <td class="auto-style24"><strong>
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
            <tr class="auto-style15">
                <td class="auto-style22">Date of Birth:</td>
                <td class="auto-style24">
                    <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr class="auto-style15">
                <td class="auto-style22">Change of Quarters?</td>
                <td class="auto-style24">
                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            </table>
        <br />
    
    </div>
        <p class="auto-style2">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Correct Again!" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit The application" />
        </p>
    </form>
</body>
</html>

