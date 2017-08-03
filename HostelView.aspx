<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="HostelView.aspx.cs" Inherits="HostelView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <!-- ========== TITLE START ========== -->

		<div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Hostel View
					</div>
				</div>
			</div>
		</div>

		<!-- ========== TITLE END ========== -->

        <section id="content">
		
        	<div class="container">
		
        		<div class="row">
                <div class="col-sm-6">
                    <div class="widget" data-scroll-reveal>
							
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    
               &nbsp;<asp:Label ID="Label1" runat="server" Text="Fees Paid" ></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                        <br />  <br />
                                        <asp:Label ID="Label3" runat="server" Text="Total Fees"
                             ></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                         
                                      <br />  <br />
                                       <asp:Panel runat="server" ID="panel2">
                                        <asp:Label ID="Label5" runat="server" Text="Local Gaurdian"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label6" runat="server" Text="Yes"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label7" runat="server" Text="Name"></asp:Label>

                                      
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                      
                                        <asp:Label ID="Label8" runat="server"></asp:Label>
                                        <br /><br />
                                        <asp:Label ID="Label9" runat="server" Text="Contact No." 
                                         ></asp:Label>
                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label10" runat="server"></asp:Label>
                                           <br />
                                           <br />
                                        <asp:Label ID="Label11" runat="server" Text="Occupation"></asp:Label>

                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label12" runat="server"></asp:Label>
                                        <br /><br />
                                        <asp:Label ID="Label13" runat="server" Text="EmailID"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label14" runat="server"></asp:Label>
                                        <br /><br />
                                        <asp:Label ID="Label15" runat="server" Text="Address"></asp:Label>

                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label16" runat="server"></asp:Label>
                                        </asp:Panel>
                                        <br />
                                        <br />
                   <asp:Panel ID="Panel1" runat="server">
    
    
    <asp:Label ID="Label17" runat="server" Text="Vehical Owned"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Label ID="Label18" runat="server" ></asp:Label><br /><br />


    <asp:Label ID="Label19" runat="server" Text="Vehical No."></asp:Label>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label20" runat="server" ></asp:Label>
    </asp:Panel>

                               <br /><br /><br />
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Show View"></asp:Button>     
                               <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
						    
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
						</div>
                </div>
                
                </div>

            </div>

        </section>

</asp:Content>

