<%@ Page Title="Delhi JAL BOARD" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Masterallot.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2 style="text-align: left"><%: Title %>.<img alt="" src="../Content/delhi-jal-board-giri-nagar-kalkaji-delhi-lk7jj.jpg" style="width: 180px; height: 172px; text-align: center;" /></h2>
    <p class="text-danger" style="text-align: left">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4 class="text-center" style="border-style: solid; border-width: 1px; padding: 1px 4px; font-size: xx-large; height: 53px; width: 995px; background-color: #FFFFFF; font-weight: normal; color: #0066FF;">Delhi Jal Board House </h4>
        <h4 class="text-center" style="border-style: solid; border-width: 1px; padding: 1px 4px; font-size: xx-large; height: 53px; width: 995px; background-color: #FFFFFF; font-weight: normal; color: #3399FF;">House Allotment Management System.</h4>
        <hr />
        <div class="text-center">
            <strong><span style="font-size: x-large; color: #0033CC">Allot QUOTA Houses<br />
            </span></strong>E<span style="font-weight: bold">nter the Quota Code<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged2" Width="58px">
                <asp:ListItem>SC</asp:ListItem>
                <asp:ListItem>ST</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
            </asp:DropDownList>
            </span>
            <br />
            <br />
            Allot No. Of houses<asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Enter Type&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <span style="font-size: small; color: #FF0000">S<span style="font-weight: bold">tart Date :</span></span><span style="font-weight: bold"><span style="color: #FF0000; font-size: xx-small">(YYYY-MM-DD format only)</span></span><span style="font-size: small; color: #FF0000"><asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <strong>End Date:<span style="font-weight: bold"><span style="color: #FF0000; font-size: xx-small">(YYYY-MM-DD format only)</span></span></strong><asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </span>
            <br />
            <span style="font-size: small">
            <br style="color: #FF0000" />
            </span><span style="color: #FF0000"><span style="font-size: small">* Allotment of quota houses is bound by Estate rules and Roster sheet position.<br />
            *Allotment of Quota houses is to be done before doing regular allocation.</span></span><br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Allot Quota" />
            <br />
            <br />
            <br />
            <br />
            <strong><span style="font-size: x-large; color: #0000FF">Allotment of General Houses<br />
            </span></strong><span style="font-size: small; color: #FF0000">S<span style="font-weight: bold">tart Date :</span></span><span style="font-weight: bold"><span style="color: #FF0000; font-size: xx-small">(YYYY-MM-DD format only)</span></span><span style="font-size: small; color: #FF0000"><asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <strong>End Date:<span style="font-weight: bold"><span style="color: #FF0000; font-size: xx-small">(YYYY-MM-DD format only)</span></span></strong><asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />
            <br />
            *allotment is done strictly as per Estate rules.<br />
            *The period of vacation and period of consideration is very important and should be entered carefully.<br />
            *Once alloted, pls contact administor for further allotment, and do not attempt to allot again to revise the list.<br />
            </span>
            <br />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Allot General" />
            <br />
            <br />
        </div>
        <div class="form-group">
                   <div class="form-group">
                       <div class="form-group">
                           <div class="form-group">
                               <div class="form-group">
                                   <div class="form-group">
                                       <div class="form-group" style="margin-left: 320px">
            <strong><span style="font-size: x-large; color: #0033CC">
                                           <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Show Allotment Table" />
            </span></strong>
                                           <br />
                                           </div>
                  
        </div>
    
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
 
 
</asp:Content>

