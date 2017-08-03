<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" %>

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
						Course
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
							<h2 class="style3">Add New Course</h2>
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Panel ID="Panel1" runat="server">
              <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="Name" 
                  DataValueField="Name" AutoPostBack="True" 
                  onselectedindexchanged="DropDownList2_SelectedIndexChanged" >
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                  SelectCommand="SELECT DISTINCT [Name] FROM [client]"></asp:SqlDataSource>
                                    </asp:Panel>
                                    <br /><br />
									<div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Course Name"></asp:TextBox>
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
									</div>
                                <br /><br /><br />
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Add Course" 
                                        onclick="Button1_Click"></asp:Button>
						    
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
						    
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
						</div>
                </div>
                
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">courses</h2>
                          
								<div class="form-group" id="Div1">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                            
                            
							<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" 
                                ForeColor="Black" GridLines="Horizontal" Height="270px" Width="320px" 
                                        AllowPaging="True">
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
                  DeleteCommand="DELETE FROM [Course] WHERE [ID] = @original_ID" 
                  InsertCommand="INSERT INTO [Course] ([ID], [Name]) VALUES (@ID, @Name)" 
                  OldValuesParameterFormatString="original_{0}" 
                  SelectCommand="SELECT [ID], [Name] FROM [Course] WHERE ([ClientId] = @ClientId)" 
                  UpdateCommand="UPDATE [Course] SET [Name] = @Name WHERE [ID] = @original_ID">
                  <DeleteParameters>
                      <asp:Parameter Name="original_ID" Type="Int32" />
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
                  </UpdateParameters></asp:SqlDataSource>
                  </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
                 </div>
            </div>
                </div>

            </div>

        </section>

</asp:Content>

