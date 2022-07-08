<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Erpage.aspx.cs" Inherits="Account_Default2" %>

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
        .auto-style3 {
            color: #FF0000;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style2">
    
        <img alt="" class="auto-style1" src="../Content/delhi-jal-board-giri-nagar-kalkaji-delhi-lk7jj.jpg" /><br />
        <br />
        <br />
        <span class="auto-style3">Oops There seems to be some problem.
        </span>
        <br class="auto-style3" />
        <br class="auto-style3" />
        <span class="auto-style3">It may be one of these reasons:</span><br class="auto-style3" />
        <span class="auto-style3">1. You may be trying to apply again with same Employee ID.</span><br class="auto-style3" />
        <span class="auto-style3">2. You may be trying when Central Server is down.</span><br class="auto-style3" />
        <br class="auto-style3" />
        <span class="auto-style3">Please try again , and if problem exists , contact DJB Hq&#39;s for help.</span><br class="auto-style3" />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
