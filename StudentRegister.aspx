<%@ Page Title="" Language="C#" MasterPageFile="~/Register.master" AutoEventWireup="true" CodeFile="StudentRegister.aspx.cs" Inherits="StudentRegister" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </cc1:ToolkitScriptManager>
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
                   <small>College Information</small>
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
                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel1" runat="server">
                        
                            <tr>
                <td>
                    <asp:Label ID="Label25" runat="server" Text="Client Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="Name" 
                        onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                        SelectCommand="SELECT [Name] FROM [client] ORDER BY [ID]"></asp:SqlDataSource>
                </td>
                </tr>
                        </asp:Panel>
                    </ContentTemplate>
                    </asp:UpdatePanel>
                <tr>
                <td>
                   <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ControlToValidate="TextBox1" ValidationGroup="PI" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ControlToValidate="TextBox2" ValidationGroup="PI" ForeColor="Red"></asp:RequiredFieldValidator>
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
                <td class="style1">
                   <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label>
                </td>
                <td class="style1">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="**Enter a Valid Contact Number" ControlToValidate="TextBox3" ValidationGroup="PI" 
                        ForeColor ="Red" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label5" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="**Enter a Valid Email ID" ControlToValidate="TextBox4" ValidationGroup="PI"
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
                   <asp:Label ID="Label8" runat="server" Text="Mother's Name"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ControlToValidate="TextBox5" ValidationGroup="II" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label9" runat="server" Text="Father's/Gaurdian's Name"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ControlToValidate="TextBox6" ValidationGroup="II" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>
                <asp:Label ID="Label10" runat="server" Text="Father's/Gaurdian's Occupation"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ControlToValidate="TextBox7" ValidationGroup="II" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label11" runat="server" Text="Father's/Gaurdian's Contact Number"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ControlToValidate="TextBox9" ValidationGroup="II" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label12" runat="server" Text="Address of Correspondance"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ControlToValidate="TextBox8" ValidationGroup="II" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label13" runat="server" Text="Permanent Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ControlToValidate="TextBox10" ValidationGroup="II" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                    <ContentTemplate>
                <td>
                    State</td>
                <td>
                    
                    <asp:DropDownList ID="DropDownList6" runat="server" 
                        DataSourceID="SqlDataSource5" DataTextField="Name" DataValueField="Name" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                        SelectCommand="GetStateName" SelectCommandType="StoredProcedure">
                    </asp:SqlDataSource>
                    
                
                </td>
                </ContentTemplate>
                    </asp:UpdatePanel>
                </tr>
                <tr>
                <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                    <ContentTemplate>
                <td>
                    City</td>
                <td>
                    
                    
                    <asp:DropDownList ID="DropDownList7" runat="server" 
                        DataSourceID="SqlDataSource6" DataTextField="Name" DataValueField="Name" 
                        AutoPostBack="True" style="width: 88px">
                    </asp:DropDownList>
                
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                        SelectCommand="GetCityName" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList6" Name="SName" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                </td>
                </ContentTemplate>
                    </asp:UpdatePanel>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label14" runat="server" Text="Caste"></asp:Label>
                </td>
                <td>
                    
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Caste" Text="OBC" />
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Caste" Text="SC" />
                    <asp:RadioButton ID="RadioButton5" runat="server" GroupName="Caste" Text="ST" />
                    <asp:RadioButton ID="RadioButton6" runat="server" GroupName="Caste" Text="NT" />
                    <asp:RadioButton ID="RadioButton7" runat="server" GroupName="Caste" Text="General" />
                    
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label15" runat="server" Text="Birth Place"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" 
                        ontextchanged="TextBox11_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                         ErrorMessage="**This Feild Should Not Be Empty" ControlToValidate="TextBox11"  ValidationGroup="II" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                </table>
                </ContentTemplate>
                  </asp:UpdatePanel>	
            
        </div>                      
  			<div id="step-3">
            <h2 class="StepTitle">College Information</h2>
                  <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                  <ContentTemplate>
                  
            <table>
                <tr>
                <td>
                   <asp:Label ID="Label24" runat="server" Text="Course"></asp:Label>
                </td>
                <td>
                
                    <asp:DropDownList ID="DropDownList5" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                        SelectCommand="SELECT [Name] FROM [Course]">
                    </asp:SqlDataSource>
                
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label16" runat="server" Text="Branch"></asp:Label>
                </td>
                <td>
                
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
                        AutoPostBack="True" style="width: 88px" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                        SelectCommand="SELECT [Name] FROM [Branch]">
                    </asp:SqlDataSource>
                
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label17" runat="server" Text="Year"></asp:Label>
                </td>
                <td>
                
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name">
                    </asp:DropDownList>
                
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                        SelectCommand="SELECT [Name] FROM [StudyingYear]">
                    </asp:SqlDataSource>
                
                </td>
                </tr>
                <tr>
                <td>
                <asp:Label ID="Label18" runat="server" Text="Year of Admit"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList12" runat="server">
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
                <tr>
                <td>
                   <asp:Label ID="Label19" runat="server" Text="Roll Number"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ControlToValidate="TextBox15" ValidationGroup="CI" ForeColor="Red"></asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox12" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td>                
                    <asp:Label ID="Label21" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="TextBox13" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
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
                        ErrorMessage="**Password Not Match" ValidationGroup="PI" ControlToValidate="TextBox16" ControlToCompare="TextBox13" ForeColor="Red"></asp:CompareValidator>
       
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
    		
        <center><asp:Button ID="Button1" runat="server" Text="Register Student" 
            CssClass="buttonFinish" onclick="Button1_Click" />
        </center>

    </div>

</asp:Content>

