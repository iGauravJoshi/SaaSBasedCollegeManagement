<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="StoreMark.aspx.cs" Inherits="StoreMark" %>  
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
						Store Mark</div>
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
         
     <asp:Panel ID="Panel1" runat="server">
     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
     <ContentTemplate>
     
              <asp:DropDownList ID="DropDownList2" class="form-control" runat="server"  
                  DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
                  AutoPostBack="True" 
                  onselectedindexchanged="DropDownList2_SelectedIndexChanged">
              </asp:DropDownList>
              </ContentTemplate></asp:UpdatePanel>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                  SelectCommand="SELECT DISTINCT [Name] FROM [client]"></asp:SqlDataSource>
                  <br />
                  <br />
                                    </asp:Panel>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
   
        
        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
            SelectCommand="GetCourseName" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
       <br />


        <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" class="form-control" 
            DataSourceID="SqlDataSource7" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
            SelectCommand="GetBranchName" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

<br />
<br />
       
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" class="form-control"
            DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
            SelectCommand="GetStudyingYearName" SelectCommandType="StoredProcedure">
            <SelectParameters>
                       <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                           PropertyName="SelectedValue" Type="String" />
                       <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
                   </SelectParameters>
        </asp:SqlDataSource>

        <br />
        <br />


        
        
     
        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" class="form-control"
            DataSourceID="SqlDataSource4" DataTextField="SubName" DataValueField="SubName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
            SelectCommand="GetSubjectName" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList6" Name="BName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
    <br />   
     
      <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" class="form-control"
            DataSourceID="SqlDataSource6" DataTextField="Name" DataValueField="Name" 
                onselectedindexchanged="DropDownList5_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
            SelectCommand="GetExamType1" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:SessionParameter Name="Cid" SessionField="Client" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
    <br />
    </td>
   
    <div class="input-group">
                                <asp:TextBox ID="TextBox18" class="form-control" placeholder="Maximum Mark" runat="server"></asp:TextBox>
                        <div class="input-group-addon"></div> </div>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox18" 
            ErrorMessage="This field should not be empty" ForeColor="Red" 
            ValidationGroup="sm"></asp:RequiredFieldValidator>
                       
     </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
    </div>
    </div>
     <br />


     <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                <ContentTemplate>
    
       <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">marks View</h2>
                            <form>
								<div class="form-group" id="Div1">


                               
                                
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource5" Width="341px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
                                        BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="RollNumber" HeaderText="RollNumber" 
                SortExpression="RollNumber" />
            <asp:TemplateField HeaderText="Name" SortExpression="SName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("SName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            
            <asp:TemplateField HeaderText="Marks">
                         <Itemtemplate>
                             <asp:TextBox ID="txtmarks" runat="server" Width="70px"></asp:TextBox>
                         </Itemtemplate>
                </asp:TemplateField>
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
   


    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
        
        SelectCommand="SELECT DISTINCT [SName], [RollNumber] FROM [Student] where [StudentID]!=0">
    </asp:SqlDataSource>
   <center> 
  
   <asp:Button ID="Button1" runat="server"  class="btn btn-primary" onclick="Button1_Click" 
        Text="Submit Marks" />
         
          <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
          </center>
</div>
</form>
</div>
</div>        
     </ContentTemplate>
     </asp:UpdatePanel>






    <div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Grid View</h2>
                            <form>
								<div class="form-group" id="Div2">

                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                               
       <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource8" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" 
                                        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                                        GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="SName" HeaderText="SName" 
                        SortExpression="SName" />
                    <asp:BoundField DataField="Name" HeaderText="Name" 
                        SortExpression="Name" />
                    <asp:BoundField DataField="MarksObtains" HeaderText="MarksObtains" 
                        SortExpression="MarksObtains" />
                    <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
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
            
             </ContentTemplate>
                                </asp:UpdatePanel>

          <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                
                SelectCommand="SELECT DISTINCT StudentResultDetails.MarksObtains, ExamType.Name, StudentResultDetails.Grade, StudentResultDetails.Remarks, Student.SName FROM StudentResultDetails INNER JOIN Student ON StudentResultDetails.StudentId = Student.StudentID INNER JOIN ExamType ON StudentResultDetails.TestId = ExamType.ID">
            </asp:SqlDataSource>

   
    </div>
   
   </div>
   </div> 
          
     
   
   </div>
   
</asp:Content>
