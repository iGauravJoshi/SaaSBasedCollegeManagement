<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="City.aspx.cs" Inherits="City" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!-- ========== TITLE START ========== -->

		<div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						City
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
							<h2 class="style3">Add New City</h2>
							<form>
								<div class="form-group" id="newsletter-name-group">
                                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                                 </asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                
                                <asp:DropDownList ID="DropDownList1" class="form-control" placeholder="State" 
                                        runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" AutoPostBack="True" OnDataBound="DropDownList1_SelectedIndexChanged" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged"
                                        DataValueField="Name"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetStateName" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <br />
                                        <br />
                                        <br />
									<div class="input-group">
                                        <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="City Name"></asp:TextBox>
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="city" runat="server" 
                                            ControlToValidate="TextBox1" ErrorMessage="This field can not be empty" 
                                            ForeColor="Red"></asp:RequiredFieldValidator>
								</div>
                                </ContentTemplate>
                                </asp:UpdatePanel>
                                <br /><br />
                                <asp:Button ID="Button1" runat="server" ValidationGroup="city" CausesValidation="true" class="btn btn-primary" Text="Add City" 
                                    onclick="Button1_Click"></asp:Button>
								
							</form>
						    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
						</div>
                </div>
                
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Cities</h2>
                            
								<div class="form-group" id="Div1">
                                
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                            
							<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" 
                                ForeColor="Black" GridLines="Horizontal" Height="270px" Width="320px">
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                        SortExpression="ID" />
                                    <asp:BoundField HeaderText="Name" DataField="Name" 
                                        SortExpression="Name" />
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
                                ConflictDetection="CompareAllValues" 
                     
                      DeleteCommand="DELETE FROM [City] WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL))" 
                      InsertCommand="INSERT INTO [City] ([ID], [Name]) VALUES (@ID, @Name)" 
                      OldValuesParameterFormatString="original_{0}" 
                      SelectCommand="SELECT [ID], [Name] FROM [City] WHERE ([StateID] = (SELECT [ID] FROM [State] WHERE [State].[Name]=@StateID) AND [StateID]!=0)" 
                      UpdateCommand="UPDATE [City] SET [Name] = @Name WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL))">
                      <DeleteParameters>
                          <asp:Parameter Name="original_ID" Type="Int32" />
                          <asp:Parameter Name="original_Name" Type="String" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="ID" Type="Int32" />
                          <asp:Parameter Name="Name" Type="String" />
                      </InsertParameters>
                      <SelectParameters>
                          <asp:ControlParameter ControlID="DropDownList1" Name="StateID" 
                              PropertyName="SelectedValue" Type="String" />
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
                                
						</div>
            </div>
                </div>
                </div>
        </section>

        
</asp:Content>

