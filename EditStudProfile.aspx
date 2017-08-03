<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="EditStudProfile.aspx.cs" Inherits="EditStudProfile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
   </cc1:ToolkitScriptManager>
            <div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Edit Student Profile
					</div>
				    <br />
				</div>
			</div>
		</div>

		<!-- ========== TITLE END ========== -->
        <section id="content">
			<div class="container">
            
				<div class="row">
                <div class="col-sm-6">
                    <div class="widget" data-scroll-reveal>
							<h2 class="style3">Edit Profile</h2>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                            
							<form>
								<div class="form-group" id="newsletter-name-group">
            
            <ul>
            <li>
             <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Edit Username</asp:LinkButton>
            </li>
            <li>
             <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Change Password</asp:LinkButton>
            </li>
            <li>
             <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Change Profile Picture</asp:LinkButton>
            </li>
            
            </ul>
   </div>
    </form>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                    </div>
                </div>
    
  
   
    
        <div class="col-sm-6">
            <div class="widget" data-scroll-reveal>
                <form>
				    <div class="form-group" id="Div1">
				
        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
        <ContentTemplate>
        
      <asp:Panel ID="Panel1" runat="server">
              <asp:Label ID="Label22" runat="server" Text="Current UserName"></asp:Label>
              <asp:TextBox ID="TextBox16" class="form-control" runat="server"></asp:TextBox>
              <asp:Label ID="Label23" runat="server" Text="New UserName"></asp:Label>
              <asp:TextBox ID="TextBox17" class="form-control" runat="server"></asp:TextBox>
          <asp:Button ID="Button7" runat="server" Text="Submit" onclick="Button7_Click" />
          <asp:Button ID="Button8" runat="server" Text="Cancel" />
      </asp:Panel>
      </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="Label20" runat="server" Text="Current Password"></asp:Label>
                    <asp:TextBox ID="TextBox10" class="form-control" runat="server"></asp:TextBox>
                    <asp:Label ID="Label21" runat="server" Text="New Password"></asp:Label>
                    <asp:TextBox ID="TextBox11" class="form-control" runat="server"></asp:TextBox>
                    <asp:Label ID="Label25" runat="server" Text="Retype Password"></asp:Label>
                    <asp:TextBox ID="TextBox12" class="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="Button9" runat="server" Text="Submit" onclick="Button9_Click" />
                <asp:Button ID="Button10" runat="server" Text="Cancel" />
            </asp:Panel>
        </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        
      <asp:Panel ID="Panel3" runat="server">
          <asp:Label ID="Label1" runat="server" class="form-control" Text="Current UserName"></asp:Label>
          
          <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
          
          <asp:Button ID="Button1" runat="server" Text="Submit" />
          <asp:Button ID="Button2" runat="server" Text="Cancel" />
      </asp:Panel>
      </ContentTemplate>
        </asp:UpdatePanel>
        
                    </div>
                </form>
            </div>
        </div>
  </div>
 </div>
</asp:Content>

