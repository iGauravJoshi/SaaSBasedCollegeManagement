<%@ Page Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="TestDetails.aspx.cs" Inherits="TestDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
          </cc1:ToolkitScriptManager>
        <!-- ========== TITLE START ========== -->

		<div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Test Details
					</div>
				</div>
			</div>
		</div>

		<!-- ========== TITLE END ========== -->


		
       <section id="content">
		
        	<div class="container">
		
        		<div class="row">
                <asp:Panel ID="Panel2" runat="server">
                <asp:UpdatePanel ID="UpdatePanel8" runat="server"><ContentTemplate>
                <div class="col-sm-6">
                    <div class="widget" data-scroll-reveal>
							<h2 class="style3">Add Test details</h2>
								<div class="form-group" id="newsletter-name-group">
         
                            <asp:Panel ID="Panel1" runat="server">
          
         
      <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
    
     
    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
      <br />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="SELECT DISTINCT [Name] FROM [client]"></asp:SqlDataSource>
      
               </ContentTemplate>
              </asp:UpdatePanel>
               </asp:Panel>

                            <asp:UpdatePanel ID="UpdatePanel6" runat="server">
  <ContentTemplate>
 
    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
            <br />
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                     </ContentTemplate>
  </asp:UpdatePanel>

                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
 
   
          
    <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name"></asp:DropDownList><br />
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                        SelectCommand="GetBranch" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="CName" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
         </ContentTemplate>
        </asp:UpdatePanel>

                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
        
        <ContentTemplate>
    
      <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server" 
            DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="Name" 
                AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                SelectCommand="GetStudyingYearName" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="CName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </ContentTemplate>
        </asp:UpdatePanel>
         
                            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
        <ContentTemplate>
      
        <asp:DropDownList ID="DropDownList5" CssClass="form-control" runat="server" AutoPostBack="True"
        DataSourceID="SqlDataSource5" DataTextField="SubName" DataValueField="SubName">
        </asp:DropDownList><br />
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                SelectCommand="GetSubjectName" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="CName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList3" Name="BName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </ContentTemplate>
          </asp:UpdatePanel>

                            <asp:UpdatePanel ID="UpdatePanel7" runat="server">
          <ContentTemplate>
         

          <asp:DropDownList ID="DropDownList6"  CssClass="form-control" runat="server" AutoPostBack="True" OnDataBound="DropDownList5_SelectedIndexChanged" 
        DataSourceID="SqlDataSource6" DataTextField="Name" DataValueField="Name" 
            onselectedindexchanged="DropDownList5_SelectedIndexChanged">
        </asp:DropDownList>
         </ContentTemplate>
          </asp:UpdatePanel>

        <br />
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
            SelectCommand="GetExamType1" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="CName" 
                    PropertyName="SelectedValue" Type="String" />
                    <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
                            <div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Description"></asp:TextBox> 
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
									</div>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
                   ErrorMessage="This Field should not be empty" ForeColor="Red" 
                   ValidationGroup="TD"></asp:RequiredFieldValidator>
                                <br />


                                 <div class="input-group">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="MaximumMarks"></asp:TextBox> 
										 
									</div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" 
                   ErrorMessage="This Field should not be empty" ForeColor="Red" 
                   ValidationGroup="TD"></asp:RequiredFieldValidator>
    
     <div class="input-group">
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Select Date"></asp:TextBox> 
                                     
										
<asp:ImageButton ID="imgPopup" runat="server" ImageAlign="AbsMiddle" 
                        ImageUrl="~/images/calendar2.png" />
                    <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
                        PopupButtonID="imgPopup" TargetControlID="TextBox4">
        </cc1:CalendarExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                   ErrorMessage="This Field should not be empty" ForeColor="Red" ControlToValidate="TextBox4" 
                   ValidationGroup="TD"></asp:RequiredFieldValidator>
      </div>
  <br />
    
    
    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" onclick="Button1_Click"></asp:Button>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label1" runat="server"></asp:Label>
          </div>
   
    </div>
    </div>
                </ContentTemplate></asp:UpdatePanel>
                </asp:Panel>
                </div>
           </div>



    
     <div class="col-sm-8">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">test details&nbsp;</h2>
                            <form>
                            
								<div class="form-group" id="Div1">
                                <div class="row">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataKeyNames="ID" DataSourceID="SqlDataSource11" BackColor="White" 
                      BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                      ForeColor="Black" GridLines="Horizontal" Width="703px">
              <Columns>
                  <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                      SortExpression="ID" />
                  <asp:BoundField DataField="TestName" HeaderText="TestName" 
                      SortExpression="TestName" />
                  <asp:BoundField DataField="Description" HeaderText="Description" 
                      SortExpression="Description" />
                  <asp:BoundField DataField="MaxMarks" HeaderText="MaxMarks" 
                      SortExpression="MaxMarks" />
                  <asp:BoundField DataField="Subject" HeaderText="Subject" 
                      SortExpression="Subject" />
                  <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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

          <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
              ConnectionString="<%$ ConnectionStrings:SaaSBasedCollegeManagement %>" 
              DeleteCommand="DELETE FROM [TestDetails] WHERE [ID] = @original_ID AND [Subject] = @original_Subject AND [TestName] = @original_TestName AND [Description] = @original_Description AND [MaxMarks] = @original_MaxMarks AND [Date] = @original_Date" 
              InsertCommand="INSERT INTO [TestDetails] ([ID], [Subject], [TestName], [Description], [MaxMarks], [Date]) VALUES (@ID, @Subject, @TestName, @Description, @MaxMarks, @Date)" 
              OldValuesParameterFormatString="original_{0}" 
              SelectCommand="SELECT [ID], [Subject], [TestName], [Description], [MaxMarks], [Date] FROM [TestDetails] WHERE ([ClientId] = @ClientId)" 
              
                      
                      UpdateCommand="UPDATE [TestDetails] SET [Subject] = @Subject, [TestName] = @TestName, [Description] = @Description, [MaxMarks] = @MaxMarks, [Date] = @Date WHERE [ID] = @original_ID AND [Subject] = @original_Subject AND [TestName] = @original_TestName AND [Description] = @original_Description AND [MaxMarks] = @original_MaxMarks AND [Date] = @original_Date" 
                      ConflictDetection="CompareAllValues">
              <DeleteParameters>
                  <asp:Parameter Name="original_ID" Type="Int32" />
                  <asp:Parameter Name="original_Subject" Type="String" />
                  <asp:Parameter Name="original_TestName" Type="String" />
                  <asp:Parameter Name="original_Description" Type="String" />
                  <asp:Parameter Name="original_MaxMarks" Type="Int32" />
                  <asp:Parameter Name="original_Date" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="ID" Type="Int32" />
                  <asp:Parameter Name="Subject" Type="String" />
                  <asp:Parameter Name="TestName" Type="String" />
                  <asp:Parameter Name="Description" Type="String" />
                  <asp:Parameter Name="MaxMarks" Type="Int32" />
                  <asp:Parameter Name="Date" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:SessionParameter Name="ClientId" SessionField="Client" Type="String" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="Subject" Type="String" />
                  <asp:Parameter Name="TestName" Type="String" />
                  <asp:Parameter Name="Description" Type="String" />
                  <asp:Parameter Name="MaxMarks" Type="Int32" />
                  <asp:Parameter Name="Date" Type="String" />
                  <asp:Parameter Name="original_ID" Type="Int32" />
                  <asp:Parameter Name="original_Subject" Type="String" />
                  <asp:Parameter Name="original_TestName" Type="String" />
                  <asp:Parameter Name="original_Description" Type="String" />
                  <asp:Parameter Name="original_MaxMarks" Type="Int32" />
                  <asp:Parameter Name="original_Date" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
              </ContentTemplate>
         
       </asp:UpdatePanel>
                                </div>
                                </div>
                            
                            </form>
                        </div>
      </div>

</section>                      
</asp:Content>