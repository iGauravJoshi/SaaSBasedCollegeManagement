<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="Admission.aspx.cs" Inherits="Admission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: 18px;
        }
                
    </style>
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
						Hostel Admission
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
							<h2>Admission Details</h2>
								<div class="form-group" id="newsletter-name-group">
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
                                    <br />
                                    
                                   <asp:DropDownList ID="DropDownList3" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource4" DataTextField="Name" 
                                        DataValueField="Name" 
                                        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                                       </asp:DropDownList>
                                       
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                       
                                        <br />

                                         <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource3" DataTextField="Name" 
                                        DataValueField="Name">
                                       </asp:DropDownList>
                                        
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                        SelectCommand="GetBranch" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList3" Name="CName" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                                            </SelectParameters>
                                    </asp:SqlDataSource>
                                        
                                        <br />
                                          <asp:DropDownList ID="DropDownList4" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource5" DataTextField="Name" 
                                        DataValueField="Name">
                                       </asp:DropDownList>

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
                                          <asp:DropDownList ID="DropDownList5" class="form-control" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource6" DataTextField="SName" 
                                        DataValueField="SName">
                                       </asp:DropDownList>
              
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
									<div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" 
                                        placeholder="Fees Paid"></asp:TextBox>
								    		<div class="input-group-addon"><i class="fa fa-rupee"></i></div>
                                </div>

                                        <br />
									<div class="input-group">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Total Fees"></asp:TextBox>
                                        <div class="input-group-addon"><i class="fa fa-rupee"></i></div>
                                         
										</div>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                       ControlToCompare="TextBox1" ControlToValidate="TextBox2" Operator="LessThanEqual" Type="Integer" 
                       ErrorMessage="**Total Fees should be more than Fees Paid" ForeColor="Red" 
                       ValidationGroup="ha"></asp:CompareValidator>
                                <br />
                                <asp:Label ID="Label1" runat="server" Text="Local Guardian"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:RadioButton ID="RadioButton1" runat="server" 
              AutoPostBack="True" GroupName="locguard" 
                 oncheckedchanged="RadioButton1_CheckedChanged" Text="YES" />
                 &nbsp;&nbsp
          <asp:RadioButton ID="RadioButton2" runat="server" Text="NO" AutoPostBack="True" 
              GroupName="locguard" oncheckedchanged="RadioButton2_CheckedChanged"/>
              
           <br />
                     
                     <br />



                     <asp:Label ID="Label3" runat="server" Text="Vechile Owned" ></asp:Label>&nbsp;&nbsp;
           <asp:RadioButton ID="RadioButton3" runat="server" 
              Text="YES" 
              GroupName="vechowned" AutoPostBack="True" 
                   oncheckedchanged="RadioButton3_CheckedChanged" />&nbsp;&nbsp;&nbsp;
         <asp:RadioButton ID="RadioButton4" runat="server" Text="NO" 
              GroupName="vechowned" AutoPostBack="True" 
                   oncheckedchanged="RadioButton4_CheckedChanged" /></td></tr>


                    <br />
           
                    <br />


                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Submit" 
                                        onclick="Button1_Click"></asp:Button>
						    
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label4" runat="server"></asp:Label>
						    
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
						</div>
               
 
 <div class="style3">
                        <div class="widget" data-scroll-reveal>
							<h2>Admission Details</h2>
                            <form>
								<div class="form-group" id="Div3">
                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>
                            
							<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal" Height="270px" Width="320px" 
                                        DataKeyNames="ID" AllowPaging="True">
                                <Columns>
                                    <asp:BoundField HeaderText="ID" DataField="ID" 
                                        SortExpression="ID" ReadOnly="True" />
                                    <asp:BoundField HeaderText="SName" DataField="SName" 
                                        SortExpression="SName" ReadOnly="True" />
                                    <asp:BoundField DataField="Feespaid" HeaderText="Feespaid" 
                                        SortExpression="Feespaid" />
                                    <asp:BoundField DataField="localguard" HeaderText="localguard" 
                                        SortExpression="localguard" />
                                    <asp:BoundField DataField="vechowned" HeaderText="vechowned" 
                                        SortExpression="vechowned" />
                                    <asp:BoundField DataField="Totalfees" HeaderText="Totalfees" 
                                        SortExpression="Totalfees" />
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
                                
                                        SelectCommand="SELECT [ID], [SName], [Feespaid], [localguard], [vechowned], [Totalfees] FROM [HostelAdmissionTable],[Student] WHERE ([HostelAdmissionTable].[ClientId] = @ClientId) AND ([sid]=[StudentID])" 
                                        DeleteCommand="DELETE FROM [HostelAdmissionTable] WHERE [ID] = @original_ID" 
                                        InsertCommand="INSERT INTO [HostelAdmissionTable] ([ID], [Feespaid], [localguard], [vechowned], [Totalfees]) VALUES (@ID, @Feespaid, @localguard, @vechowned, @Totalfees)" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        
                                        
                                        UpdateCommand="UPDATE [HostelAdmissionTable] SET [Feespaid] = @Feespaid, [localguard] = @localguard, [vechowned] = @vechowned, [Totalfees] = @Totalfees WHERE [ID] = @original_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                    <asp:Parameter Name="Feespaid" Type="Int32" />
                                    <asp:Parameter Name="localguard" Type="String" />
                                    <asp:Parameter Name="vechowned" Type="String" />
                                    <asp:Parameter Name="Totalfees" Type="Int32" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:SessionParameter Name="ClientId" SessionField="Client" Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Feespaid" Type="Int32" />
                                    <asp:Parameter Name="localguard" Type="String" />
                                    <asp:Parameter Name="vechowned" Type="String" />
                                    <asp:Parameter Name="Totalfees" Type="Int32" />
                                    <asp:Parameter Name="original_ID" Type="Int32" />
                                </UpdateParameters>
                                    </asp:SqlDataSource>

                            </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
                                </form>
						</div>
            </div>
             </div>
             <asp:UpdatePanel ID="UpdatePanel2" runat="server">
             <ContentTemplate>
            
            <asp:Panel ID="Panel2" runat="server"> 
 <div class="col-sm-6">
 

                        <div class="widget" data-scroll-reveal>

                        <div class="form-group" id="Div1">

                        <div class="row">
               
                        
                        <h3><strong>Local Guardian Details</strong></h3>

                        <div class="input-group">
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
									</div>
                                    <br />
                                     
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Contact No"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="Enter Valid Contact Number" ForeColor="Red" 
                    ValidationExpression="^\d{10}$" ValidationGroup="ha"></asp:RegularExpressionValidator>
                                        
									
                           
                                        <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Occupation"></asp:TextBox>
																

                                    <br />
                                      
                                        <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" 
                    ErrorMessage="Enter Valid Email ID" ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="ha"></asp:RegularExpressionValidator>
										                                    
                             <br />

                              
                                         
                                        <asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
									


							
                                </div>
                                </div>
                                
						</div>
                        </div>

                        </asp:Panel>
                       
                        </ContentTemplate>
                 <Triggers>
                     <asp:AsyncPostBackTrigger ControlID="RadioButton1" EventName="CheckedChanged" />
                     <asp:AsyncPostBackTrigger ControlID="RadioButton2" EventName="CheckedChanged" />
                 </Triggers>
             </asp:UpdatePanel>

           
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                       
<asp:Panel ID="Panel3" runat="server">
             <div class="col-sm-6">

              
                        <div class="widget" data-scroll-reveal>

                        <div class="form-group" id="Div2">
                        
                        <h3><strong>Vechile Details </strong>
     </h3>
                        
                       
                                        <asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="Vehical No"></asp:TextBox>
						
                        </div>
                        </div>
                        
                        </div>
                         


                         </asp:Panel>

                        </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="RadioButton3" EventName="CheckedChanged" />
                                <asp:AsyncPostBackTrigger ControlID="RadioButton4" EventName="CheckedChanged" />
                            </Triggers>
                        </asp:UpdatePanel>

</asp:Content>

