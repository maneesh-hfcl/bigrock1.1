<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" MasterPageFile="~/Site.Master" Inherits="WebApplication1.Account.Register2" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2 style="text-align: left"><%: Title %>.<img alt="" src="../Content/delhi-jal-board-giri-nagar-kalkaji-delhi-lk7jj.jpg" style="width: 213px; height: 229px; text-align: center;" /></h2>
    
    <div class="form-horizontal">
        <h4 class="text-center" style="border-style: solid; border-width: 1px; padding: 1px 4px; font-size: xx-large; height: 89px; width: 730px; background-color: #FFFFFF; margin-left: 27px;"><span style="color: #0000FF"><strong>Apply for New Accomodation</strong></span></h4>
        <p class="text-center" style="border-style: hidden; border-width: 1px; padding: 1px 4px; font-size: small; height: 53px; width: 718px; background-color: #FFFFFF; text-align: left; margin-left: 40px;"><span style="color: #FF0000">*Estate manager shall attest all the details before submitting details.&nbsp;&nbsp; * Estate manager shall verify all records and eligibility before submitting&nbsp; * Estate manager Shall ensure applicatant is genuine and is applying as per Estate Rules and Rules of DJB</span>.</p>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">Employee Name</asp:Label>
            </div>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" style="padding: 1px 4px" OnTextChanged="UserName_TextChanged1" />
                <div style="text-align: justify">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ValidationGroup="Submit"
                    CssClass="text-danger" ErrorMessage="The Employee name field is required." />
                </div>
            </div>
        </div>
       
         <div class="form-group">
            <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" style="left: 0px; top: 19px; width: 344px; height: 25px" BorderWidth="1px">Address of Controlling Authority</asp:Label>
            </div>
            <div class="col-md-10" style="margin-left: 240px">
                <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" style="padding: 1px 4px; margin-left: 130px;" Height="81px" Width="334px" />
                <div style="text-align: justify">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox2" ValidationGroup="Submit"
                    CssClass="text-danger" ErrorMessage="The field is required." />
                </div>
            </div>
        </div>
         
               <div class="form-group">
                   <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">Employee ID</asp:Label>
                   </div>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" style="padding: 1px 4px" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" />
                <div style="text-align: justify">
                         <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1" ValidationGroup="Submit"
                    CssClass="text-danger" ErrorMessage="The field is required." />
               
                </div>
            </div>
        </div>
              <div class="form-group">
            <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">Mobile No(optional)</asp:Label>
            </div>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control" style="padding: 1px 4px" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" />
                <div style="text-align: justify">
              
                </div>
            </div>
        </div>
               <div class="form-group">
            <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">email(Optional)</asp:Label>
            </div>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control" style="padding: 1px 4px" OnTextChanged="UserName_TextChanged1" />
                <div style="text-align: justify">
              <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationGroup="Submit" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox4" ErrorMessage="Invalid Email address!"></asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
               <div class="form-group">
                   <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">1st Location Preference</asp:Label>
                   </div>
            <div class="col-md-10" style="left: 0px; top: 4px">
                <div style="text-align: justify">
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged2">
                        <asp:ListItem Selected="True">Chandrawal</asp:ListItem>
                        <asp:ListItem>Haiderpur</asp:ListItem>
                        <asp:ListItem>Aram Garh</asp:ListItem>
                        <asp:ListItem>Aram Bagh</asp:ListItem>
<asp:ListItem>Baba Khrak Singh Marg</asp:ListItem>
<asp:ListItem>Bawana ( D. Police)</asp:ListItem>
<asp:ListItem>Bunglow Rd. Jawahar Nagar</asp:ListItem>
<asp:ListItem>Chandrawal ww</asp:ListItem>
<asp:ListItem>Chandrawal WW-I</asp:ListItem>
<asp:ListItem>Chandrawal WW-II</asp:ListItem>
<asp:ListItem>Coronation Pillar</asp:ListItem>
<asp:ListItem>Defence Colony</asp:ListItem>
<asp:ListItem>Dhaka Colony</asp:ListItem>
<asp:ListItem>DIET'S  Flat</asp:ListItem>
<asp:ListItem>Dwarka  (D. Police)</asp:ListItem>
<asp:ListItem>DWARKA WTP</asp:ListItem>
<asp:ListItem>GULABI BAGH</asp:ListItem>
<asp:ListItem>Haider Pur</asp:ListItem>
<asp:ListItem>HARI NAGAR</asp:ListItem>
<asp:ListItem>Hasan Pur</asp:ListItem>
<asp:ListItem>Hindu Rao</asp:ListItem>
<asp:ListItem>Jal Vihar</asp:ListItem>
<asp:ListItem>Jamuna Bazar</asp:ListItem>
<asp:ListItem>Jhandewalan</asp:ListItem>
<asp:ListItem>Kalka Ji</asp:ListItem>
<asp:ListItem>Keshopur</asp:ListItem>
<asp:ListItem>Keshopur (Block-I)</asp:ListItem>
<asp:ListItem>Keshopur (Block-II )</asp:ListItem>
<asp:ListItem>Khanjhwala</asp:ListItem>
<asp:ListItem>Kilokri</asp:ListItem>
<asp:ListItem>Kilokri SDW</asp:ListItem>
<asp:ListItem>Kondli</asp:ListItem>
<asp:ListItem>Lawrance Road (DDA)</asp:ListItem>
<asp:ListItem>Lodhi Colony</asp:ListItem>
<asp:ListItem>Lodhi Road P/ Stn.</asp:ListItem>
<asp:ListItem>MCD Colony  Azad Pur</asp:ListItem>
<asp:ListItem>Mehroli Tank</asp:ListItem>
<asp:ListItem>Minto Road</asp:ListItem>
<asp:ListItem>Model Town</asp:ListItem>
<asp:ListItem>Najaf Garh Nalla</asp:ListItem>
<asp:ListItem>Nehru Vihar (Naj Gar Nala)</asp:ListItem>
<asp:ListItem>Nigam Bodh P/ Stn.</asp:ListItem>
<asp:ListItem>Nigam Bodh P/Stn.</asp:ListItem>
<asp:ListItem>NSTP Coronation Pillar</asp:ListItem>
<asp:ListItem>Okhla SDW</asp:ListItem>
<asp:ListItem>Okhla Water Works-II</asp:ListItem>
<asp:ListItem>Okhla WW</asp:ListItem>
<asp:ListItem>Pahari Dhiraj P/Stn.</asp:ListItem>
<asp:ListItem>Pahari Imli</asp:ListItem>
<asp:ListItem>Palam Reservior</asp:ListItem>
<asp:ListItem>Patel Road P/Stn. Varun Vihar</asp:ListItem>
<asp:ListItem>Pusha Institute</asp:ListItem>
<asp:ListItem>Ramjas Tank Bapa Ngr.</asp:ListItem>
<asp:ListItem>Ring Road P/Stn</asp:ListItem>
<asp:ListItem>Ring Road P/Stn.</asp:ListItem>
<asp:ListItem>Rithala</asp:ListItem>
<asp:ListItem>S.D Old Qtrs. Kilokri</asp:ListItem>
<asp:ListItem>SD Kilokri</asp:ListItem>
<asp:ListItem>SDW Okhla</asp:ListItem>
<asp:ListItem>SDW- Okhla -IV </asp:ListItem>
<asp:ListItem>Seelampur</asp:ListItem>
<asp:ListItem>Seelampur (mcd colony)</asp:ListItem>
<asp:ListItem>Shadi Pur</asp:ListItem>
<asp:ListItem>Varun Niketan (Haider pur)</asp:ListItem>
<asp:ListItem>Varun Vihar</asp:ListItem>
<asp:ListItem>Wazirabad</asp:ListItem>
<asp:ListItem>Wazirabad WW</asp:ListItem>
<asp:ListItem>WSTP Kesho Pur</asp:ListItem>
<asp:ListItem>Wzd WW</asp:ListItem>
<asp:ListItem>Zakhira Indl. Area</asp:ListItem>


                    </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The field is required." />
                </div>
            </div>
        </div>
               <div class="form-group">
                   <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">2nd Location Preference</asp:Label>
                   </div>
            <div class="col-md-10">
                 <asp:DropDownList ID="DropDownList6" runat="server">
                        <asp:ListItem Selected="True">Chandrawal</asp:ListItem>
                        <asp:ListItem>Haiderpur</asp:ListItem>
                        <asp:ListItem>Aram Garh</asp:ListItem>
                        <asp:ListItem>Aram Bagh</asp:ListItem>
<asp:ListItem>Baba Khrak Singh Marg</asp:ListItem>
<asp:ListItem>Bawana ( D. Police)</asp:ListItem>
<asp:ListItem>Bunglow Rd. Jawahar Nagar</asp:ListItem>
<asp:ListItem>Chandrawal ww</asp:ListItem>
<asp:ListItem>Chandrawal WW-I</asp:ListItem>
<asp:ListItem>Chandrawal WW-II</asp:ListItem>
<asp:ListItem>Coronation Pillar</asp:ListItem>
<asp:ListItem>Defence Colony</asp:ListItem>
<asp:ListItem>Dhaka Colony</asp:ListItem>
<asp:ListItem>DIET'S  Flat</asp:ListItem>
<asp:ListItem>Dwarka  (D. Police)</asp:ListItem>
<asp:ListItem>DWARKA WTP</asp:ListItem>
<asp:ListItem>GULABI BAGH</asp:ListItem>
<asp:ListItem>Haider Pur</asp:ListItem>
<asp:ListItem>HARI NAGAR</asp:ListItem>
<asp:ListItem>Hasan Pur</asp:ListItem>
<asp:ListItem>Hindu Rao</asp:ListItem>
<asp:ListItem>Jal Vihar</asp:ListItem>
<asp:ListItem>Jamuna Bazar</asp:ListItem>
<asp:ListItem>Jhandewalan</asp:ListItem>
<asp:ListItem>Kalka Ji</asp:ListItem>
<asp:ListItem>Keshopur</asp:ListItem>
<asp:ListItem>Keshopur (Block-I)</asp:ListItem>
<asp:ListItem>Keshopur (Block-II )</asp:ListItem>
<asp:ListItem>Khanjhwala</asp:ListItem>
<asp:ListItem>Kilokri</asp:ListItem>
<asp:ListItem>Kilokri SDW</asp:ListItem>
<asp:ListItem>Kondli</asp:ListItem>
<asp:ListItem>Lawrance Road (DDA)</asp:ListItem>
<asp:ListItem>Lodhi Colony</asp:ListItem>
<asp:ListItem>Lodhi Road P/ Stn.</asp:ListItem>
<asp:ListItem>MCD Colony  Azad Pur</asp:ListItem>
<asp:ListItem>Mehroli Tank</asp:ListItem>
<asp:ListItem>Minto Road</asp:ListItem>
<asp:ListItem>Model Town</asp:ListItem>
<asp:ListItem>Najaf Garh Nalla</asp:ListItem>
<asp:ListItem>Nehru Vihar (Naj Gar Nala)</asp:ListItem>
<asp:ListItem>Nigam Bodh P/ Stn.</asp:ListItem>
<asp:ListItem>Nigam Bodh P/Stn.</asp:ListItem>
<asp:ListItem>NSTP Coronation Pillar</asp:ListItem>
<asp:ListItem>Okhla SDW</asp:ListItem>
<asp:ListItem>Okhla Water Works-II</asp:ListItem>
<asp:ListItem>Okhla WW</asp:ListItem>
<asp:ListItem>Pahari Dhiraj P/Stn.</asp:ListItem>
<asp:ListItem>Pahari Imli</asp:ListItem>
<asp:ListItem>Palam Reservior</asp:ListItem>
<asp:ListItem>Patel Road P/Stn. Varun Vihar</asp:ListItem>
<asp:ListItem>Pusha Institute</asp:ListItem>
<asp:ListItem>Ramjas Tank Bapa Ngr.</asp:ListItem>
<asp:ListItem>Ring Road P/Stn</asp:ListItem>
<asp:ListItem>Ring Road P/Stn.</asp:ListItem>
<asp:ListItem>Rithala</asp:ListItem>
<asp:ListItem>S.D Old Qtrs. Kilokri</asp:ListItem>
<asp:ListItem>SD Kilokri</asp:ListItem>
<asp:ListItem>SDW Okhla</asp:ListItem>
<asp:ListItem>SDW- Okhla -IV </asp:ListItem>
<asp:ListItem>Seelampur</asp:ListItem>
<asp:ListItem>Seelampur (mcd colony)</asp:ListItem>
<asp:ListItem>Shadi Pur</asp:ListItem>
<asp:ListItem>Varun Niketan (Haider pur)</asp:ListItem>
<asp:ListItem>Varun Vihar</asp:ListItem>
<asp:ListItem>Wazirabad</asp:ListItem>
<asp:ListItem>Wazirabad WW</asp:ListItem>
<asp:ListItem>WSTP Kesho Pur</asp:ListItem>
<asp:ListItem>Wzd WW</asp:ListItem>
<asp:ListItem>Zakhira Indl. Area</asp:ListItem>


                    </asp:DropDownList>
                <div style="text-align: justify">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The field is required." />
                </div>
            </div>
        </div>
               <div class="form-group">
                   <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px" style="left: 0px; top: 19px">3rd Location Preference</asp:Label>
                   </div>
            <div class="col-md-10">
                <asp:DropDownList ID="DropDownList7" runat="server">
                        <asp:ListItem Selected="True">Chandrawal</asp:ListItem>
                        <asp:ListItem>Haiderpur</asp:ListItem>
                        <asp:ListItem>Aram Garh</asp:ListItem>
                        <asp:ListItem>Aram Bagh</asp:ListItem>
<asp:ListItem>Baba Khrak Singh Marg</asp:ListItem>
<asp:ListItem>Bawana ( D. Police)</asp:ListItem>
<asp:ListItem>Bunglow Rd. Jawahar Nagar</asp:ListItem>
<asp:ListItem>Chandrawal ww</asp:ListItem>
<asp:ListItem>Chandrawal WW-I</asp:ListItem>
<asp:ListItem>Chandrawal WW-II</asp:ListItem>
<asp:ListItem>Coronation Pillar</asp:ListItem>
<asp:ListItem>Defence Colony</asp:ListItem>
<asp:ListItem>Dhaka Colony</asp:ListItem>
<asp:ListItem>DIET'S  Flat</asp:ListItem>
<asp:ListItem>Dwarka  (D. Police)</asp:ListItem>
<asp:ListItem>DWARKA WTP</asp:ListItem>
<asp:ListItem>GULABI BAGH</asp:ListItem>
<asp:ListItem>Haider Pur</asp:ListItem>
<asp:ListItem>HARI NAGAR</asp:ListItem>
<asp:ListItem>Hasan Pur</asp:ListItem>
<asp:ListItem>Hindu Rao</asp:ListItem>
<asp:ListItem>Jal Vihar</asp:ListItem>
<asp:ListItem>Jamuna Bazar</asp:ListItem>
<asp:ListItem>Jhandewalan</asp:ListItem>
<asp:ListItem>Kalka Ji</asp:ListItem>
<asp:ListItem>Keshopur</asp:ListItem>
<asp:ListItem>Keshopur (Block-I)</asp:ListItem>
<asp:ListItem>Keshopur (Block-II )</asp:ListItem>
<asp:ListItem>Khanjhwala</asp:ListItem>
<asp:ListItem>Kilokri</asp:ListItem>
<asp:ListItem>Kilokri SDW</asp:ListItem>
<asp:ListItem>Kondli</asp:ListItem>
<asp:ListItem>Lawrance Road (DDA)</asp:ListItem>
<asp:ListItem>Lodhi Colony</asp:ListItem>
<asp:ListItem>Lodhi Road P/ Stn.</asp:ListItem>
<asp:ListItem>MCD Colony  Azad Pur</asp:ListItem>
<asp:ListItem>Mehroli Tank</asp:ListItem>
<asp:ListItem>Minto Road</asp:ListItem>
<asp:ListItem>Model Town</asp:ListItem>
<asp:ListItem>Najaf Garh Nalla</asp:ListItem>
<asp:ListItem>Nehru Vihar (Naj Gar Nala)</asp:ListItem>
<asp:ListItem>Nigam Bodh P/ Stn.</asp:ListItem>
<asp:ListItem>Nigam Bodh P/Stn.</asp:ListItem>
<asp:ListItem>NSTP Coronation Pillar</asp:ListItem>
<asp:ListItem>Okhla SDW</asp:ListItem>
<asp:ListItem>Okhla Water Works-II</asp:ListItem>
<asp:ListItem>Okhla WW</asp:ListItem>
<asp:ListItem>Pahari Dhiraj P/Stn.</asp:ListItem>
<asp:ListItem>Pahari Imli</asp:ListItem>
<asp:ListItem>Palam Reservior</asp:ListItem>
<asp:ListItem>Patel Road P/Stn. Varun Vihar</asp:ListItem>
<asp:ListItem>Pusha Institute</asp:ListItem>
<asp:ListItem>Ramjas Tank Bapa Ngr.</asp:ListItem>
<asp:ListItem>Ring Road P/Stn</asp:ListItem>
<asp:ListItem>Ring Road P/Stn.</asp:ListItem>
<asp:ListItem>Rithala</asp:ListItem>
<asp:ListItem>S.D Old Qtrs. Kilokri</asp:ListItem>
<asp:ListItem>SD Kilokri</asp:ListItem>
<asp:ListItem>SDW Okhla</asp:ListItem>
<asp:ListItem>SDW- Okhla -IV </asp:ListItem>
<asp:ListItem>Seelampur</asp:ListItem>
<asp:ListItem>Seelampur (mcd colony)</asp:ListItem>
<asp:ListItem>Shadi Pur</asp:ListItem>
<asp:ListItem>Varun Niketan (Haider pur)</asp:ListItem>
<asp:ListItem>Varun Vihar</asp:ListItem>
<asp:ListItem>Wazirabad</asp:ListItem>
<asp:ListItem>Wazirabad WW</asp:ListItem>
<asp:ListItem>WSTP Kesho Pur</asp:ListItem>
<asp:ListItem>Wzd WW</asp:ListItem>
<asp:ListItem>Zakhira Indl. Area</asp:ListItem>


                    </asp:DropDownList>
                <div style="text-align: justify">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The field is required." />
                </div>
            </div>
        </div>
               <div class="form-group">
                   <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">Allot Anywhere?</asp:Label>
                   </div>
            <div class="col-md-10">
                <div style="text-align: justify">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The field is required." />
                    <br />
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem Selected="True">NO</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div> 
                   </div>

                   </div> 
                    <div class="form-group">
                   <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderStyle="Solid" BorderWidth="1px">SEX</asp:Label>
                   </div>
            <div class="col-md-10">
                <div style="text-align: justify">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" 
                    CssClass="text-danger" ErrorMessage="The field is required." />
                    <br />
                    <asp:DropDownList ID="DropDownList8" runat="server">
                        <asp:ListItem>MALE</asp:ListItem>
                        <asp:ListItem Selected="True">FEMALE</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>  
                        </div> 
                   <div class="form-group">
                       <div style="text-align: justify">
                       <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">Category Applied</asp:Label>
                           </div>
            <div class="col-md-10">
                <div style="text-align: justify">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" 
                    CssClass="text-danger" ErrorMessage="The field is required." />
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>General</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>ST</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>  
                       </div>
                       <div class="form-group">
                <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">Type Applied For</asp:Label>
                   </div>
            <div class="col-md-10">
                <div style="text-align: left" class="text-right">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The  field is required." />
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <br />
            </div> 
                           </div> 
    
    <div class="form-group">
                    <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">Date of Joining DJB( Enter in YYYY-MM-DD format eg.2012-03-29)</asp:Label>
                   </div>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox9" CssClass="form-control"  />
                <div style="text-align: left" class="text-right">
                       <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox9" ValidationGroup="Submit"
                    CssClass="text-danger" ErrorMessage="The field is required." />
 <asp:RegularExpressionValidator runat="server" ControlToValidate="TextBox9" ValidationGroup="Submit" ValidationExpression="(((19|20)\d\d)\-(0[1-9]|1[0-2])\-((0|1)[0-9]|2[0-9]|3[0-1]))$"
    CssClass="text-danger" ErrorMessage="Invalid date format."></asp:RegularExpressionValidator>
                </div>
                <br />
            </div>  </div>

        
        
        <div class="form-group">
                 <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">Date of application( Enter in YYYY-MM-DD format eg.2012-03-29)</asp:Label>
                   </div>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox10" CssClass="form-control"   />
                <div style="text-align: left" class="text-right">
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox10" ValidationGroup="Submit"
                    CssClass="text-danger" ErrorMessage="The field is required." />
 <asp:RegularExpressionValidator runat="server" ControlToValidate="TextBox10" ValidationGroup="Submit" ValidationExpression="(((19|20)\d\d)\-(0[1-9]|1[0-2])\-((0|1)[0-9]|2[0-9]|3[0-1]))$"
    CssClass="text-danger" ErrorMessage="Invalid date format."></asp:RegularExpressionValidator>
                    <asp:RangeValidator ID="Rvalid" runat="server"
ControlToValidate="TextBox10" ValidationGroup="Submit" ErrorMessage="Sorry,You are allowed only one week delay in feeding application!"></asp:RangeValidator>
                </div>
                <br />
            </div>  <div class="form-group">
                    <div style="text-align: justify">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">Date of Birth( Enter in YYYY-MM-DD format eg.2012-03-29)</asp:Label>
                   </div>
                <br />
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox11" CssClass="form-control" />
                <div style="text-align: left" class="text-right">
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox11" ValidationGroup="Submit"
                    CssClass="text-danger" ErrorMessage="The field is required." />
  <asp:RegularExpressionValidator runat="server" ControlToValidate="TextBox11" ValidationGroup="Submit" ValidationExpression="(((19|20)\d\d)\-(0[1-9]|1[0-2])\-((0|1)[0-9]|2[0-9]|3[0-1]))$"
    CssClass="text-danger" ErrorMessage="Invalid date format."></asp:RegularExpressionValidator>
                </div>
            </div> 
                 
                <br /><br />
                     <br />
                     <asp:Label ID="Label1" runat="server" Text=" Please ensure all dates are accurate before proceeding"></asp:Label>
                     <br />
                <br />
                
                <div class="form-group">
                                           <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" BorderWidth="1px">Requesting Change yes/NO</asp:Label>
            <div class="col-md-10">
                <div style="text-align: left" class="text-right">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" 
                    CssClass="text-danger" ErrorMessage="The field is required." />
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem Selected="True">NO</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>
        </div>  
                  
        </div>
    
    </div>
   
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

   
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" ValidationGroup="Submit" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
 
 

</asp:Content>

