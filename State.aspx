<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="State.aspx.cs" Inherits="State" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" 
    Runat="Server" >
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
      <!-- ========== TITLE START ========== -->

		<div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						State
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
							<h2 class="style3">Add New State</h2>
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true" class="form-control" placeholder="State Name" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
           
                                        
                                        
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
									</div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
          ErrorMessage="**StateName should not be empty" ForeColor="Red" ValidationGroup="state"></asp:RequiredFieldValidator>
                                <br /><br /><br />

                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Add State" 
                                        onclick="Button1_Click"></asp:Button>
						    
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
						    
                            </ContentTemplate>
                                </asp:UpdatePanel>
                                </div>
						</div>
                </div>
                
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">states&nbsp;</h2>
                          
								<div class="form-group" id="Div1">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                            
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  DataSourceID="SqlDataSource1" AllowPaging="True" Width="279px" 
                  AllowSorting="True" DataKeyNames="ID" BackColor="White" 
                  BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                  ForeColor="Black" GridLines="Horizontal">
                  <Columns>
                      <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                          SortExpression="ID" />
                      <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  </Columns>
                  <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                  <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                  <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F7F7F7" />
                  <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                  <SortedDescendingCellStyle BackColor="#E5E5E5" />
                  <SortedDescendingHeaderStyle BackColor="#242121" />
              </asp:GridView>
            
                
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  SelectCommand="SELECT [Name], [ID] FROM [State] WHERE ([Name] &lt;&gt; @Name)"
                  DeleteCommand="DELETE FROM [State] WHERE [ID] = @ID" 
                  UpdateCommand="UPDATE [State] SET [Name] = @Name WHERE [ID] = @ID" 
                  InsertCommand="INSERT INTO [State] ([Name], [ID]) VALUES (@Name, @ID)">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="Name" Type="String" />
                      <asp:Parameter Name="ID" Type="Int32" />
                  </InsertParameters>
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="--Select State--" Name="Name" Type="String" />
                                </SelectParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="Name" Type="String" />
                      <asp:Parameter Name="ID" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
           
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
                 </div>
            </div>
                </div>

            </div>

        </section>

    
</asp:Content>

