<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="ExamScheduler.aspx.cs" Inherits="ExamScheduler" %>
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
						Exam Schedule
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
							
			<form>
								<div class="form-group" id="newsletter-name-group">
     
    <asp:Panel ID="Panel1" runat="server">
        
              <asp:UpdatePanel ID="UpdatePanel7" runat="server">
              <ContentTemplate>
              
              
              <asp:DropDownList ID="DropDownList9" class="form-control" runat="server" 
                  DataSourceID="SqlDataSource7" DataTextField="Name" 
                  DataValueField="Name" 
                  onselectedindexchanged="DropDownList9_SelectedIndexChanged" 
                  AutoPostBack="True">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  
                  SelectCommand="SELECT [Name] FROM [client] ORDER BY [ID]">
              </asp:SqlDataSource>
              </ContentTemplate>
              </asp:UpdatePanel>
         
          </asp:Panel>
          <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
   
         <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
            SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
            <SelectParameters>
            <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" 
                    DefaultValue="" />
            </SelectParameters>
        </asp:SqlDataSource>
  </ContentTemplate>
          </asp:UpdatePanel>
        <br />
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
        
        <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
            SelectCommand="GetBranch" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="DropDownList1" 
                    EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>
        <br />
        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>
        
        <asp:DropDownList ID="DropDownList3" class="form-control" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
    
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
            SelectCommand="GetStudyingYearName" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="DropDownList1" 
                    EventName="SelectedIndexChanged" />
                <asp:AsyncPostBackTrigger ControlID="DropDownList2" 
                    EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>
        <br />
        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
        <ContentTemplate>
        
        <asp:DropDownList ID="DropDownList4" class="form-control" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource4" DataTextField="SubName" DataValueField="SubName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
            SelectCommand="GetSubjectName" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="BName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="DropDownList1" 
                    EventName="SelectedIndexChanged" />
                <asp:AsyncPostBackTrigger ControlID="DropDownList2" 
                    EventName="SelectedIndexChanged" />
                <asp:AsyncPostBackTrigger ControlID="DropDownList3" 
                    EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>
        <br />
        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
        <ContentTemplate>
        
        <asp:DropDownList ID="DropDownList6" class="form-control" runat="server" AutoPostBack="True"  OnDataBound="DropDownList6_SelectedIndexChanged"
            DataSourceID="SqlDataSource6" DataTextField="Name" DataValueField="Name" 
            onselectedindexchanged="DropDownList6_SelectedIndexChanged">
            
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
            SelectCommand="GetExamType1" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
        <ContentTemplate>
        <div class="input-group">
       <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Select Date"></asp:TextBox>
                    <div class="input-group-addon"><asp:ImageButton ID="imgPopup" runat="server" ImageAlign="AbsMiddle" 
                        ImageUrl="~/images/calendar2.png" />
                        
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
                        PopupButtonID="imgPopup" TargetControlID="TextBox1">
                    </asp:CalendarExtender></div>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ValidationGroup="G1" ControlToValidate="TextBox1" ErrorMessage="This field should not be empty"></asp:RequiredFieldValidator>
        <br /><br /><asp:UpdatePanel ID="UpdatePanel8" runat="server">
        <ContentTemplate>
        
<asp:DropDownList ID="DropDownList5" class="form-control" runat="server" AutoPostBack="True">
           <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
        </asp:DropDownList><br /><br />
        <asp:DropDownList ID="DropDownList7" class="form-control" runat="server" AutoPostBack="True">
            <asp:ListItem>AM</asp:ListItem>
            <asp:ListItem>PM</asp:ListItem>
        </asp:DropDownList>
        </ContentTemplate>
        </asp:UpdatePanel>

          

          <br /><br />
                                <asp:Button ID="Button1" runat="server" 
                class="btn btn-primary" Text="Add Schedule" onclick="Button1_Click"></asp:Button>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label6" runat="server"></asp:Label>
			</ContentTemplate>
        </asp:UpdatePanel>			    
       </div>
    </form>
    </div>
    </div>
    </div><div class="row">
       <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Exam schedule</h2>
                            
								<div class="form-group" id="Div1">
                                <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                                <ContentTemplate>
                                
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  DataSourceID="SqlDataSource5" AllowPaging="True" AllowSorting="True" 
                  DataKeyNames="ExamID" Width="585px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
                                        BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                  <Columns>
                      <asp:BoundField DataField="ExamID" HeaderText="ExamID" SortExpression="ExamID" 
                          ReadOnly="True" />
                      <asp:BoundField DataField="SubName" HeaderText="Subject" SortExpression="SubName" 
                          ReadOnly="True" />
                      <asp:TemplateField HeaderText="Date" SortExpression="date">
                          <EditItemTemplate>
                             <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                                <asp:ImageButton ID="imgPopup" runat="server" ImageAlign="AbsMiddle" 
                                ImageUrl="~/images/calendar2.png" />
                       
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
                        PopupButtonID="imgPopup" TargetControlID="TextBox18">
                         </asp:CalendarExtender>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="Label2" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="ExamType" SortExpression="examtype">
                          <EditItemTemplate>
                              <asp:DropDownList ID="DropDownList8" runat="server" 
                                  DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" 
                                  SelectedValue='<%# Bind("examtype") %>'>
                              </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                                  SelectCommand="SELECT DISTINCT [Name] FROM [ExamType]"></asp:SqlDataSource>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="Label1" runat="server" Text='<%# Bind("examtype") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="Timing" SortExpression="duration">
                          <EditItemTemplate>
                              <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("duration") %>' 
                                  Width="100px"></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("duration") %>'></asp:Label>
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
               <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  
                  SelectCommand="ExamSchedule1"  SelectCommandType="StoredProcedure"
                  ConflictDetection="CompareAllValues" 
                  DeleteCommand="DELETE FROM [Examschedule] WHERE [ExamID] = @original_ExamID AND (([examtype] = @original_examtype) OR ([examtype] IS NULL AND @original_examtype IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))" 
                  InsertCommand="INSERT INTO [Examschedule] ([ExamID], [examtype], [duration], [date]) VALUES (@ExamID, @examtype, @duration, @date)" 
                  OldValuesParameterFormatString="original_{0}" 
                  UpdateCommand="UPDATE [Examschedule] SET [examtype] = @examtype, [duration] = @duration, [date] = @date WHERE [ExamID] = @original_ExamID AND (([examtype] = @original_examtype) OR ([examtype] IS NULL AND @original_examtype IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                          PropertyName="SelectedValue" Type="String" />
                      <asp:ControlParameter ControlID="DropDownList2" Name="BName" 
                          PropertyName="SelectedValue" Type="String" />
                      <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                  </SelectParameters>
                  <DeleteParameters>
                      <asp:Parameter Name="original_ExamID" Type="Int32" />
                      <asp:Parameter Name="original_examtype" Type="String" />
                      <asp:Parameter Name="original_duration" Type="String" />
                      <asp:Parameter Name="original_date" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="ExamID" Type="Int32" />
                      <asp:Parameter Name="examtype" Type="String" />
                      <asp:Parameter Name="duration" Type="String" />
                      <asp:Parameter Name="date" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="examtype" Type="String" />
                      <asp:Parameter Name="duration" Type="String" />
                      <asp:Parameter Name="date" Type="String" />
                      <asp:Parameter Name="original_ExamID" Type="Int32" />
                      <asp:Parameter Name="original_examtype" Type="String" />
                      <asp:Parameter Name="original_duration" Type="String" />
                      <asp:Parameter Name="original_date" Type="String" />
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

