<%@ Page Language="C#"  MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="StudentOfficeDetails.aspx.cs" Inherits="StudentOfficeDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </cc1:ToolkitScriptManager>

<div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Student office Details
					</div>
				    <br />
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
      
   
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
     <ContentTemplate>  

 <asp:Panel ID="Panel1" runat="server">
   
     
                 
                                    <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" 
                                        class="form-control" DataSourceID="SqlDataSource2" DataTextField="Name" 
                                        DataValueField="Name" 
                                        onselectedindexchanged="DropDownList7_SelectedIndexChanged">
                                    </asp:DropDownList>
   
     
                 
                                    </asp:Panel>
         <br />
         <br />
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
             ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
             SelectCommand="SELECT [Name] FROM [client] ORDER BY [ID]"></asp:SqlDataSource>
              </ContentTemplate></asp:UpdatePanel>                       

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
            SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
       <br />


         <asp:DropDownList ID="DropDownList6" class="form-control" runat="server" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="Name" 
                                        DataValueField="Name">
                                    </asp:DropDownList>
                                     </ContentTemplate>
                                        </asp:UpdatePanel>
                    
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetBranch" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                            </SelectParameters>
                                    </asp:SqlDataSource>

                    <br />
                    <br />

                    <asp:UpdatePanel ID="UpdatePanel3" runat="server"><ContentTemplate>
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" class="form-control"
            DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
            SelectCommand="GetStudyingYearName" SelectCommandType="StoredProcedure">
            <SelectParameters>
                       <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                           PropertyName="SelectedValue" Type="String" />
                       <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                   </SelectParameters>
        </asp:SqlDataSource>
        </ContentTemplate></asp:UpdatePanel>
                    
                    <br />
                    <br />

                    <asp:UpdatePanel ID="UpdatePanel4" runat="server"><ContentTemplate>
            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" class="form-control"
                DataSourceID="SqlDataSource5" DataTextField="SName" DataValueField="SName" 
                onselectedindexchanged="DropDownList5_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                SelectCommand="SELECT DISTINCT [SName] FROM [Student]"></asp:SqlDataSource>
            </ContentTemplate></asp:UpdatePanel>
       
                    <br />
                    <br />
                    
                    <asp:UpdatePanel ID="UpdatePanel5" runat="server"><ContentTemplate>
            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" class="form-control"
                DataSourceID="SqlDataSource4" DataTextField="RollNumber" 
                DataValueField="RollNumber" 
                onselectedindexchanged="DropDownList4_SelectedIndexChanged1">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>"
                SelectCommand="SELECT DISTINCT [RollNumber] FROM [Student] WHERE ([SName] = @SName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList5" Name="SName" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </ContentTemplate></asp:UpdatePanel>
                    
                    <br />
                    <br />
                    
                    <asp:UpdatePanel ID="UpdatePanel6" runat="server"><ContentTemplate>
            <div class="input-group">
                                <asp:TextBox ID="TextBox1" class="form-control" placeholder="Remark" runat="server"></asp:TextBox>
                        <div class="input-group-addon"></div> </div>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" 
            ErrorMessage="This field should not be empty" ForeColor="Red" 
            ValidationGroup="sm"></asp:RequiredFieldValidator>
                       <br />
                       <br />


          IsApproved
            &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Text="Yes"  GroupName="G1"></asp:RadioButton>
            &nbsp;&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text="No"  GroupName="G1"></asp:RadioButton> 
            <br />
            <br />

             <div class="input-group">
                                <asp:TextBox ID="TextBox2" class="form-control" placeholder="Fees Paid" 
                                    runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                         
                        <div class="input-group-addon"></div> </div>
             
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="TextBox2"
                      ErrorMessage="This field should not be empty" ForeColor="Red" 
                      ValidationGroup="sod"></asp:RequiredFieldValidator>

                        <br />
                        <br />
        
             
          <div class="input-group">
                                <asp:TextBox ID="TextBox3" class="form-control" placeholder="Total fees" runat="server"></asp:TextBox>
                         
                        <div class="input-group-addon"></div> </div>
          <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="LessThanEqual"
                      ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="**Total Fees Should be more than Fees Paid" ForeColor="Red"></asp:CompareValidator>
                    
                     <div class="input-group">
                                <asp:TextBox ID="TextBox4" class="form-control" placeholder="Due Date" runat="server"></asp:TextBox>
                        <div class="input-group-addon">
<asp:ImageButton ID="imgPopup" runat="server" ImageAlign="AbsMiddle" 
                        ImageUrl="~/images/calendar2.png" />
                    <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
                        PopupButtonID="imgPopup" TargetControlID="TextBox4">
        </cc1:CalendarExtender>
    </div> </div>
    <br /><br />
        <asp:Button ID="Button2" runat="server"  class="btn btn-primary" onclick="Button1_Click" Text="Submit" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
           </ContentTemplate>
   </asp:UpdatePanel>
        
                </div>
          </form>
          </div>
          </div>
          </div>
                <div class="row">
            <div class="col-sm-10">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Student Details</h2>
                            <asp:UpdatePanel ID="UpdatePanel7" runat="server"><ContentTemplate>
                            <form>
								<div class="form-group" id="Div1">
          <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource6" 
              AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#CCCCCC" 
                                        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                                        GridLines="Horizontal">
              <Columns>
                  <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                      SortExpression="ID" />
                  <asp:BoundField DataField="SName" HeaderText="Student" 
                      SortExpression="SName" />
                  <asp:BoundField DataField="DueDate" HeaderText="DueDate" 
                      SortExpression="DueDate" />
                  <asp:BoundField DataField="TotalFees" HeaderText="TotalFees" 
                      SortExpression="TotalFees" />
                  <asp:BoundField DataField="FeesPaid" HeaderText="FeesPaid" 
                      SortExpression="FeesPaid" />
                  <asp:BoundField DataField="ISApproved" HeaderText="ISApproved" 
                      SortExpression="ISApproved" />
                  <asp:BoundField DataField="Remarks" HeaderText="Remarks" 
                      SortExpression="Remarks" />
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
              ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
              DeleteCommand="DELETE FROM [StudentOfficeDetails] WHERE [ID] = @original_ID AND [DueDate] = @original_DueDate AND [TotalFees] = @original_TotalFees AND [FeesPaid] = @original_FeesPaid AND [ISApproved] = @original_ISApproved AND [Remarks] = @original_Remarks" 
              InsertCommand="INSERT INTO [StudentOfficeDetails] ([ID], [DueDate], [TotalFees], [FeesPaid], [ISApproved], [Remarks], [StudentID]) VALUES (@ID, @DueDate, @TotalFees, @FeesPaid, @ISApproved, @Remarks, @StudentID)" 
              OldValuesParameterFormatString="original_{0}" 
              SelectCommand="SELECT [ID], [DueDate], [TotalFees], [FeesPaid], [ISApproved], [Remarks], [SName] FROM [StudentOfficeDetails],[Student] WHERE ([StudentOfficeDetails].[StudentID]=[Student].[StudentID])" 
              UpdateCommand="UPDATE [StudentOfficeDetails] SET [DueDate] = @DueDate, [TotalFees] = @TotalFees, [FeesPaid] = @FeesPaid, [ISApproved] = @ISApproved, [Remarks] = @Remarks WHERE [ID] = @original_ID AND [DueDate] = @original_DueDate AND [TotalFees] = @original_TotalFees AND [FeesPaid] = @original_FeesPaid AND [ISApproved] = @original_ISApproved AND [Remarks] = @original_Remarks">
              <DeleteParameters>
                  <asp:Parameter Name="original_ID" Type="Int32" />
                  <asp:Parameter Name="original_DueDate" Type="String" />
                  <asp:Parameter Name="original_TotalFees" Type="Int32" />
                  <asp:Parameter Name="original_FeesPaid" Type="Int32" />
                  <asp:Parameter Name="original_ISApproved" Type="String" />
                  <asp:Parameter Name="original_Remarks" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="ID" Type="Int32" />
                  <asp:Parameter Name="DueDate" Type="String" />
                  <asp:Parameter Name="TotalFees" Type="Int32" />
                  <asp:Parameter Name="FeesPaid" Type="Int32" />
                  <asp:Parameter Name="ISApproved" Type="String" />
                  <asp:Parameter Name="Remarks" Type="String" />
                  <asp:Parameter Name="StudentID" Type="Int32" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="DueDate" Type="String" />
                  <asp:Parameter Name="TotalFees" Type="Int32" />
                  <asp:Parameter Name="FeesPaid" Type="Int32" />
                  <asp:Parameter Name="ISApproved" Type="String" />
                  <asp:Parameter Name="Remarks" Type="String" />
                  <asp:Parameter Name="original_ID" Type="Int32" />
                  <asp:Parameter Name="original_DueDate" Type="String" />
                  <asp:Parameter Name="original_TotalFees" Type="Int32" />
                  <asp:Parameter Name="original_FeesPaid" Type="Int32" />
                  <asp:Parameter Name="original_ISApproved" Type="String" />
                  <asp:Parameter Name="original_Remarks" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
          </div>
          </form>
                            </ContentTemplate></asp:UpdatePanel>
          </div>
          </div>
          
    </div>
     </div>
      
    
</asp:Content>