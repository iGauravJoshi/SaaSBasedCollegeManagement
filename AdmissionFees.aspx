<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="AdmissionFees.aspx.cs" Inherits="AdmissionFees" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <script type="text/javascript">
        //Function to allow only numbers to textbox
        function validate(key) {
            //getting key code of pressed key
            var keycode = (key.which) ? key.which : key.keyCode;
            var phn = document.getElementById('TextBox1');

            //comparing pressed keycodes
            if (!(keycode == 8 || keycode == 46) && (keycode < 48 || keycode > 57)) {
                return false

            }
            else {
                //Condition to check textbox contains ten numbers or not 
                if (phn.value.length < 10) {
                    return true;
                }
                else {
                    return false;
                }
            }
        }
</script>
    <script type="text/javascript">
    //Function to allow only numbers to textbox
    function validate1(key) {
        //getting key code of pressed key
        var keycode = (key.which) ? key.which : key.keyCode;
        var phn = document.getElementById('TextBox2');

        //comparing pressed keycodes
        if (!(keycode == 8 || keycode == 46) && (keycode < 48 || keycode > 57)) {
            return false

        }
        else {
            //Condition to check textbox contains ten numbers or not 
            if (phn.value.length < 10) {
                return true;
            }
            else {
                return false;
            }
        }
    }
</script>
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
						Admission Fees
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
							<h2 class="style3">&nbsp;Add Admission Fees</h2>
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
                                    </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <br />
                                      <br />
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                               
                                   <asp:DropDownList ID="DropDownList3" class="form-control" runat="server" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Name" 
                                        DataValueField="Name">
                                    </asp:DropDownList>
                                   </ContentTemplate>
                                </asp:UpdatePanel>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                  
                                    <br />
                                        <br />
                                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                        <ContentTemplate>
                                       
                                        <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Name" 
                                        DataValueField="Name">
                                    </asp:DropDownList>
                                     </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetBranch" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList3" Name="CName" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                            </SelectParameters>
                                    </asp:SqlDataSource>

                                        <br />
								<br />
                                <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                <ContentTemplate>
                                

                                 <asp:DropDownList ID="DropDownList4" class="form-control" runat="server" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Name" 
                                        DataValueField="Name">
                                    </asp:DropDownList>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetStudyingYearName" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList3" Name="CName" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                            </SelectParameters>
                                    </asp:SqlDataSource>

                                        <br />
                                        <br />
                                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                        <ContentTemplate>
                                       

                                         <asp:DropDownList ID="DropDownList5" class="form-control" runat="server" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="SName" 
                                        DataValueField="SName">
                                    </asp:DropDownList>
                                     </ContentTemplate>
                                        </asp:UpdatePanel>

                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetStudentName" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList3" Name="CName" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="DropDownList1" Name="BName" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="DropDownList4" Name="Year" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                            </SelectParameters>
                                    </asp:SqlDataSource>


                                        <br />
                                        <br />
                                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                        <ContentTemplate>
                                      

                                        <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"></asp:FileUpload>
                                          </ContentTemplate>
                                        </asp:UpdatePanel>

                                        <br />
                                        <br />
									<div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" onkeypress="return validate(event)" placeholder="Fees Paid"></asp:TextBox>
										<div class="input-group-addon"><i class="fa fa-rupee"></i></div>
									</div>
                                <br /><br />


                                <div class="input-group">
                                <asp:TextBox ID="TextBox18" class="form-control" placeholder="Date" runat="server"></asp:TextBox>
                        <div class="input-group-addon">


                        <asp:CalendarExtender ID="CalendarExtender2" Format="dd/MM/yyyy" PopupButtonID="imgPopup" TargetControlID="TextBox18" runat="server" ></asp:CalendarExtender>                    
                    <asp:ImageButton ID="imgPopup" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/images/calendar2.png" />
                            </div>
                            </div>
                            <br /><br />
                            <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                            <ContentTemplate>
                            
                            <asp:CheckBox ID="CheckBox1" class="form-control" Text="DD" runat="server" 
                                        oncheckedchanged="checkbox1_CheckedChanged" AutoPostBack="True"></asp:CheckBox>
                                        </ContentTemplate>
                            </asp:UpdatePanel>
                            <br /><br />
                            <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                            <ContentTemplate>
                            

                            <asp:CheckBox ID="CheckBox2" class="form-control" Text="Cash" runat="server" 
                                        AutoPostBack="True" oncheckedchanged="CheckBox2_CheckedChanged"></asp:CheckBox>
                                        </ContentTemplate>
                            </asp:UpdatePanel>
                            <br /><br />
                                <div class="input-group">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" onkeypress="return validate1(event)" placeholder="Total Fees"></asp:TextBox>
										
									
                                          
                                       <div class="input-group-addon"><i class="fa fa-rupee"></i></div>
                                   
									</div>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                         ControlToCompare="TextBox2" ControlToValidate="TextBox1" 
                                         ErrorMessage="**Total Fees Should be more than Fees Paid" ForeColor="Red" 
                                         Operator="LessThanEqual" Type="Integer" ValidationGroup="af"></asp:CompareValidator>
                                <br />

                               <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                              
                              <ContentTemplate>
                              
                                <asp:Panel ID="Panel2" runat="server" Visible="False">
             
            
             
                <div class="input-group">
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="DD NO"></asp:TextBox>
                                        <div class="input-group-addon"><i class="fa fa-qq"></i></div>
                                    </div>
                                         </asp:Panel>
                                         </ContentTemplate>
                                          <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="CheckBox1" EventName="CheckedChanged" />
                                            <asp:AsyncPostBackTrigger ControlID="CheckBox2" EventName="CheckedChanged" />
                                        </Triggers>
										 </asp:UpdatePanel>
									</div>
            
           
                                <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                                <ContentTemplate>
                                

                                <asp:Button ID="Button1" runat="server" ValidationGroup="af" CausesValidation="true" class="btn btn-primary" 
                                Text="Submit" onclick="Button1_Click"></asp:Button>
						    
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
						    
                                 </ContentTemplate>
                                </asp:UpdatePanel>
                                </div>
						</div>
                </div>

                <div class="row">

                <div class="col-sm-12">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Fees Details</h2>
                            <form>
								<div class="form-group" id="Div2">
                           
                           
                           <asp:UpdatePanel ID="UpdatePanel12" runat="server"><ContentTemplate>
                           
                           
                           <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
              DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" 
                                   BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                   ForeColor="Black" GridLines="Horizontal">
              <Columns>
                  <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                      SortExpression="ID" />
                  <asp:BoundField DataField="SName" HeaderText="Student" ReadOnly="True" 
                      SortExpression="SName" />
                  <asp:BoundField DataField="Name" HeaderText="NonTeacher" ReadOnly="True" 
                      SortExpression="Name" />
                  
                  <asp:TemplateField HeaderText="feespaid" SortExpression="feespaid">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("feespaid") %>' 
                              Width="70px"></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label3" runat="server" Text='<%# Bind("feespaid") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="dateofpayment" SortExpression="dateofpayment">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("dateofpayment") %>' 
                              Width="70px"></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label4" runat="server" Text='<%# Bind("dateofpayment") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="cash" SortExpression="cash">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("cash") %>' 
                              Width="70px"></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label5" runat="server" Text='<%# Bind("cash") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="DD" SortExpression="DD">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DD") %>' Width="70px"></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label6" runat="server" Text='<%# Bind("DD") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Cheque/DD No" SortExpression="column1">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("column1") %>' 
                              Width="70px"></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label7" runat="server" Text='<%# Bind("column1") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="TotalFees" SortExpression="TotalFees">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("TotalFees") %>' 
                              Width="70px"></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label8" runat="server" Text='<%# Bind("TotalFees") %>'></asp:Label>
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                   ConflictDetection="CompareAllValues" 
                                   ConnectionString="<%$ ConnectionStrings:SaaSBasedCollegeManagement %>" 
                                   DeleteCommand="DELETE FROM [AdmissionFees] WHERE [ID] = @original_ID AND [feespaid] = @original_feespaid AND [dateofpayment] = @original_dateofpayment AND [cash] = @original_cash AND [DD] = @original_DD AND [DD/Chequeno] = @original_column1 AND (([TotalFees] = @original_TotalFees) OR ([TotalFees] IS NULL AND @original_TotalFees IS NULL))" 
                                   InsertCommand="INSERT INTO [AdmissionFees] ([ID], [Sid], [NonTeacherId], [feespaid], [dateofpayment], [cash], [DD], [DD/Chequeno], [TotalFees]) VALUES (@ID, @Sid, @NonTeacherId, @feespaid, @dateofpayment, @cash, @DD, @column1, @TotalFees)" 
                                   OldValuesParameterFormatString="original_{0}" 
                                   SelectCommand="SELECT [AdmissionFees].[ID], [SName], [Name], [feespaid], [dateofpayment], [cash], [DD], [DD/Chequeno] AS column1, [TotalFees] FROM [AdmissionFees],[Student],[NonTeachingStaff] WHERE ([AdmissionFees].[Sid]=[Student].[StudentID])AND([NonTeachingStaff].[ID]=[AdmissionFees].[NonTeacherId])AND([AdmissionFees].[ClientId] = @ClientId)" 
                                   UpdateCommand="UPDATE [AdmissionFees] SET [feespaid] = @feespaid, [dateofpayment] = @dateofpayment, [cash] = @cash, [DD] = @DD, [DD/Chequeno] = @column1, [TotalFees] = @TotalFees WHERE [ID] = @original_ID AND [feespaid] = @original_feespaid AND [dateofpayment] = @original_dateofpayment AND [cash] = @original_cash AND [DD] = @original_DD AND [DD/Chequeno] = @original_column1 AND (([TotalFees] = @original_TotalFees) OR ([TotalFees] IS NULL AND @original_TotalFees IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_ID" Type="Int32" />
                                            <asp:Parameter Name="original_feespaid" Type="Int32" />
                                            <asp:Parameter Name="original_dateofpayment" Type="String" />
                                            <asp:Parameter Name="original_cash" Type="String" />
                                            <asp:Parameter Name="original_DD" Type="String" />
                                            <asp:Parameter Name="original_column1" Type="String" />
                                            <asp:Parameter Name="original_TotalFees" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="ID" Type="Int32" />
                                            <asp:Parameter Name="feespaid" Type="Int32" />
                                            <asp:Parameter Name="dateofpayment" Type="String" />
                                            <asp:Parameter Name="cash" Type="String" />
                                            <asp:Parameter Name="DD" Type="String" />
                                            <asp:Parameter Name="column1" Type="String" />
                                            <asp:Parameter Name="TotalFees" Type="Int32" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:SessionParameter Name="ClientId" SessionField="Client" Type="String" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="feespaid" Type="Int32" />
                                            <asp:Parameter Name="dateofpayment" Type="String" />
                                            <asp:Parameter Name="cash" Type="String" />
                                            <asp:Parameter Name="DD" Type="String" />
                                            <asp:Parameter Name="column1" Type="String" />
                                            <asp:Parameter Name="TotalFees" Type="Int32" />
                                            <asp:Parameter Name="original_ID" Type="Int32" />
                                            <asp:Parameter Name="original_feespaid" Type="Int32" />
                                            <asp:Parameter Name="original_dateofpayment" Type="String" />
                                            <asp:Parameter Name="original_cash" Type="String" />
                                            <asp:Parameter Name="original_DD" Type="String" />
                                            <asp:Parameter Name="original_column1" Type="String" />
                                            <asp:Parameter Name="original_TotalFees" Type="Int32" />
                                        </UpdateParameters>
                               </asp:SqlDataSource>
                                    
							</ContentTemplate></asp:UpdatePanel>
						   
                                </div>
                                </form>
						</div>
            </div>

                </div>

            </div>

        </section>
</asp:Content>

