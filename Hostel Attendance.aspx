<%@ Page Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="Hostel Attendance.aspx.cs" Inherits="Hostel_Attendance" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
            
    <div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Hostel Attendance
					</div>
				</div>
			</div>
		</div>
         <section id="content">
			<div class="container">
            
				<div class="row">
                 <div class="col-sm-6">
                    <div class="widget" data-scroll-reveal>
							<h2 class="style3">Record Attendance</h2>
							
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                                
                                    <asp:Panel ID="Panel2" runat="server">
          <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" AutoPostBack="True" 
                  onselectedindexchanged="DropDownList2_SelectedIndexChanged" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  SelectCommand="SELECT [Name] FROM [client] ORDER BY [ID]" onselecting="SqlDataSource3_Selecting"></asp:SqlDataSource>
           </asp:Panel>
          
                                </ContentTemplate>
                                </asp:UpdatePanel>
                                <br />
                                <br />
                    <div class="input-group">
             
            
                                <asp:TextBox ID="TextBox18" class="form-control" placeholder="Date" 
                            runat="server" ontextchanged="TextBox18_TextChanged" ></asp:TextBox>
                        <div class="input-group-addon">
                        <asp:CalendarExtender ID="CalendarExtender1" Format="dd/MM/yyyy" PopupButtonID="imgPopup" TargetControlID="TextBox18" runat="server"></asp:CalendarExtender>
                    
                    <asp:ImageButton ID="imgPopup" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/calendar2.png" />
                            </div>
                            </div>
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <ContentTemplate>
             
            
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>"                             
                 SelectCommand="SELECT Student.RollNumber, Student.SName FROM Student INNER JOIN HostelAdmissionTable ON Student.StudentID = HostelAdmissionTable.sid"></asp:SqlDataSource>

                                    <br />
             
            
             <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                 DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
                                        BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                 <Columns>
                     <asp:TemplateField HeaderText="RollNumber" SortExpression="RollNumber">
                         <ItemTemplate>
                             <asp:Label ID="Label1" runat="server" Text='<%# Bind("RollNumber") %>'></asp:Label>
                         </ItemTemplate>
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RollNumber") %>'></asp:TextBox>
                         </EditItemTemplate>
                     </asp:TemplateField>
                     <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                     <asp:TemplateField HeaderText="IsPresent">
                         <ItemTemplate>
                             <asp:CheckBox ID="CheckBox1" runat="server" />
                         </ItemTemplate>
                     </asp:TemplateField>
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
                                    <br /><br />
                                    <asp:Button ID="Button2" runat="server" class="btn btn-primary"  onclick="Button2_Click" Text="Submit" />
             <br />
             <asp:Label ID="Label2" runat="server"  Text=""></asp:Label>
            
                </ContentTemplate>
             </asp:UpdatePanel>
                                      
            
            
         </div>
          
          </div>
          </div>
           <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Update attendance</h2>
                            <form>
								<div class="form-group" id="Div1">
        <asp:Panel ID="Panel1" runat="server">
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
        <div class=sidebar>
          
          
          
         <div class="input-group">
                                <asp:TextBox ID="TextBox2" class="form-control" placeholder="Date" runat="server"></asp:TextBox>
                        <div class="input-group-addon">
                        <asp:CalendarExtender ID="CalendarExtender2" Format="dd/MM/yyyy" PopupButtonID="ImageButton1" TargetControlID="TextBox2" runat="server"></asp:CalendarExtender>
                    
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/calendar2.png" />
                            </div>
                            </div>
                  <br /><br />
      
      <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Show" onclick="Button1_Click" />
            <br />
          <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="id" DataSourceID="SqlDataSource2" BackColor="White" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                        SortExpression="id" />
                    <asp:BoundField DataField="Sid" HeaderText="RollNumber" SortExpression="Sid" ReadOnly="true" />
                    <asp:BoundField DataField="SName" HeaderText="Name" 
                        SortExpression="SName" ReadOnly="true" />
                    <asp:TemplateField HeaderText="IsPresent" SortExpression="IsPresent">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("IsPresent") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                SelectedValue='<%# Bind("IsPresent") %>'>
                                <asp:ListItem>P</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField ShowEditButton="True" />
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
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
               DeleteCommand="DELETE FROM [HostelAttendence] WHERE [id] = @original_id AND [Sid] = @original_Sid AND [IsPresent] = @original_IsPresent" 
                InsertCommand="INSERT INTO [HostelAttendence] ([id], [Sid], [IsPresent]) VALUES (@id, @Sid, @IsPresent)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT [id], [Sid], [SName],[IsPresent] FROM [Student],[HostelAttendence] WHERE ([Date] = @Date)AND ([HostelAttendence].[Sid]=[Student].[RollNumber])" 
                UpdateCommand="UPDATE [HostelAttendence] SET [IsPresent] = @IsPresent WHERE [id] = @original_id AND [IsPresent] = @original_IsPresent">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_Sid" Type="String" />
                    <asp:Parameter Name="original_IsPresent" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="Sid" Type="String" />
                    <asp:Parameter Name="IsPresent" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="Date" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="IsPresent" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_IsPresent" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
      </div>
      </ContentTemplate></asp:UpdatePanel>
        </asp:Panel>

          </div>
          </form>
          </div>
          </div>
    </div>
</asp:Content>
