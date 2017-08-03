<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="ExamFeesView.aspx.cs" Inherits="ExamFeesView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <!-- ========== TITLE START ========== -->

		<div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Exam Fees View
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
							
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Panel ID="Panel1" runat="server">
                                     <asp:Label ID="Label2" runat="server" Text="Name Of Exam"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                        <br /><br />
                                        <asp:Label ID="Label3" runat="server" Text="Fees Paid"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                        <br /><br />
                                        <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label6" runat="server"></asp:Label>
                                    </asp:Panel>
                                    <br /><br />
									
                                
						    <asp:Button ID="Button1" runat="server" Text="Show Previous Exam View " onclick="Button1_Click" />
  
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
						</div>
                </div>
                
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Exam Fees Paid</h2>
                            <form>
                            
								<div class="form-group" id="Div1">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                            
                            
							<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal" Height="270px" Width="320px" 
                                    AllowPaging="True">
                               <Columns>
                      <asp:BoundField DataField="Name" HeaderText="ExamName" SortExpression="Name" />
                      <asp:BoundField DataField="feespaid" HeaderText="FeesPaid" SortExpression="feespaid" />  
                    
                                   <asp:BoundField DataField="dateOfPayment" HeaderText="DateOfPayment" 
                                       SortExpression="dateOfPayment" />
 
                                   
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
                                    SelectCommand="SELECT ExamType.Name, ExamFees.feespaid, ExamFees.dateOfPayment FROM ExamFees INNER JOIN ExamType ON ExamFees.ID = ExamType.ID"></asp:SqlDataSource>
						    
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

