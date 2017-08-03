<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="MessRule.aspx.cs" Inherits="MessRule" %>

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
						Mess Rule
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
							<h2 class="style3">&nbsp;Add New Mess Rule</h2>
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Panel ID="Panel1" runat="server">
              <asp:DropDownList ID="DropDownList2" class="form-control" runat="server"  AutoPostBack="True" 
                                            DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                  SelectCommand="SELECT DISTINCT [Name] FROM [client]"></asp:SqlDataSource>
                                    </asp:Panel>
                                    <br /><br />
									<div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Mess Rule"></asp:TextBox>
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
									</div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**MessRule Cannot be empty" ForeColor="Red" ControlToValidate="TextBox1" ></asp:RequiredFieldValidator>
                                <br /><br /><br />
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" 
                                        Text="Add Mess Rule" onclick="Button1_Click1"></asp:Button>
						    
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
						    
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
						</div>
                </div>
                

                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">mess rules</h2>
                            <form>
								<div class="form-group" id="Div1">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                            
                            
							<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" 
                              DataKeyNames="RuleNo" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal" Height="270px" Width="320px">
                                <Columns>
                                  <asp:BoundField DataField="RuleNo" HeaderText="RuleNo" 
                                      SortExpression="RuleNo" ReadOnly="True" />
                                  <asp:TemplateField HeaderText="Rules" SortExpression="Rules">
                                      <EditItemTemplate>
                                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Rules") %>' 
                                              Width="100px"></asp:TextBox>
                                      </EditItemTemplate>
                                      <ItemTemplate>
                                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("Rules") %>'></asp:Label>
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
                                ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                SelectCommand="SELECT [RuleNo], [Rules] FROM [MessRules]" 
                              DeleteCommand="DELETE FROM [MessRules] WHERE [RuleNo] = @RuleNo" 
                              InsertCommand="INSERT INTO [MessRules] ([RuleNo], [Rules]) VALUES (@RuleNo, @Rules)" 
                              UpdateCommand="UPDATE [MessRules] SET [Rules] = @Rules WHERE [RuleNo] = @RuleNo">
                              <DeleteParameters>
                                  <asp:Parameter Name="RuleNo" Type="Int32" />
                              </DeleteParameters>
                              <InsertParameters>
                                  <asp:Parameter Name="RuleNo" Type="Int32" />
                                  <asp:Parameter Name="Rules" Type="String" />
                              </InsertParameters>
                              <UpdateParameters>
                                  <asp:Parameter Name="Rules" Type="String" />
                                  <asp:Parameter Name="RuleNo" Type="Int32" />
                              </UpdateParameters></asp:SqlDataSource>

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

