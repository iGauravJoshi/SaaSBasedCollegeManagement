<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="ExamFees.aspx.cs" Inherits="Examfees" %>
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
					Exam Fees
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
							
								<div class="form-group" id="examfees-name-group">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                    
                                    <asp:Panel ID="Panel1" runat="server">
                                    <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
                                            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                                    </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                            SelectCommand="SELECT [Name] FROM [client] ORDER BY [ID]">
                                        </asp:SqlDataSource>
                                    </asp:Panel>
                                    </ContentTemplate>
                                    </asp:UpdatePanel>
									<br /><br />
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                    
                                    <asp:DropDownList ID="DropDownList1" class="form-control" placeholder="Course" 
                                        runat="server" DataSourceID="SqlDataSource3" DataTextField="Name" 
                                        DataValueField="Name" AutoPostBack="True"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <br />
                                    <br />
                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                    <ContentTemplate>
                                    
                                    <asp:DropDownList ID="DropDownList3" class="form-control" placeholder="Branch" 
                                        runat="server" DataSourceID="SqlDataSource4" DataTextField="Name" 
                                        DataValueField="Name" AutoPostBack="True"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetBranch" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                                                    PropertyName="SelectedValue" Type="String"/>
                                                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                            </SelectParameters>
                                    </asp:SqlDataSource>
                                       </ContentTemplate>
                                    </asp:UpdatePanel>
                                        <br />
								        <br />
                                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                        <ContentTemplate>
                                        
                                        <asp:DropDownList ID="DropDownList4" class="form-control" placeholder="Year" 
                                        runat="server" DataSourceID="SqlDataSource5" DataTextField="Name" 
                                        DataValueField="Name" AutoPostBack="True"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetStudyingYearName" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String"/>
                                            </SelectParameters>
                                            
                                    </asp:SqlDataSource>
                                    
                                    </ContentTemplate>
                                        </asp:UpdatePanel>
                                    <br /><br />
                                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                    <ContentTemplate>
                                    
                                    <asp:DropDownList ID="DropDownList5" class="form-control" placeholder="Name" 
                                        runat="server" DataSourceID="SqlDataSource6" DataTextField="SName" 
                                        DataValueField="SName" AutoPostBack="True"></asp:DropDownList>
                                    
									<asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetStudentName" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                                                PropertyName="SelectedValue" Type="String"/>
                                            <asp:ControlParameter ControlID="DropDownList3" Name="BName" 
                                                PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="DropDownList4" Name="Year" 
                                                PropertyName="SelectedValue" Type="String" />
                                            <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    </ContentTemplate>
                                    </asp:UpdatePanel>
                                        <br />
                                        <br />
                                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                        <ContentTemplate>
                                        
                                         <div class="input-group">
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="fees Paid"></asp:TextBox>
										<div class="input-group-addon"><i class="fa fa-rupee"></i></div>
									</div>
                                    <br /><br />
									
                                        <asp:DropDownList ID="DropDownList7" runat="server" class="form-control" 
                                            placeholder="Exam Type" AutoPostBack="True" DataSourceID="SqlDataSource7" 
                                            DataTextField="Name" DataValueField="Name"></asp:DropDownList>
										<asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:SaaSBasedCollegeManagement %>" 
                                            SelectCommand="GetExamType1" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
										
									</div>
                                    </ContentTemplate>
                                    </asp:UpdatePanel>
                                <br /><br />
                                <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                                <ContentTemplate>
                                
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                </ContentTemplate>
                                </asp:UpdatePanel>
                                <br /><br />
                                <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                                <ContentTemplate>
                                
                                <div class="input-group">
                                <asp:TextBox ID="TextBox18" class="form-control" placeholder="Date" runat="server"></asp:TextBox>
                                <div class="input-group-addon">
                                <asp:CalendarExtender ID="CalendarExtender1" Format="dd/MM/yyyy" PopupButtonID="imgPopup" TargetControlID="TextBox18" runat="server"></asp:CalendarExtender>
                                <asp:ImageButton ID="imgPopup" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/calendar2.png" />
                            </div></div>
                                
                                </ContentTemplate></asp:UpdatePanel>
                            <br /><br />
                            <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                            <ContentTemplate>
                            
                            <asp:Label ID="Label1" runat="server" Text="&nbsp;&nbsp;DD"></asp:Label>&nbsp;&nbsp;
                            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="CheckBox1_CheckedChanged"></asp:CheckBox>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                            <br /><br />
                            <asp:UpdatePanel ID="UpdatePanel12" runat="server">
                            <ContentTemplate>
                            
                            <asp:Label ID="Label2" runat="server" Text="&nbsp;&nbsp;Cash"></asp:Label>&nbsp;&nbsp;
                            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="CheckBox2_CheckedChanged1"></asp:CheckBox>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                            <br /><br />
                            <asp:UpdatePanel ID="UpdatePanel13" runat="server">
                            
                            <ContentTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Total Fees"></asp:TextBox>
                            <br />
                            </ContentTemplate>
                            </asp:UpdatePanel>        
                                    <br />
                                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                    <ContentTemplate>
                                    
                                    <asp:Panel ID="Panel2" runat="server" Visible="false">

                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="DD No."></asp:TextBox>
                                    </asp:Panel>
                                    </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="CheckBox1" EventName="CheckedChanged" />
                                            <asp:AsyncPostBackTrigger ControlID="CheckBox2" EventName="CheckedChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                    <br />
                                    <asp:UpdatePanel ID="UpdatePanel14" runat="server">
                                    <ContentTemplate>
                                    
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Submit" 
                                        onclick="Button_Click"></asp:Button>
						                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                            </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
						
                        </div>
                </div>
                
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Exam fees View</h2>
                            <form>
								<div class="form-group" id="Div1">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                            
							          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                          DataSourceID="SqlDataSource1" AllowPaging="True" DataKeyNames="ID" 
                                          BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                          CellPadding="4" ForeColor="Black" GridLines="Horizontal">
              <Columns>
                  <asp:BoundField DataField="ID" HeaderText="ID" 
                      SortExpression="ID" ReadOnly="True" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                  <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                  <asp:BoundField DataField="Examname" HeaderText="Examname" 
                      SortExpression="Examname" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                  <asp:BoundField DataField="feespaid" HeaderText="FeesPaid" 
                      SortExpression="feespaid" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                  <asp:BoundField DataField="dateOfPayment" HeaderText="DateOfPayment" 
                      SortExpression="dateOfPayment" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
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
              
              SelectCommand="SELECT [ID], [SName], [Examname], [feespaid], [dateOfPayment] FROM [ExamFees],[Student] WHERE ([ExamFees].[ClientId] = @ClientId) AND ([sid]=[StudentID])" 
              OldValuesParameterFormatString="original_{0}" 
                                          DeleteCommand="DELETE FROM [ExamFees] WHERE [ID] = @original_ID" 
                                          InsertCommand="INSERT INTO [ExamFees] ([ID], [Examname], [feespaid], [dateOfPayment]) VALUES (@ID, @Examname, @feespaid, @dateOfPayment)" 
                                          UpdateCommand="UPDATE [ExamFees] SET [Examname] = @Examname, [feespaid] = @feespaid, [dateOfPayment] = @dateOfPayment WHERE [ID] = @original_ID">
              <DeleteParameters>
                  <asp:Parameter Name="original_ID" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="ID" Type="Int32" />
                  <asp:Parameter Name="sid" Type="Int32" />
                  <asp:Parameter Name="Examname" Type="String" />
                  <asp:Parameter Name="feespaid" Type="Int32" />
                  <asp:Parameter Name="dateOfPayment" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:SessionParameter Name="ClientId" SessionField="Client" Type="String" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="sid" Type="Int32" />
                  <asp:Parameter Name="Examname" Type="String" />
                  <asp:Parameter Name="feespaid" Type="Int32" />
                  <asp:Parameter Name="dateOfPayment" Type="String" />
                  <asp:Parameter Name="original_ID" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource> 
          </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
             </div>
                                </form>
						</div>
            </div>

                
                </div>

            </div>

        </section>

</asp:Content>

