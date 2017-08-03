<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="FeedbackCategory.aspx.cs" Inherits="FeedbackCategory" %>

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
						Feedback Category
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
							<h2 class="style3">&nbsp;Add New Feedback Category</h2>
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Panel ID="Panel1" runat="server">
              <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
                                            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
              </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                            SelectCommand="SELECT [Name] FROM [client] ORDER BY [Name]">
                                        </asp:SqlDataSource>
                                    </asp:Panel>
                                    <br /><br />
									<div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Feedback Category"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
          ErrorMessage="**FeedbackCategoryName should not be empty" ForeColor="Red" ValidationGroup="feedback"
             ></asp:RequiredFieldValidator>
									</div>
                                <br /><br /><br />
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" 
                                        Text="Add Feedback Category" onclick="Button1_Click"></asp:Button>
						    
                                    &nbsp;
                                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
						    
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
						</div>
                </div>
                
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
                            <form>
								<div class="form-group" id="Div1">
                            <h2 class="style2">Feedback categories</h2>                    
							<asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                           
						       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
                  DataSourceID="SqlDataSource1" DataKeyNames="ID"
                      onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
                                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                    ForeColor="Black" GridLines="Horizontal" Width="249px">
                  <Columns>
                      <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                          ReadOnly="True" />
                      <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
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
                  SelectCommand="SELECT [ID], [FName] FROM [feedbackCategory] WHERE ([ClientId] = @ClientId)" 
                  DeleteCommand="DELETE FROM [feedbackCategory] WHERE [ID] = @original_ID AND [FName] = @original_FName" 
                  InsertCommand="INSERT INTO [feedbackCategory] ([ID], [FName]) VALUES (@ID, @FName)" 
                  
                                        UpdateCommand="UPDATE [feedbackCategory] SET [FName] = @FName WHERE [ID] = @original_ID AND [FName] = @original_FName" 
                                        OldValuesParameterFormatString="original_{0}" 
                                    ConflictDetection="CompareAllValues">
                  <DeleteParameters>
                      <asp:Parameter Name="original_ID" Type="Int32" />
                      <asp:Parameter Name="original_FName" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="ID" Type="Int32" />
                      <asp:Parameter Name="FName" Type="String" />
                  </InsertParameters>
                  <SelectParameters>
                      <asp:SessionParameter Name="ClientId" SessionField="Client" Type="String" />
                  </SelectParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="FName" Type="String" />
                      <asp:Parameter Name="original_ID" Type="Int32" />
                      <asp:Parameter Name="original_FName" Type="String" />
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

