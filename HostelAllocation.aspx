<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="HostelAllocation.aspx.cs" Inherits="HostelAllocation" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:toolkitscriptmanager ID="ToolkitScriptManager1" runat="server">
           </asp:toolkitscriptmanager>
  <div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Hostel Allocation
					</div>
				</div>
			</div>
		</div> 
 <section id="content">
			<div class="container">
            
				<div class="row">
                <asp:Panel ID="Panel4" runat="server">
                <div class="col-sm-6">
                    <div class="widget" data-scroll-reveal>
							<h2 class="style3">&nbsp;</h2>
							<form>
								<div class="form-group" id="newsletter-name-group">    

                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
        
                              <asp:Panel ID="Panel2" runat="server">
              <asp:DropDownList ID="DropDownList4" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
                                            onselectedindexchanged="DropDownList4_SelectedIndexChanged">
              </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                            SelectCommand="SELECT [Name] FROM [client]">
                                        </asp:SqlDataSource>
          </asp:Panel>
          <br />


                              <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource7" DataTextField="Name" 
                                        DataValueField="Name" 
                                        >
                                       </asp:DropDownList>
                              
                              <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                                        SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
                                             <SelectParameters>
                                                 <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                             </SelectParameters>
                                    </asp:SqlDataSource>
                                       
                                  
                                       
        <br />
                                        <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource3" DataTextField="Name" 
                                        DataValueField="Name">
                                       </asp:DropDownList>
                                        
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetBranch" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                            </SelectParameters>
                                    </asp:SqlDataSource>
                                        
        <br />
                                        <asp:DropDownList ID="DropDownList3" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource5" DataTextField="Name" 
                                        DataValueField="Name">
                                       </asp:DropDownList>

                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetStudyingYearName" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                            </SelectParameters>
                                    </asp:SqlDataSource>
                                        
        <br />
                                        <asp:DropDownList ID="DropDownList6" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource6" DataTextField="SName" 
                                        DataValueField="SName">
                                       </asp:DropDownList>
              
								        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetStudentName" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                                                PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="DropDownList2" Name="BName" 
                                                PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="DropDownList3" Name="Year" 
                                                PropertyName="SelectedValue" Type="String" />
                                            <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
        <br />                          
                                        <asp:DropDownList ID="DropDownList5" class="form-control" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="room_no" DataValueField="room_no">
        </asp:DropDownList>
                                        
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                                        SelectCommand="SELECT [room no] AS room_no FROM [room no]"></asp:SqlDataSource>
    <br />

            <div class="input-group">
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Select Date"></asp:TextBox>
                    <div class="input-group-addon">
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
                        PopupButtonID="imgPopup" TargetControlID="TextBox1">
        </asp:CalendarExtender>
                    <asp:ImageButton ID="imgPopup" runat="server" ImageAlign="AbsMiddle" 
                        ImageUrl="~/images/calendar2.png" onclick="imgPopup_Click" />
                    </div>
            </div>
         <br />
         <br />
       <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Add allocation details" Width="230px" 
            onclick="Button1_Click"></asp:Button>
       &nbsp;&nbsp;&nbsp;
       <asp:Label ID="Label5" runat="server"></asp:Label>
    <br />
   
    </ContentTemplate>
                                </asp:UpdatePanel>
    </div>
    </form>
    </div>
    </div>
            </asp:Panel>
                <asp:Panel ID="Panel3" runat="server">
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">hostel allocation&nbsp;</h2>
                            <form>
								<div class="form-group" id="Div1">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource4" 
            AutoGenerateColumns="False" Width="553px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" DataKeyNames="id" BackColor="White" 
                                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                        ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" 
                    SortExpression="id" ReadOnly="True" />
                <asp:BoundField DataField="SName" HeaderText="Name" ReadOnly="True" SortExpression="SName" />
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                <asp:BoundField DataField="roomno" HeaderText="RoomNo" SortExpression="roomno" />
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
            DeleteCommand="DELETE FROM [HostelAllocation] WHERE [id] = @original_id" 
            InsertCommand="INSERT INTO [HostelAllocation] ([id],, [date], [roomno]) VALUES (@id, @date, @roomno)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [id], [SName], [date], [roomno] FROM [HostelAllocation],[Student] WHERE ([sid]=[StudentID])" 
            UpdateCommand="UPDATE [HostelAllocation] SET [date] = @date, [roomno] = @roomno WHERE [id] = @original_id">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="roomno" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="ClientId" SessionField="Client" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="roomno" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        </ContentTemplate>
                                </asp:UpdatePanel>
        </div>
        </form>
        </div>
    </div>
                </asp:Panel>
                </div>
            </div>
</section>
</asp:Content>

