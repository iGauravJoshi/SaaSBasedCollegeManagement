<%@ Page Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="Studentcollegedetails.aspx.cs" Inherits="Studentcollegedetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Student College Details
					</div>
				</div>
			</div>
		</div>
         <section id="content">
			<div class="container">
            
				<div class="row">
                 <div class="col-sm-6">
                    <div class="widget" data-scroll-reveal>
							
								<div class="form-group" id="newsletter-name-group">
   
      
   
  
      <asp:Panel ID="Panel1" runat="server">
         
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
              <asp:UpdatePanel ID="UpdatePanel2" runat="server">
              <ContentTemplate>
                    
              <asp:DropDownList ID="DropDownList6" runat="server" class="form-control"
                  DataSourceID="SqlDataSource7" DataTextField="Name" 
                  DataValueField="Name" 
                      onselectedindexchanged="DropDownList6_SelectedIndexChanged" 
                      AutoPostBack="True">
              </asp:DropDownList>
              <br />
              <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  SelectCommand="SELECT DISTINCT [Name] FROM [client]"></asp:SqlDataSource>
          
          </ContentTemplate>
              </asp:UpdatePanel> 
          </asp:Panel>

       
        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>
        
        
                <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" onselectedindexchanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name"></asp:DropDownList>  <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                    SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                    <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
          
        </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
        <ContentTemplate>
        
        
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" class="form-control" placeholder="Branch"
                DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList> <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
               SelectCommand="GetBranch" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList4" Name="CName" 
                        PropertyName="SelectedValue" Type="String" />
                        <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            </ContentTemplate>
        </asp:UpdatePanel>
 
        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
        <ContentTemplate>
             <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" class="form-control"
            DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name"></asp:DropDownList> <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                SelectCommand="GetStudyingYearName" SelectCommandType="StoredProcedure">
                <SelectParameters>
                       <asp:ControlParameter ControlID="DropDownList4" Name="CName" 
                           PropertyName="SelectedValue" Type="String" />
                           <asp:SessionParameter Name="Cid" DefaultValue="2" SessionField="Client" Type="String" />
                   </SelectParameters>
            </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
       
        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
        <ContentTemplate>
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" class="form-control"
                    DataSourceID="SqlDataSource5" DataTextField="SName" DataValueField="SName">
                </asp:DropDownList> <br />
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [SName] FROM [Student]"></asp:SqlDataSource>
                    </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="UpdatePanel10" runat="server"><ContentTemplate>
            <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" class="form-control"
                DataSourceID="SqlDataSource4" DataTextField="RollNumber" 
                DataValueField="RollNumber">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                    
                    SelectCommand="SELECT [RollNumber] FROM [Student] WHERE (([SName] = @SName))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList5" Name="SName" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate></asp:UpdatePanel>
            <br />
      
        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
        <ContentTemplate>
                        <asp:DropDownList ID="DropDownList7" runat="server" class="form-control"
                    DataSourceID="SqlDataSource8" DataTextField="Name" DataValueField="Name">
                </asp:DropDownList> <br />
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                    SelectCommand="GetExamType1" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList4" Name="CName" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="UpdatePanel8" runat="server">
            <ContentTemplate>
            
            
        <asp:DropDownList ID="DropDownList2" class="form-control"
                    runat="server" AutoPostBack="True" DataSourceID="SqlDataSource9" 
                    DataTextField="year of admit" DataValueField="year of admit"></asp:DropDownList> 
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SaaSBasedCollegeManagement %>" 
                    SelectCommand="GetYearOfAdmit" SelectCommandType="StoredProcedure">
                </asp:SqlDataSource>
                <br />
                
           </ContentTemplate>
            </asp:UpdatePanel>
        
        <asp:UpdatePanel ID="UpdatePanel9" runat="server">
            <ContentTemplate>
            
            
        <asp:RadioButton ID="RadioButton1" Text="Pass" runat="server" GroupName="rsult" /><asp:RadioButton ID="RadioButton2" Text="Fail" runat="server" GroupName="rsult" /></td>
            
            <br /><br />
    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Submit" 
            onclick="Button1_Click"></asp:Button> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label4" runat="server"></asp:Label>
       </ContentTemplate>
            </asp:UpdatePanel>
    
    </div>
    
    </div>
    </div>
                </div>

                <div class="row">
                 <div class="col-sm-8">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">student college details</h2>
                            <form>
								<div class="form-group" id="Div1">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                
                                
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataKeyNames="ID" DataSourceID="SqlDataSource6" BackColor="White" BorderColor="#CCCCCC" 
                                        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                                        GridLines="Horizontal">
              <Columns>
                  <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                      SortExpression="ID" ItemStyle-HorizontalAlign="Center" />
                  <asp:BoundField DataField="SName" HeaderText="Student" ReadOnly="True" 
                      SortExpression="SName" ItemStyle-HorizontalAlign="Center" />
                  <asp:BoundField DataField="Name" HeaderText="Branch" ReadOnly="True" 
                      SortExpression="Name" ItemStyle-HorizontalAlign="Center" />
                  <asp:BoundField DataField="LastExamAppeared" HeaderText="LastExamAppeared" 
                      SortExpression="LastExamAppeared" ItemStyle-HorizontalAlign="Center" />
                  <asp:BoundField DataField="YearOfExam" HeaderText="YearOfExam" 
                      SortExpression="YearOfExam" ItemStyle-HorizontalAlign="Center" />
                  <asp:BoundField DataField="IsPass" HeaderText="IsPass" 
                      SortExpression="IsPass" ItemStyle-HorizontalAlign="Center" />
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
              DeleteCommand="DELETE FROM [StudentCollegeDetails] WHERE [ID] = @original_ID AND [LastExamAppeared] = @original_LastExamAppeared AND [YearOfExam] = @original_YearOfExam AND [IsPass] = @original_IsPass" 
              InsertCommand="INSERT INTO [StudentCollegeDetails] ([ID], [StudentID], [StudyingYear], [BranchID], [LastExamAppeared], [YearOfExam], [IsPass]) VALUES (@ID, @StudentID, @LastExamAppeared, @YearOfExam, @IsPass)" 
              OldValuesParameterFormatString="original_{0}" 
              SelectCommand="SELECT [StudentCollegeDetails].[ID], [Branch].[Name],[SName], [LastExamAppeared], [YearOfExam], [IsPass] FROM [StudentCollegeDetails],[Student],[Branch] Where ([StudentCollegeDetails].[StudentID]=[Student].[StudentID]) AND ([Branch].[ID]=[BranchID])" 
              UpdateCommand="UPDATE [StudentCollegeDetails] SET [LastExamAppeared] = @LastExamAppeared, [YearOfExam] = @YearOfExam, [IsPass] = @IsPass WHERE [ID] = @original_ID AND [LastExamAppeared] = @original_LastExamAppeared AND [YearOfExam] = @original_YearOfExam AND [IsPass] = @original_IsPass">
              <DeleteParameters>
                  <asp:Parameter Name="original_ID" Type="Int32" />
                  
                  <asp:Parameter Name="original_LastExamAppeared" Type="String" />
                  <asp:Parameter Name="original_YearOfExam" Type="String" />
                  <asp:Parameter Name="original_IsPass" Type="String" />
              </DeleteParameters>
               
              <InsertParameters>
                  <asp:Parameter Name="ID" Type="Int32" />
                  <asp:Parameter Name="StudentID" Type="Int32" />
                  <asp:Parameter Name="BranchID" Type="Int32" />
                  <asp:Parameter Name="LastExamAppeared" Type="String" />
                  <asp:Parameter Name="YearOfExam" Type="String" />
                  <asp:Parameter Name="IsPass" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="BranchID" Type="Int32" />
                  <asp:Parameter Name="LastExamAppeared" Type="String" />
                  <asp:Parameter Name="YearOfExam" Type="String" />
                  <asp:Parameter Name="IsPass" Type="String" />
                  <asp:Parameter Name="original_ID" Type="Int32" />
                  <asp:Parameter Name="original_LastExamAppeared" Type="String" />
                  <asp:Parameter Name="original_YearOfExam" Type="String" />
                  <asp:Parameter Name="original_IsPass" Type="String" />
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