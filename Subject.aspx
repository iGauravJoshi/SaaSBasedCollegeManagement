<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Subject.aspx.cs" Inherits="Subject" %>

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
						Subject
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
							<h2 class="style3">Add New Subject</h2>
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                
                                    <asp:Panel ID="Panel1" runat="server">
                                    <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name" 
                                            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                            SelectCommand="SELECT DISTINCT [Name] FROM [client]"></asp:SqlDataSource>
                                    </asp:Panel>
                                    <br /><br />
                                    <asp:DropDownList ID="DropDownList1" class="form-control"  
                                        runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" OnDataBound="DropDownList1_SelectedIndexChanged" 
                                        DataValueField="Name" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Cid" SessionField="Client" 
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br /><br />
                                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" class="form-control" placeholder="Branch" 
              DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="Name">
          </asp:DropDownList>
          
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
              ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
              SelectCommand="GetBranch" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                      PropertyName="SelectedValue" Type="String" />
                    
                      <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
                                    <br /><br />
                                      <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True"  class="form-control"
              DataSourceID="SqlDataSource5" DataTextField="Name" DataValueField="Name">
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
          <br /><br />
									<div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Subject Name"></asp:TextBox>
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
									</div>
                                <br /><br /><br />
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Add Subject" 
                                        onclick="Button1_Click1"></asp:Button>
						            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
						        </div>
						</div>
                </div>
                
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Subjects</h2>
                           
								<div class="form-group" id="Div1">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                              AllowSorting="True" AutoGenerateColumns="False" 
                              DataSourceID="SqlDataSource1" DataKeyNames="ID" BackColor="White" 
                                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                        ForeColor="Black" GridLines="Horizontal" Width="489px">
                              <Columns>
                                  <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                                      ReadOnly="True">
                                  </asp:BoundField>
                                  <asp:BoundField DataField="SubName" HeaderText="Name" SortExpression="SubName" />
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
                                ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                SelectCommand="SELECT [ID], [SubName] FROM [Subject] WHERE [CourseID]=(SELECT [ID] FROM [Course] WHERE [Name]=@CName) AND [BranchID]=(SELECT [ID] FROM [Branch] WHERE [Name]=@BName) AND [Studyingyear]=(SELECT [ID] FROM [StudyingYear] WHERE [Name]=@YName)" 
                              DeleteCommand="DELETE FROM [Subject] WHERE [ID] = @ID" 
                              InsertCommand="INSERT INTO [Subject] ([ID], [Name]) VALUES (@ID, @Name)" 
                              UpdateCommand="UPDATE [Subject] SET [Name] = @Name WHERE [ID] = @ID">
                              <DeleteParameters>
                                  <asp:Parameter Name="ID" Type="Int32" />
                              </DeleteParameters>
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                                    PropertyName="SelectedValue" Type="String" />
                                  <asp:ControlParameter ControlID="DropDownList3" Name="BName" 
                                    PropertyName="SelectedValue" Type="String" />
                                  <asp:ControlParameter ControlID="DropDownList4" Name="YName" 
                                    PropertyName="SelectedValue" Type="String" />
                              </SelectParameters>
                              <InsertParameters>
                                  <asp:Parameter Name="ID" Type="Int32" />
                                  <asp:Parameter Name="Name" Type="String" />
                              </InsertParameters>
                              <UpdateParameters>
                                  <asp:Parameter Name="Name" Type="String" />
                                  <asp:Parameter Name="ID" Type="Int32" />
                              </UpdateParameters></asp:SqlDataSource>

                                </ContentTemplate>
                                </asp:UpdatePanel>
                                </div>
                                
						</div>
            </div>
                </div>

            </div>

        </section>
</asp:Content>

