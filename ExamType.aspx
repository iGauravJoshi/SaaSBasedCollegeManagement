<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ExamType.aspx.cs" Inherits="ExamType" %>

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
						Exam Type
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
							<h2 class="style3">Add New ExamType</h2>
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Panel ID="Panel1" runat="server">
                                    <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" AutoPostBack="True" 
                  onselectedindexchanged="DropDownList2_SelectedIndexChanged" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                            SelectCommand="SELECT [Name] FROM [client]  ORDER BY [ID]" 
                  onselecting="SqlDataSource3_Selecting"></asp:SqlDataSource>
                                    </asp:Panel>
                                    <br /><br />
                                    <asp:DropDownList ID="DropDownList1" class="form-control" placeholder="Course" 
                                        runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" 
                                        DataValueField="Name" AutoPostBack="True"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:SessionParameter DefaultValue="2" Name="Cid" SessionField="Client" 
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                        
									<div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="ExamType Name"></asp:TextBox>
                                        
                                        <div class="input-group-addon">
                                            <i class="fa fa-user"></i>
                                        </div>
                                     </div>
                                        <br/>
                                        
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                                        placeholder="Duration"></asp:TextBox>
                                    <br />
                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" 
                                        onclick="Button1_Click1" Text="Add ExamType" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                       
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
						</div>
                </div>
                
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Exam types                      <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                            
                            
							<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" 
                                ForeColor="Black" GridLines="Horizontal" AllowPaging="True">
                                 <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="100px" SortExpression="ID" 
                                ReadOnly="True" />
                            <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="100px" SortExpression="Name" />
                            <asp:BoundField DataField="Duration" HeaderText="Duration" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="100px" 
                                SortExpression="Duration" />
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
                                 SelectCommand="SELECT [ID], [Name], [Duration] FROM [ExamType] WHERE (([ClientId] = @ClientId) AND ([CourseId] =(SELECT [Course].[ID] FROM [Course] WHERE [Course].[Name]= @CourseId AND [Course].[ClientId]=@ClientId)))" 
                              DeleteCommand="DELETE FROM [ExamType] WHERE [ID] = @original_ID" 
                              InsertCommand="INSERT INTO [ExamType] ([ID], [Name], [Duration]) VALUES (@ID, @Name, @Duration)" 
                              
                        UpdateCommand="UPDATE [ExamType] SET [Name] = @Name, [Duration] = @Duration WHERE [ID] = @original_ID" 
                        OldValuesParameterFormatString="original_{0}">
                              <DeleteParameters>
                                  <asp:Parameter Name="original_ID" Type="Int32" />
                              </DeleteParameters>
                              <InsertParameters>
                                  <asp:Parameter Name="ID" Type="Int32" />
                                  <asp:Parameter Name="Name" Type="String" />
                                  <asp:Parameter Name="Duration" Type="Int32" />
                              </InsertParameters>
                              <SelectParameters>
                                  <asp:SessionParameter Name="ClientId" SessionField="Client" Type="String" />
                                  <asp:ControlParameter ControlID="DropDownList1" Name="CourseId" 
                                      PropertyName="SelectedValue" Type="String" />
                              </SelectParameters>
                              <UpdateParameters>
                                  <asp:Parameter Name="Name" Type="String" />
                                  <asp:Parameter Name="Duration" Type="Int32" />
                                  <asp:Parameter Name="original_ID" Type="Int32" />
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

