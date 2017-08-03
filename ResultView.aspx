<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="ResultView.aspx.cs" Inherits="ResultView" %>

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
						Result View
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
                               <asp:UpdatePanel ID="UpdatePanel1" runat="server"> <ContentTemplate>
                                 <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        </ContentTemplate></asp:UpdatePanel>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                                        SelectCommand="SELECT [Name] FROM [ExamType]">
                                    </asp:SqlDataSource>
                                    <br /><br />
                                       </div>
						</div>
                </div>
                
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">result View</h2>
                            <form>
          
								<div class="form-group" id="Div1">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                     <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" 
              AutoGenerateColumns="False" Width="436px" AllowPaging="True" >
                                         <Columns>
                                             <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                                             <asp:BoundField DataField="SubName" HeaderText="SubName" 
                                                 SortExpression="SubName" />
                                             <asp:BoundField DataField="MarksObtains" HeaderText="MarksObtains" 
                                                 SortExpression="MarksObtains" />
                                             <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                                             <asp:BoundField DataField="Remarks" HeaderText="Remarks" 
                                                 SortExpression="Remarks" />
                                         </Columns>
              </asp:GridView>
                              </ContentTemplate></asp:UpdatePanel>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                                        SelectCommand="ResultView" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="Exam" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                   
                                </div>
                                
             </form>
						</div>
            </div>
                </div>

            </div>

        </section>
</asp:Content>

