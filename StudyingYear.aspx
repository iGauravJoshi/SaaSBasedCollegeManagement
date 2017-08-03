<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="StudyingYear.aspx.cs" Inherits="StudyingYear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>


      <div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Studying Year
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
   
         <asp:Panel ID="Panel1" runat="server">
         <asp:UpdatePanel ID="UpdatePanel2" runat="server">
         <ContentTemplate>
        
              <asp:DropDownList ID="DropDownList2" class="form-control"  runat="server" AutoPostBack="True" 
                  DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name" 
                  onselectedindexchanged="DropDownList2_SelectedIndexChanged">
              </asp:DropDownList>
               </ContentTemplate>
         </asp:UpdatePanel>
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                  SelectCommand="SELECT [Name] FROM [client]"></asp:SqlDataSource>
              <br />
              <br />
          
          </asp:Panel>
          <asp:UpdatePanel ID="UpdatePanel3" runat="server">
          <ContentTemplate>
         
          <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" AutoPostBack="True" 
              DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name">
          </asp:DropDownList>
          <br />
          <br />
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
              ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
              SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                  
              </SelectParameters>
          </asp:SqlDataSource>
  
        <div class="input-group">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="StudyingYearName"></asp:TextBox> 
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
									</div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ValidationGroup="Study"
          ErrorMessage="**StudyingYearName should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br /><br /><br />

          <asp:Button ID="Button1" runat="server" class="btn btn-primary" 
                                        Text="Add StudyingYear" ValidationGroup="Desig" onclick="Button1_Click"></asp:Button>
						    
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						    
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
		
     </ContentTemplate>
          </asp:UpdatePanel>
   
    </div>
    </div>
    </div>
    
    <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">studying year&nbsp;</h2>
                            <form>
								<div class="form-group" id="Div1">
                            
          
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         
           <ContentTemplate>
                          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                              AllowSorting="True" AutoGenerateColumns="False" 
                              DataSourceID="SqlDataSource1" DataKeyNames="ID" BackColor="White" 
                              BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                              ForeColor="Black" GridLines="Horizontal">
                              <Columns>
                                  <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                                      ReadOnly="True" />
                                  <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
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
                          </ContentTemplate>  
       </asp:UpdatePanel>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                              SelectCommand="SELECT [ID], [Name] FROM [StudyingYear] WHERE [Course]=@CName" 
                              DeleteCommand="DELETE FROM [StudyingYear] WHERE [ID] = @ID" 
                              InsertCommand="INSERT INTO [StudyingYear] ([ID], [Name]) VALUES (@ID, @Name)" 
                              UpdateCommand="UPDATE [StudyingYear] SET [Name] = @Name WHERE [ID] = @ID">
                              <DeleteParameters>
                                  <asp:Parameter Name="ID" Type="Int32" />
                              </DeleteParameters>
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                                    PropertyName="SelectedValue" Type="String" />
                              </SelectParameters>
                              <InsertParameters>
                                  <asp:Parameter Name="ID" Type="Int32" />
                                  <asp:Parameter Name="Name" Type="String" />
                              </InsertParameters>
                              <UpdateParameters>
                                  <asp:Parameter Name="Name" Type="String" />
                                  <asp:Parameter Name="ID" Type="Int32" />
                              </UpdateParameters>
                          </asp:SqlDataSource>
         </div>
         </form>
         </div>
         </div>
                      
       </div>
 </div>         
</section>

    </asp:Content>

