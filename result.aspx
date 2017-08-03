<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
						Result
					</div>
				</div>
			</div>
		</div>

        <section id="content">
			<div class="container">
            
				<div class="row">
                <div class="col-sm-6">
                    <div class="widget" data-scroll-reveal>
							
							<form>
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                
    <asp:Label ID="Label1" runat="server" Text="Year"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="subjectId" 
        DataValueField="subjectId">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
        SelectCommand="SELECT DISTINCT [subjectId] FROM [result]">
    </asp:SqlDataSource>
                                </ContentTemplate>
                                </asp:UpdatePanel>
   </div>
   </div>
   </div>
   </div>
   </div>
   </section>
    <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							
                            <form>
								<div class="form-group" id="Div1">
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2">
        <Series>
            <asp:Series Name="Series1" XValueMember="yearofResult" 
                YValueMembers="Percentage">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
        SelectCommand="SELECT DISTINCT * FROM [result] WHERE ([subjectId] = @subjectId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="subjectId" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    </form>
    </div>
    </div>
</asp:Content>

