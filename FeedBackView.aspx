<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="FeedBackView.aspx.cs" Inherits="FeedBackView" %>

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
						FEEDBACK VIEW</div>
				</div>
			</div>
		</div>

		<!-- ========== TITLE END ========== -->
    <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">feedback View</h2>
                            <form>
                            
								<div class="form-group" id="Div1">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource1" DataKeyNames="ID" BackColor="White" BorderColor="#CCCCCC" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                                    GridLines="Horizontal">
              <Columns>
                  <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                      ReadOnly="True" />
                  <asp:BoundField DataField="FName" HeaderText="FeedbackCategory" 
                      SortExpression="FName" />
                  <asp:BoundField DataField="name" HeaderText="Name" 
                      SortExpression="name" />
                  <asp:BoundField DataField="subject" HeaderText="Subject" 
                      SortExpression="subject" />
                  <asp:BoundField DataField="Remarks" HeaderText="Remarks" 
                      SortExpression="Remarks" />
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
                                    
                                    SelectCommand="SELECT [FeedBack].[ID], [FName], [name], [subject], [Remarks] FROM [FeedBack],[feedbackCategory] WHERE ([feedbackCategoryID]=[feedbackCategory].[ID] AND [feedbackCategory].[ClientId] = @ClientId AND [FeedBack].[ClientId] = @ClientId)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="ClientId" SessionField="Client" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
          
           </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
                                </form>
						</div>
     
            </div>
                

            

     

       

</asp:Content>

