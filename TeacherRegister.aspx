<%@ Page Title="" Language="C#" MasterPageFile="~/Register.master" AutoEventWireup="true" CodeFile="TeacherRegister.aspx.cs" Inherits="TeacherRegister" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
        .style2
        {
            height: 25px;
        }
    </style>
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
                    O<small>ther Information</small>
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
                    <asp:Label ID="Label24" runat="server" Text="Client"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" 
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="mlabel" runat="server" Text="Middle Name"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="mtextbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="mtextbox" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="**Enter a Valid Contact Number" ValidationGroup="PI" ControlToValidate="TextBox3" 
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
                        ErrorMessage="**Enter a Valid Email ID"  ValidationGroup="PI" ControlToValidate="TextBox4" 
                        ForeColor="Red" 
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
                   <asp:Label ID="Label8" runat="server" Text="GraduationBranch"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList8" runat="server">
                        <asp:ListItem>CS</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>EXTC</asp:ListItem>
                        <asp:ListItem>MECH</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label9" runat="server" Text="Graduation Year"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList9" runat="server">
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem Value="2007">2007</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
                <tr>
                <td>
                <asp:Label ID="Label10" runat="server" Text="Graduation College"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label11" runat="server" Text="Post Graduation Subject"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox9" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label13" runat="server" Text="Post Graduation Year"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList10" runat="server">
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem Value="2007">2007</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label14" runat="server" Text="Post Graduation College"></asp:Label>
                </td>
                <td>
                    
                    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox17" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label15" runat="server" Text="Area of Interest"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox11" ForeColor="Red"></asp:RequiredFieldValidator>
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
                   <asp:Label ID="Label16" runat="server" Text="Experiance"></asp:Label>
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
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="AbsMiddle" 
                        ImageUrl="~/images/calendar2.png" />
                    <cc1:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd/MM/yyyy" 
                        PopupButtonID="ImageButton1" TargetControlID="TextBox14">
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
                            <asp:ControlParameter ControlID="DropDownList2" Name="Cid" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                </tr>
                <tr>
                <td class="style2">
                   <asp:Label ID="Label19" runat="server" Text="Marital Status"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList11" runat="server" 
                        onselectedindexchanged="DropDownList11_SelectedIndexChanged">
                        <asp:ListItem>Married</asp:ListItem>
                        <asp:ListItem>UnMarried</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label12" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>
                    State</td>
                <td>
                
                    <asp:DropDownList ID="DropDownList6" runat="server" 
                        DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                        SelectCommand="GetStateName" SelectCommandType="StoredProcedure">
                    </asp:SqlDataSource>
                
                </td>
                </tr>
                <tr>
                <td>
                    City</td>
                <td>
                
                    <asp:DropDownList ID="DropDownList7" runat="server" 
                        DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="Name" 
                        AutoPostBack="True" style="width: 88px">
                    </asp:DropDownList>
                
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                        SelectCommand="GetCityName" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList6" Name="SName" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                
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
                <td class="style1">
                   <asp:Label ID="Label20" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="style1">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox12" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label21" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox13" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
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
    		

     <center><asp:Button ID="Button1" runat="server" Text="Register Teacher" 
            CssClass="buttonFinish" onclick="Button1_Click" />
        </center>

    </div>

</asp:Content>

