<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Branch.aspx.cs" Inherits="Branch" %>

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
						Branch
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
							<h2 class="style3">Add New Branch</h2>
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Panel ID="Panel1" runat="server">
              <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name" 
                                            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
              </asp:DropDownList>
              </asp:Panel>
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                  SelectCommand="SELECT DISTINCT [Name] FROM [client]"></asp:SqlDataSource>
                                    
                                    <br /><br />

                                    
                                    <asp:DropDownList ID="DropDownList1" class="form-control" placeholder="State" 
                                        runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" 
                                        DataValueField="Name" AutoPostBack="True" OnDataBound="DropDownList1_SelectedIndexChanged" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:SessionParameter DefaultValue="2" Name="Cid" SessionField="Client" 
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                        <br />
                                        <br />
								
									<div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Branch Name"></asp:TextBox>
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
									</div>
                                <br /><br /><br />
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Add Branch" 
                                        onclick="Button1_Click"></asp:Button>
						    
                                  
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						    
                                  
                                    <asp:Label ID="Label1" runat="server"  Text="Label"></asp:Label>
						    
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
						</div>
                </div>
                
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Branch available</h2>
                            <form>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                            	<div class="form-group" id="Div1">
                            
							<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" 
                                ForeColor="Black" GridLines="Horizontal" Height="270px" Width="320px" 
                                        AllowPaging="True">
                                <Columns>
                                    <asp:BoundField HeaderText="ID" DataField="ID" ReadOnly="True" 
                                        SortExpression="ID" />
                                    <asp:TemplateField HeaderText="Branch Name" SortExpression="Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
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
                      OldValuesParameterFormatString="original_{0}" 
                      SelectCommand="SELECT [ID], [Name] FROM [Branch] WHERE [CourseID]=(SELECT [ID] FROM [Course] WHERE [Name]=@CName AND [ClientId]=@Client) AND [ClientId]=@Client" 
                      DeleteCommand="DELETE FROM [Branch] WHERE [ID] = @original_ID AND ([Name] = @original_Name)" 
                      InsertCommand="INSERT INTO [Branch] ([ID], [Name]) VALUES (@ID, @Name)" 
                      UpdateCommand="UPDATE [Branch] SET [Name] = @Name WHERE [ID] = @original_ID AND ([Name] = @original_Name)">
                      <DeleteParameters>
                          <asp:Parameter Name="original_ID" Type="Int32" />
                          <asp:Parameter Name="original_Name" Type="String" />
                      </DeleteParameters>
                      <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                          PropertyName="SelectedValue" Type="String" />
                      <asp:SessionParameter Name="Client" SessionField="Client" Type="String" />
                  </SelectParameters>
                      <InsertParameters>
                          <asp:Parameter Name="ID" Type="Int32" />
                          <asp:Parameter Name="Name" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="Name" Type="String" />
                          <asp:Parameter Name="original_ID" Type="Int32" />
                          <asp:Parameter Name="original_Name" Type="String" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
                                </div>
                            </ContentTemplate>
                            </asp:UpdatePanel>
							
                                </form>
						</div>
            </div>
                </div>

            </div>

        </section>

</asp:Content>

