<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Designation.aspx.cs" Inherits="Designation" %>

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
						Designation
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
							<h2 class="style3">Add New Designation</h2>
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Panel ID="Panel1" runat="server">
              <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="Name" 
                  DataValueField="Name" onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                  AutoPostBack="True">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                  SelectCommand="SELECT [Name] FROM [client] ORDER BY [ID]" onselecting="SqlDataSource3_Selecting"></asp:SqlDataSource>
                                    </asp:Panel>
                                    <br /><br />
									<div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Designation Name"></asp:TextBox> 
                                        
                                        
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
									</div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ValidationGroup="Desig" ErrorMessage="**DesignationName should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br /><br /><br />
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" 
                                        Text="Add Designation" ValidationGroup="Desig" onclick="Button1_Click1"></asp:Button>
						    
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
						    
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
						</div>
                </div>
                
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">designations</h2>
                            <form>
                            
								<div class="form-group" id="Div1">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                            
                            
							<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" 
                                ForeColor="Black" GridLines="Horizontal" Height="270px" Width="320px">
                               <Columns>
                      <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                          ReadOnly="True" />
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
                                ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                SelectCommand="SELECT [ID], [Name] FROM [Designations] WHERE ([ClientId] = @ClientId)" 
                  DeleteCommand="DELETE FROM [Designations] WHERE [ID] = @original_ID AND [Name] = @original_Name" 
                  InsertCommand="INSERT INTO [Designations] ([ID], [Name]) VALUES (@ID, @Name)" 
                  
                  UpdateCommand="UPDATE [Designations] SET [Name] = @Name WHERE [ID] = @original_ID AND [Name] = @original_Name" 
                  ConflictDetection="CompareAllValues" 
                  OldValuesParameterFormatString="original_{0}">
                  <DeleteParameters>
                      <asp:Parameter Name="original_ID" Type="Int32" />
                      <asp:Parameter Name="original_Name" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="ID" Type="Int32" />
                      <asp:Parameter Name="Name" Type="String" />
                  </InsertParameters>
                  <SelectParameters>
                      <asp:SessionParameter Name="ClientId" SessionField="Client" Type="Int32" />
                  </SelectParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="Name" Type="String" />
                      <asp:Parameter Name="original_ID" Type="Int32" />
                      <asp:Parameter Name="original_Name" Type="String" />
                  </UpdateParameters>
                  </asp:SqlDataSource>
                  </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
                                </form>
						</div>
            </div>
                </div>

            </div>

        </section>
</asp:Content>

