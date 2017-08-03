<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="Mess.aspx.cs" Inherits="Mess" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
        <!-- ========== TITLE START ========== -->

		<div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Mess
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
							<h2 class="style3">Add Mess Menu</h2>
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Panel ID="Panel1" runat="server">
              <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                  SelectCommand="SELECT [Name] FROM [client]"></asp:SqlDataSource>
                                    </asp:Panel>
                                    <br /><br />
									<div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Menu Name"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ValidationGroup="mess"
          ErrorMessage="**Menu should not be empty" ForeColor="Red" 
             ></asp:RequiredFieldValidator>
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
									</div>
                                <br /><br />
                                <div class="input-group">
                                <asp:TextBox ID="TextBox18" class="form-control" placeholder="Date" runat="server"></asp:TextBox>
                        <div class="input-group-addon">
                        <asp:CalendarExtender ID="CalendarExtender2" Format="dd/MM/yyyy" PopupButtonID="imgPopup" TargetControlID="TextBox18" runat="server"></asp:CalendarExtender>
                    
                    <asp:ImageButton ID="imgPopup" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/calendar2.png" />
                            </div>
                            </div>
                            <br /><br />
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" 
                                        Text="Add Menu Item" onclick="Button1_Click"></asp:Button>
						    
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						    
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
						    
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
						</div>
                </div>
                
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">mess menu&nbsp;</h2>
                            <form>
								<div class="form-group" id="Div1">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                            
                           
							<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal" Height="270px" Width="433px" 
                                    DataKeyNames="ID">
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                        SortExpression="ID" />
                                    <asp:TemplateField HeaderText="Date" SortExpression="date">
                                        <EditItemTemplate>
                             <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("date") %>' Width="100px"></asp:TextBox>
                                <asp:ImageButton ID="imgPopup" runat="server" ImageAlign="AbsMiddle" 
                                ImageUrl="~/images/calendar2.png" />
                       
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
                        PopupButtonID="imgPopup" TargetControlID="TextBox18">
                         </asp:CalendarExtender>
                          </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="MenuItem" SortExpression="menuItem">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("menuItem") %>' 
                                                Width="100px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("menuItem") %>'></asp:Label>
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
                                SelectCommand="SELECT [ID], [date], [menuItem] FROM [Mess] WHERE ([ClientId] = @ClientId)"
                                 DeleteCommand="DELETE FROM [Mess] WHERE [ID] = @original_ID AND [date] = @original_date AND [menuItem] = @original_menuItem" 
                                 InsertCommand="INSERT INTO [Mess] ([ID], [date], [menuItem]) VALUES (@ID, @date, @menuItem)" 
                                 UpdateCommand="UPDATE [Mess] SET [date] = @date, [menuItem] = @menuItem WHERE [ID] = @original_ID ">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_ID" Type="Int32" />
                                    <asp:Parameter Name="original_date" Type="String" />
                                    <asp:Parameter Name="original_menuItem" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                    <asp:Parameter Name="date" Type="String" />
                                    <asp:Parameter Name="menuItem" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:SessionParameter Name="ClientId" SessionField="Client" 
                                        Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="date" Type="String" />
                                    <asp:Parameter Name="menuItem" Type="String" />
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

