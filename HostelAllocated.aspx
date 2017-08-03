<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="HostelAllocated.aspx.cs" Inherits="HostelAllocated" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="title">
		<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Hostel Allocation View
					</div>
				</div>
		</div>
	</div> 

    <section id="content">
			<div class="container">
            
				<div class="row">
                <asp:Panel ID="Panel3" runat="server">
                <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Hostel allocation details</h2>
                            <form>
								<div class="form-group" id="Div1">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource4" 
            AutoGenerateColumns="False" Width="553px" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="date" HeaderText="Date" 
                    SortExpression="date" />
                <asp:BoundField DataField="roomno" HeaderText="RoomNo" 
                    SortExpression="roomno" />
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
            OldValuesParameterFormatString="original_{0}" 
            
            SelectCommand="SELECT [date], [roomno] FROM [HostelAllocation] WHERE (([ClientId] = @ClientId) AND ([sid] = @sid))">
            <SelectParameters>
                <asp:SessionParameter Name="ClientId" SessionField="Client" Type="String" />
                <asp:SessionParameter Name="sid" SessionField="s" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        </ContentTemplate>
                                </asp:UpdatePanel>
                                </div>
                            </form>
                        </div>
                </div>
                </asp:Panel>
                </div>
            </div>
</section>
 
</asp:Content>

