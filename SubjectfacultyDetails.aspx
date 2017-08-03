<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="SubjectfacultyDetails.aspx.cs" Inherits="SubjectFacultyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
      <div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Subject Faculty Details
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
							<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                            	<div class="form-group" id="newsletter-name-group">
   <asp:Panel ID="Panel1" runat="server">
              <asp:DropDownList ID="DropDownList6" class="form-control" runat="server" DataSourceID="SqlDataSource7" 
                                            AutoPostBack="True" DataTextField="Name" DataValueField="Name">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  SelectCommand="SELECT [Name] FROM [client] ORDER BY [ID]"></asp:SqlDataSource>
                                    </asp:Panel>
                                    <br /><br />

    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" 
                                        DataValueField="Name">
                                    </asp:DropDownList>
                                
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                                        SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
            <br /><br />
   <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Name" 
                                        DataValueField="Name">
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
                                    <br /><br />
                                        <asp:DropDownList ID="DropDownList3" class="form-control" runat="server" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Name" 
                                        DataValueField="Name">
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

                                    <br />
                                    <br />

        <asp:DropDownList ID="DropDownList5" class="form-control" runat="server" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="SubName" 
                                        DataValueField="SubName">
                                    </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
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
   
                                    <br />
                                    <br />
   
  <asp:DropDownList ID="DropDownList4" class="form-control" runat="server" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="TName" 
                                        DataValueField="TName">
                                    </asp:DropDownList>
       
    
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
            SelectCommand="SELECT [TName] FROM [TeachingStaff]"></asp:SqlDataSource>
       
    
                                    <br />
                                    <br />
    
          <asp:Button ID="Button1" runat="server" class="btn btn-primary" 
                                Text="Submit" onclick="Button1_Click"></asp:Button>
						    
    
        <asp:Label ID="Label3" runat="server"></asp:Label>
   
    
 
    </div>
                            </ContentTemplate>
                            </asp:UpdatePanel>
    </div>
    </div>
    </div>
    </div>
    </section>
     <div class="col-sm-6">
         <asp:UpdatePanel ID="UpdatePanel2" runat="server">
         <ContentTemplate>
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">subject faculties</h2>
                            <form>
								<div class="form-group" id="Div1">
          <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource6" 
              AutoGenerateColumns="False" DataKeyNames="ID" Width="436px" BackColor="White" BorderColor="#CCCCCC" 
                                        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                                        GridLines="Horizontal">
              <Columns>
                  <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                      SortExpression="ID" />
                  <asp:BoundField DataField="SubjectID" HeaderText="Subject" 
                      SortExpression="SubjectID" />
                  <asp:BoundField DataField="TeacherID" HeaderText="Teacher" 
                      SortExpression="TeacherID" />
                  <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
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
          <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
              ConflictDetection="CompareAllValues" 
              ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
              DeleteCommand="DELETE FROM [SubjectFacultyDetails] WHERE [ID] = @original_ID AND (([SubjectID] = @original_SubjectID) OR ([SubjectID] IS NULL AND @original_SubjectID IS NULL)) AND (([TeacherID] = @original_TeacherID) OR ([TeacherID] IS NULL AND @original_TeacherID IS NULL)) AND (([Year] = @original_Year) OR ([Year] IS NULL AND @original_Year IS NULL))" 
              InsertCommand="INSERT INTO [SubjectFacultyDetails] ([ID], [SubjectID], [TeacherID], [Year]) VALUES (@ID, @SubjectID, @TeacherID, @Year)" 
              OldValuesParameterFormatString="original_{0}" 
              SelectCommand="SELECT [ID], [SubjectID], [TeacherID], [Year] FROM [SubjectFacultyDetails] WHERE ([ClientId] = @ClientId)" 
              
                                        UpdateCommand="UPDATE [SubjectFacultyDetails] SET [SubjectID] = @SubjectID, [TeacherID] = @TeacherID, [Year] = @Year WHERE [ID] = @original_ID AND (([SubjectID] = @original_SubjectID) OR ([SubjectID] IS NULL AND @original_SubjectID IS NULL)) AND (([TeacherID] = @original_TeacherID) OR ([TeacherID] IS NULL AND @original_TeacherID IS NULL)) AND (([Year] = @original_Year) OR ([Year] IS NULL AND @original_Year IS NULL))">
              <DeleteParameters>
                  <asp:Parameter Name="original_ID" Type="Int32" />
                  <asp:Parameter Name="original_SubjectID" Type="String" />
                  <asp:Parameter Name="original_TeacherID" Type="String" />
                  <asp:Parameter Name="original_Year" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="ID" Type="Int32" />
                  <asp:Parameter Name="SubjectID" Type="String" />
                  <asp:Parameter Name="TeacherID" Type="String" />
                  <asp:Parameter Name="Year" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:SessionParameter Name="ClientId" SessionField="Client" Type="Int32" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="SubjectID" Type="String" />
                  <asp:Parameter Name="TeacherID" Type="String" />
                  <asp:Parameter Name="Year" Type="String" />
                  <asp:Parameter Name="original_ID" Type="Int32" />
                  <asp:Parameter Name="original_SubjectID" Type="String" />
                  <asp:Parameter Name="original_TeacherID" Type="String" />
                  <asp:Parameter Name="original_Year" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
       
    </div>
    </div>
        </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    
</asp:Content>

