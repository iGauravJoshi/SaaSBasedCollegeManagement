<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

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
						View Users</div>
				</div>
			</div>
		</div>

		<!-- ========== TITLE END ========== -->

        <div class="col-sm-6">
        
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">users</h2>
                            <form>
                            
								<div class="form-group" id="Div1">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                Select User Type:&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="UserType" 
                                    DataValueField="UserType">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [UserType] FROM [Login] WHERE ([UserType] &lt;&gt; @UserType)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="SuperAdmin" Name="UserType" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br /><br />+
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource1" DataKeyNames="ID" 
                                    onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
                                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                    ForeColor="Black" GridLines="Horizontal" Width="506px">
              <Columns>
                  <asp:BoundField DataField="ID" HeaderText="Sr No" SortExpression="ID" 
                      ReadOnly="True" />
                  <asp:BoundField DataField="UserName" HeaderText="UserName" 
                      SortExpression="UserName" />
                  <asp:BoundField DataField="Name" HeaderText="Client" 
                      SortExpression="Name" ReadOnly="True" />
                  <asp:TemplateField HeaderText="UserType" SortExpression="UserType">
                      <EditItemTemplate>
                          <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                              DataSourceID="SqlDataSource1" DataTextField="UserType" 
                              DataValueField="UserType" SelectedValue='<%# Bind("UserType") %>'>
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                              SelectCommand="SELECT DISTINCT [UserType] FROM [Login] WHERE ([UserType] &lt;&gt; @UserType)">
                              <SelectParameters>
                                  <asp:Parameter DefaultValue="SuperAdmin" Name="UserType" Type="String" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserType") %>'></asp:Label>
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
                                    
                                    
                                    SelectCommand="SELECT [Login].[ID], [Login].[UserName], [Login].[UserType], [client].[Name] FROM [Login],[client] WHERE ([UserType] = @UserType) AND ([Login].[ClientID]=[client].[ID])" 
                                    DeleteCommand="DELETE FROM [Login] WHERE [ID] = @ID" 
                                    InsertCommand="INSERT INTO [Login] ([ID], [UserName], [UserType], [ClientID]) VALUES (@ID, @UserName, @UserType, @ClientID)" 
                                    
                                    UpdateCommand="UPDATE [Login] SET [UserName] = @UserName, [UserType] = @UserType, [ClientID] = @ClientID WHERE [ID] = @ID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="ID" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="ID" Type="Int32" />
                                        <asp:Parameter Name="UserName" Type="String" />
                                        <asp:Parameter Name="UserType" Type="String" />
                                        <asp:Parameter Name="ClientID" Type="Int32" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="UserType" 
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="UserName" Type="String" />
                                        <asp:Parameter Name="UserType" Type="String" />
                                        <asp:Parameter Name="ClientID" Type="Int32" />
                                        <asp:Parameter Name="ID" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
          
           </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
                                </form>
						</div>
     
        </div>
</asp:Content>

