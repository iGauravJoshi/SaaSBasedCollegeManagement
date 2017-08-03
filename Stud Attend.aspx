<%@ Page Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="Stud Attend.aspx.cs" Inherits="Stud_Attend" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Student Attendance
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
							<form>
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                
              <asp:Panel ID="Panel2" runat="server">
                     
              <asp:DropDownList ID="DropDownList6" class="form-control" runat="server" 
                  DataSourceID="SqlDataSource9" DataTextField="Name" 
                  DataValueField="Name" AutoPostBack="True" 
                  onselectedindexchanged="DropDownList6_SelectedIndexChanged">
              </asp:DropDownList>
              
              <br /><br />
              <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  SelectCommand="SELECT DISTINCT [Name] FROM [client]"></asp:SqlDataSource>
          
                </asp:Panel>

              <asp:DropDownList ID="DropDownList4" class="form-control" runat="server" AutoPostBack="True" 
              DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
              </asp:DropDownList><br /><br />
              
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
              SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
              <SelectParameters>
              <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
              </SelectParameters>
              </asp:SqlDataSource>
              
              <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack="True" 
              DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
              </asp:DropDownList>
              
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
               ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
               SelectCommand="GetBranch" SelectCommandType="StoredProcedure">
               <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList4" Name="CName" 
                      PropertyName="SelectedValue" Type="String" />
                 <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                      </SelectParameters>
              </asp:SqlDataSource>
              
              <br /><br />
          
          <tr><td><asp:DropDownList ID="DropDownList2" class="form-control" runat="server" AutoPostBack="True" 
              DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name">
          </asp:DropDownList><br /><br />
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
              ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
              SelectCommand="GetStudyingYearName" SelectCommandType="StoredProcedure">
              <SelectParameters>
                       <asp:ControlParameter ControlID="DropDownList4" Name="CName" 
                           PropertyName="SelectedValue" Type="String" />
                       <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                   </SelectParameters>
          </asp:SqlDataSource>
          <asp:DropDownList ID="DropDownList3"  class="form-control" runat="server" AutoPostBack="True" 
              DataSourceID="SqlDataSource4" DataTextField="SubName" DataValueField="SubName">
          </asp:DropDownList><br /><br />
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
              ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
              SelectCommand="GetSubjectName" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:ControlParameter ControlID="DropDownList4" Name="CName" 
                      PropertyName="SelectedValue" Type="String" />
                  <asp:ControlParameter ControlID="DropDownList1" Name="BName" 
                      PropertyName="SelectedValue" Type="String" />
                      <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>

            <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
          </cc1:ToolkitScriptManager>
          <div class="input-group">
          <asp:TextBox ID="TextBox18" class="form-control" placeholder="Date" runat="server"></asp:TextBox>
          <div class="input-group-addon"><asp:ImageButton ID="imgPopup" runat="server" ImageAlign="AbsMiddle" 
              ImageUrl="~/images/calendar2.png" Height="28px" />
              <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
              PopupButtonID="imgPopup" TargetControlID="TextBox18">
          </cc1:CalendarExtender>
              </div>
          </div>
          <br />
          <asp:Button ID="Button2" runat="server" Text="Show" class="btn btn-primary" onclick="Button2_Click" />
                 
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource6" 
              onselectedindexchanged="GridView1_SelectedIndexChanged" Width="353px">
              <Columns>
                  <asp:BoundField DataField="SName" HeaderText="Name" SortExpression="SName" />
                  <asp:TemplateField HeaderText="RollNumber" SortExpression="RollNumber">
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("RollNumber") %>'></asp:Label>
                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RollNumber") %>'></asp:TextBox>
                      </EditItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="IsPresent">
                      <ItemTemplate>
                          <asp:CheckBox ID="CheckBox1" runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>
              </Columns>
          </asp:GridView>
          
          <asp:Button ID="submit" runat="server" class="btn btn-primary" onclick="submit_Click" Text="Submit" />
           
          <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
          
          <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
              ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
              SelectCommand="SELECT DISTINCT [SName], [RollNumber] FROM [Student] where [StudentID]!=0">
          </asp:SqlDataSource>
           
           </ContentTemplate>
           </asp:UpdatePanel>
                                </div>
                            </form>
                    </div>
                </div>
           
           
          
            <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Update attendance</h2>
                            <form>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                            
								<div class="form-group" id="Div1">
        <div class="input-group">
          <asp:TextBox ID="TextBox2" class="form-control" placeholder="Date" runat="server"></asp:TextBox>
          <div class="input-group-addon"><asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="AbsMiddle" 
              ImageUrl="~/images/calendar2.png" Height="23px" Width="23px" />
          <cc1:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd/MM/yyyy" 
              PopupButtonID="ImageButton1" TargetControlID="TextBox2">
          </cc1:CalendarExtender>
                  
      </div>
        </div>
        <br />
              <asp:DropDownList ID="DropDownList7" runat="server" class="form-control" 
                  DataSourceID="SqlDataSource10" DataTextField="Name" DataValueField="Name" 
                  AutoPostBack="True">
              </asp:DropDownList><br /><br />
              <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
                  <SelectParameters>
                         <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              <asp:DropDownList ID="DropDownList8" runat="server" class="form-control" 
                  DataSourceID="SqlDataSource11" DataTextField="Name" DataValueField="Name" 
                  AutoPostBack="True">
              </asp:DropDownList><br /><br />
              <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  onselecting="SqlDataSource11_Selecting" SelectCommand="GetBranch" 
                  SelectCommandType="StoredProcedure">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList7" Name="CName" 
                          PropertyName="SelectedValue" Type="String" />
                           <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              <asp:DropDownList ID="DropDownList9" runat="server" class="form-control" 
                  DataSourceID="SqlDataSource12" DataTextField="Name" DataValueField="Name" 
                  AutoPostBack="True">
              </asp:DropDownList><br /><br />
              <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  SelectCommand="GetStudyingYearName" SelectCommandType="StoredProcedure">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList7" Name="CName" 
                          PropertyName="SelectedValue" Type="String" />
                           <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              <asp:DropDownList ID="DropDownList10" runat="server" class="form-control" 
                  DataSourceID="SqlDataSource13" DataTextField="SubName" DataValueField="SubName" 
                  AutoPostBack="True">
              </asp:DropDownList><br /><br />
              <asp:SqlDataSource ID="SqlDataSource13" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  SelectCommand="GetSubjectName" SelectCommandType="StoredProcedure">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList7" Name="CName" 
                          PropertyName="SelectedValue" Type="String" />
                      <asp:ControlParameter ControlID="DropDownList8" Name="BName" 
                          PropertyName="SelectedValue" Type="String" />
                       <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
          <asp:Button ID="Button1" runat="server" Text="Show" class="btn btn-primary" onclick="Button1_Click" />
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
              onselectedindexchanged="GridView2_SelectedIndexChanged" 
              DataSourceID="SqlDataSource8" DataKeyNames="id">
              <Columns>
                  <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                      SortExpression="id" />
                  <asp:BoundField DataField="RollNumber" HeaderText="RollNumber" ReadOnly="True" 
                      SortExpression="RollNumber" />
                  <asp:BoundField DataField="SName" HeaderText="Name" ReadOnly="True" 
                      SortExpression="SName" />
                  <asp:TemplateField SortExpression="Ispresent" HeaderText="P/A">
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ispresent") %>'></asp:Label>
                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                              SelectedValue='<%# Bind("Ispresent") %>'>
                              <asp:ListItem>P</asp:ListItem>
                              <asp:ListItem>A</asp:ListItem>
                          </asp:DropDownList>
                      </EditItemTemplate>
                  </asp:TemplateField>
                  <asp:CommandField ShowEditButton="True" >
                  <ItemStyle Font-Size="Smaller" />
                  </asp:CommandField>
              </Columns>
          </asp:GridView>

          <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
              ConflictDetection="CompareAllValues" 
              ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
              DeleteCommand="DELETE FROM [StudentsAttendence] WHERE [id] = @original_id AND [Ispresent] = @original_Ispresent" 
              OldValuesParameterFormatString="original_{0}" 
              SelectCommand="SELECT [id],[RollNumber],[SName],[Ispresent] FROM [Student],[StudentsAttendence] WHERE ([Date] = @Date) AND ([StudentsAttendence].[Sid]=[Student].[RollNumber])" 
              UpdateCommand="UPDATE [StudentsAttendence] SET [Ispresent] = @Ispresent WHERE [id] = @original_id AND [Ispresent] = @original_Ispresent">
              <DeleteParameters>
                  <asp:Parameter Name="original_id" Type="Int32" />
                  <asp:Parameter Name="original_Ispresent" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="Ispresent" Type="String" />
                  <asp:Parameter Name="id" Type="Int32" />
              </InsertParameters>
              <SelectParameters>
                  <asp:ControlParameter ControlID="TextBox2" Name="Date" PropertyName="Text" 
                      Type="String" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="Ispresent" Type="String" />
                  <asp:Parameter Name="original_id" Type="Int32" />
                  <asp:Parameter Name="original_Ispresent" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>

      </div>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                            
                            </form>
                        </div>
            </div>
        
      
    </div>
    
    </section>
</asp:Content>