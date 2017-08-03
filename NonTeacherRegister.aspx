<%@ Page Title="" Language="C#" MasterPageFile="~/Register.master" AutoEventWireup="true" CodeFile="NonTeacherRegister.aspx.cs" Inherits="NonTeacherRegister" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div> 

    <table align="center" border="0" cellpadding="0" cellspacing="0">
<tr><td> 
<!-- Smart Wizard -->
  		<div id="wizard" class="swMain">
  			<ul>
  				<li><a href="#step-1">
                <span class="stepNumber">1</span>
                <span class="stepDesc">
                   Step 1<br />
                   <small>Personal Information</small>                </span>
            </a></li>
  				<li><a href="#step-2">
                <span class="stepNumber">2</span>
                <span class="stepDesc">
                   Step 2<br />
                   <small>Important Information</small>
                </span>
            </a></li>
  				<li><a href="#step-3">
                <span class="stepNumber">3</span>
                <span class="stepDesc">
                   Step 3<br />
                    Other<small> Information</small>
                </span>                   
             </a></li>
  				<li><a href="#step-4">
                <span class="stepNumber">4</span>
                <span class="stepDesc">
                   Step 4<br />
                   <small>Social Profile</small>
                </span>                   
            </a></li>
  			</ul>
  			<div id="step-1">	
            <h2 class="StepTitle">Personal Information</h2>
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
                  
                <table>
                <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Client"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                        SelectCommand="SELECT [Name] FROM [client] ORDER BY [ID]"></asp:SqlDataSource>
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" 
                        ErrorMessage="**This field should not be empty"  ValidationGroup="PI" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label24" runat="server" Text="Middle Name"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox5" runat="server" 
                        ErrorMessage="**This field should not be empty" ValidationGroup="PI" ForeColor="Red"></asp:RequiredFieldValidator>  </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox2" runat="server" 
                        ErrorMessage="**This field should not be empty" ValidationGroup="PI" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" 
                        Text="Male" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" 
                        Text="Female" />
                
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="**Enter a Valid Contact Number" ControlToValidate="TextBox3" ValidationGroup="PI"
                        ForeColor ="Red" ValidationExpression="^\d{10}$"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label5" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="**Enter a Valid Email ID" ControlToValidate="TextBox4" 
                        ForeColor="Red" ValidationGroup="PI"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label6" runat="server" Text="Blood Group"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label7" runat="server" Text="Date of Birth"></asp:Label>
                </td>
                <td>
                    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </cc1:ToolkitScriptManager>
                    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="imgPopup" runat="server" ImageAlign="AbsMiddle" 
                        ImageUrl="~/images/calendar2.png" />
                    <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
                        PopupButtonID="imgPopup" TargetControlID="TextBox18">
                    </cc1:CalendarExtender>
                </td>
                </tr>
                </table> 
                </ContentTemplate>  
                </asp:UpdatePanel>   			
        </div>
  			<div id="step-2">
            <h2 class="StepTitle">Important Information</h2>
                  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                  <ContentTemplate>
                  
            <table>
                <tr>
                <td>
                   <asp:Label ID="Label8" runat="server" Text="Qualification"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>SSC</asp:ListItem>
                        <asp:ListItem>HSC</asp:ListItem>
                        <asp:ListItem>DIPLOMA</asp:ListItem>
                        <asp:ListItem>UG</asp:ListItem>
                        <asp:ListItem>PG</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label9" runat="server" Text="College Name"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label12" runat="server" Text="Address of Correspondance"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label13" runat="server" Text="Permanent Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                        Text="Same As Above" oncheckedchanged="CheckBox1_CheckedChanged" />
                
                </td>
                </tr>
                </table>	
            </ContentTemplate>
                  </asp:UpdatePanel>
        </div>                      
  			<div id="step-3">
            <h2 class="StepTitle">Other Information</h2>
                  <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                  <ContentTemplate>
                  
            <table>
                <tr>
                <td>
                   <asp:Label ID="Label16" runat="server" Text="Experience"></asp:Label>
                </td>
                <td>
                
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                         DataTextField="Experience" 
                        DataValueField="Experience">
                        <asp:ListItem>Fresher</asp:ListItem>
                        <asp:ListItem>Upto 5 yrs</asp:ListItem>
                        <asp:ListItem>above 5 yrs</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label17" runat="server" Text="Date of Joining"></asp:Label>
                </td>
                <td>
                
                    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="AbsMiddle" 
                        ImageUrl="~/images/calendar2.png" />
                    <cc1:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd/MM/yyyy" 
                        PopupButtonID="ImageButton1" TargetControlID="TextBox19">
                    </cc1:CalendarExtender>
                
                </td>
                </tr>
                <tr>
                <td>
                <asp:Label ID="Label18" runat="server" Text="Designation"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                        SelectCommand="GetDesigName" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                         <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label19" runat="server" Text="Marital Status"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList11" runat="server" 
                       >
                        <asp:ListItem>Married</asp:ListItem>
                        <asp:ListItem>UnMarried</asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
                
                </table>
                </ContentTemplate>
                  </asp:UpdatePanel>
        </div>
  			<div id="step-4">
            <h2 class="StepTitle">Social Profile</h2>
                  <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                  <ContentTemplate>
                  	
            <table>
                <tr>
                <td>
                   <asp:Label ID="Label20" runat="server" Text="Username"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox12" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label21" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox13" runat="server"  TextMode="Password"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox13" ForeColor="Red"></asp:RequiredFieldValidator>
                   
                </td>
                </tr>
                <tr>
                <td>
                <asp:Label ID="Label22" runat="server" Text="Retype Passwod"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox16" runat="server" TextMode="Password"></asp:TextBox>  
                      
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="**Password Not Match" ValidationGroup="PI" ControlToCompare="TextBox13" ControlToValidate="TextBox16" ForeColor="Red"></asp:CompareValidator>
                      
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label23" runat="server" Text="Photograph"></asp:Label>
                </td>
                <td>
                   
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                   
                </td>
                </tr>
                
                </table>
                </ContentTemplate>
                  </asp:UpdatePanel>
        </div>
  		</div>
<!-- End SmartWizard Content -->  		
 		
</td></tr>
</table>
    		
<center>
    <asp:Button ID="Button1" runat="server" CausesValidation="true" Text="Register Faculty" 
        onclick="Button1_Click" />
</center>
    </div>

</asp:Content>

