<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Account_Default2" %>

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
        .auto-style8 {
            width: 135px;
            text-decoration: underline;
            color: #000099;
            height: 42px;
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
        .auto-style16 {
            width: 23px;
            height: 25px;
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
        .auto-style23 {
            width: 135px;
            height: 25px;
            color: #000099;
        }
        .auto-style24 {
            width: 23px;
        }
        .auto-style25 {
            color: #000099;
            width: 23px;
            height: 42px;
            text-align: justify;
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
            width: 67px;
            height: 45px;
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
            width: 135px;
            height: 91px;
            text-align: left;
        }
        .auto-style32 {
            width: 23px;
            height: 91px;
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
            </strong><span class="auto-style13"><strong>CONGRATULATIONS!<br />
            YOU HAVE SUCCESFULLY APPLIED FOR HOUSE UNDER DJB ALLOTMENT POOL.</strong></span><strong><br class="auto-style13" />
            </strong><span class="auto-style13"><strong>PLEASE NOTE THE FOLLOWING DETAILS FOR FURTHER NECESSARY ACTIONS.</strong></span><strong><br class="auto-style13" />
            <asp:Button ID="Button2" runat="server" OnClientClick  ="printTbl()" Text="Print Receipt"  />
            </strong>
        <br />
        <br />
        </div>

        <table id="myt" style="border-style: solid""; border-width: thin; border="1" class="auto-style7" align="center">
            <tr>
                <td class="auto-style20">
    
        <img alt="" class="auto-style28" src="../Content/djb%20small.jpg" /></td>
                <td class="auto-style29">
                    <strong>DJB HOUSE ALLOTMENT SYSTEM&nbsp; COMPUTERISED RECIEPT.</strong></td>
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
            <tr>
                <td class="auto-style8"><strong><em>Signed and attested:</em></strong></td>
                <td class="auto-style25"><strong>
                    <br />
                    <br />
                    <br />
                    <br />
                    I, DDO, hereby attest that all above information is true to the best of my knowledge, and i would bear all responsibilities of ensuing consequences of following submission.<br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>DDO Signature:</strong></td>
                <td class="auto-style16"><strong>Applicant signature:</strong></td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <br />
                    <br />
                    ____________________<br />
                </td>
                <td class="auto-style24">
                    <br />
                    _______________________<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style31">*Please preserve this reciept for future<br />
                    *Do not attempt to apply again on similiar Employee ID<br />
                    *Contact DJB Hq&#39;s in case you wish to change any details.<br />
                    *Entire allotment process is computerised, without any scope for error.</td>
                <td class="auto-style32"></td>
            </tr>
        </table>
        <br />
 

    
    </div>
                <script lang="javascript" type ="text/javascript" >
                       
    function printTbl() {
        var TableToPrint = document.getElementById('myt');
        newWin = window.open('PrintDiv', 'Print-Window', 'width=920,height=750,top=100,left=100');
    /*   // window.open()
       newWin.document.write(TableToPrint.outerHTML);
       newWin.print();  
       newWin.close();*/
        newWin.document.write(TableToPrint.outerHTML);
       newWin.document.close();
       newWin.focus();
       newWin.print();
       return false;
    }
</script>
        <p class="auto-style2">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter another Application" />
        </p>
    </form>
</body>
</html>
