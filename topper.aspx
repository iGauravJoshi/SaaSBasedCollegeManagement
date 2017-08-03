<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="topper.aspx.cs" Inherits="topper" %>

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
						Topper
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
							<h2 class="style3">Select a Choice</h2>
							
								<div class="form-group" id="newsletter-name-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                
      
        <h4>    <asp:Label ID="Label1" runat="server" Text="Select Choice"></asp:Label> </h4> 
              <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" class="form-control" 
                  onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                  <asp:ListItem>Course</asp:ListItem>
                  <asp:ListItem>Branch</asp:ListItem>
                  <asp:ListItem>Year</asp:ListItem>
              </asp:DropDownList>
           </div>
                         </ContentTemplate>
                                </asp:UpdatePanel>       
						</div>
            </div>
               
             <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Grid View</h2>
                           
								<div class="form-group" id="Div1">
          <asp:Panel ID="Panel1" runat="server">
            <h4>  <asp:Label ID="Label2" runat="server" Text="Course"></asp:Label></h4><asp:DropDownList
                  ID="DropDownList2" runat="server" AutoPostBack="True" class="form-control"
                  DataSourceID="SqlDataSource1" DataTextField="Course" DataValueField="Course">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  SelectCommand="SELECT DISTINCT [Course] FROM [Toppers]"></asp:SqlDataSource>
                  
          </asp:Panel>
          <asp:Panel ID="Panel2" runat="server">

           <h4>  <asp:Label ID="Label3" runat="server" Text="Branch"></asp:Label> </h4> <asp:DropDownList
              ID="DropDownList3" runat="server" AutoPostBack="True" class="form-control"
                  DataSourceID="SqlDataSource2" DataTextField="Branch" DataValueField="Branch">
          </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  SelectCommand="SELECT DISTINCT [Branch] FROM [Toppers]"></asp:SqlDataSource>
          </asp:Panel>
          <asp:Panel ID="Panel3" runat="server">
               <h4> <asp:Label ID="Label4" runat="server" Text="Year"></asp:Label> </h4>   <asp:DropDownList
                  ID="DropDownList4" runat="server" AutoPostBack="True" class="form-control" 
                  DataSourceID="SqlDataSource3" DataTextField="Session" DataValueField="Session">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                  SelectCommand="SELECT DISTINCT [Session] FROM [Toppers]">
              </asp:SqlDataSource>
          </asp:Panel>

             <asp:Panel ID="Panel4" runat="server">
                 <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource4" >
                     <Series>
                         <asp:Series Name="Series1" XValueMember="Name" YValueMembers="Percentage">
                         </asp:Series>
                     </Series>
                     <ChartAreas>
                         <asp:ChartArea Name="ChartArea1">
                         </asp:ChartArea>
                     </ChartAreas>
                 </asp:Chart>
                 <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                     SelectCommand="SELECT DISTINCT [ID], [Name], [Percentage] FROM [Toppers] WHERE ([Course] = @Course)">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="DropDownList2" Name="Course" 
                             PropertyName="SelectedValue" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
             </asp:Panel>
             <asp:Panel ID="Panel5" runat="server">
                 <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource5">
                     <Series>
                         <asp:Series Name="Series1" XValueMember="Name" YValueMembers="Percentage">
                         </asp:Series>
                     </Series>
                     <ChartAreas>
                         <asp:ChartArea Name="ChartArea1">
                         </asp:ChartArea>
                     </ChartAreas>
                 </asp:Chart>
                 <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                     SelectCommand="SELECT DISTINCT [ID], [Name], [Percentage] FROM [Toppers] WHERE ([Branch] = @Branch)">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="DropDownList3" Name="Branch" 
                             PropertyName="SelectedValue" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
             </asp:Panel>
             <asp:Panel ID="Panel6" runat="server">
                 <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource6">
                     <Series>
                         <asp:Series Name="Series1" XValueMember="Name" YValueMembers="Percentage">
                         </asp:Series>
                     </Series>
                     <ChartAreas>
                         <asp:ChartArea Name="ChartArea1">
                         </asp:ChartArea>
                     </ChartAreas>
                 </asp:Chart>
                 <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                     SelectCommand="SELECT DISTINCT [ID], [Name], [Percentage] FROM [Toppers] WHERE ([Year] = @Year)">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="DropDownList4" Name="Year" 
                             PropertyName="SelectedValue" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
             </asp:Panel>
               </div>
                                
						</div>
            </div>
             </div>
                </div>
        </section>
       
          
     
    </asp:content>
    
    
      
     
    
  
 