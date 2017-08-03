<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Client.aspx.cs" Inherits="Client" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title">
			<div class="title-image"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						Client
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
							
							<form>
								<div class="form-group" id="newsletter-name-group">
          
                 
               <div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Name"></asp:TextBox> 
                                       <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                         </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" 
                        ErrorMessage="**This field should not be empty"  ValidationGroup="PI" ForeColor="Red"></asp:RequiredFieldValidator>
                      
									
                        <br />
                        <br />

               
                <div class="input-group">
                                        <asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="Adress"></asp:TextBox> 
                                       <div class="input-group-addon"><i class="fa fa-road"></i></div></div>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="**This Feild Should Not Be Empty" ValidationGroup="PI" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
              <br />
              <br />

                   <div class="input-group">
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Contact No"></asp:TextBox> 
                                       <div class="input-group-addon"><i class="fa fa-phone"></i></div></div>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="**Enter a Valid Contact Number" ControlToValidate="TextBox3" ValidationGroup="PI"
                        ForeColor ="Red" ValidationExpression="^\d{10}$"></asp:RequiredFieldValidator>
              <br />
              <br />
                
                   <div class="input-group">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Organisation Name"></asp:TextBox> 
                                       <div class="input-group-addon"><i class="fa fa-building"></i></div></div>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" 
                        ErrorMessage="**This field should not be empty"  ValidationGroup="PI" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                
                   <div class="input-group">
                                        <asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="Email Address"></asp:TextBox> 
                                       <div class="input-group-addon"><i class="fa fa-envelope"></i></div></div>
								<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="**Enter Valid Email" ForeColor="Red" ControlToValidate="TextBox7" ValidationGroup="PI" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               <br />
               <br />

                    <div class="input-group">
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="User Name"></asp:TextBox> 
                                       <div class="input-group-addon"><i class="fa fa-user"></i></div></div>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" 
                        ErrorMessage="**This field should not be empty" ValidationGroup="PI" ForeColor="Red"></asp:RequiredFieldValidator>
               <br />
               <br />

                    <div class="input-group">
                                        <asp:TextBox ID="TextBox5" runat="server" class="form-control" 
                                            placeholder="Password" TextMode="Password"></asp:TextBox> 
                                       <div class="input-group-addon"><i class="fa fa-lock"></i></div></div>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" 
                        ErrorMessage="**This field should not be empty" ValidationGroup="PI" ForeColor="Red"></asp:RequiredFieldValidator>
               <br />
               <br />
                    <div class="input-group">
                                        <asp:TextBox ID="TextBox6" runat="server" class="form-control" 
                                            placeholder="Confirm Password" TextMode="Password"></asp:TextBox> 
                                       <div class="input-group-addon"><i class="fa fa-lock"></i></div></div>
								<asp:CompareValidator ID="CompareValidator1" ControlToCompare="TextBox5" ForeColor="Red" 
                        ControlToValidate="TextBox6" runat="server" ErrorMessage="**Password not match" ValidationGroup="PI"></asp:CompareValidator>
               <br />
               <br />
                <asp:Button ID="Button1" runat="server"  class="btn btn-primary" ValidationGroup="PI" CausesValidation="true" Text="Register Client" onclick="Button1_Click" />
               
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
                    <asp:Label ID="Label8" runat="server"></asp:Label>
              
              </div>
          </div>
          </div>
        
              </div>
         <!--<div class="col-sm-6">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">Grid View</h2>
                            
							<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" 
                                ForeColor="Black" GridLines="Horizontal" Height="270px" Width="320px">
                                <Columns>
                                    <asp:BoundField HeaderText="ID" DataField="ID" ReadOnly="True" 
                                        SortExpression="ID"  />
                                    <asp:BoundField HeaderText="Name" DataField="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" 
                                        SortExpression="Address" />
                                    <asp:BoundField DataField="Phoneno" HeaderText="Phoneno" 
                                        SortExpression="Phoneno" />
                                    <asp:BoundField DataField="Orgname" HeaderText="Orgname" 
                                        SortExpression="Orgname" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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

<SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#4B4B4B"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#242121"></SortedDescendingHeaderStyle>
                            </asp:GridView>
						    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:SaaSBasedStudentManagement %>" 
                                SelectCommand="SELECT * FROM [client]" ConflictDetection="CompareAllValues" 
                                        DeleteCommand="DELETE FROM [client] WHERE [ID] = @original_ID AND [Name] = @original_Name AND [Address] = @original_Address AND [Phoneno] = @original_Phoneno AND (([Orgname] = @original_Orgname) OR ([Orgname] IS NULL AND @original_Orgname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))" 
                                        InsertCommand="INSERT INTO [client] ([ID], [Name], [Address], [Phoneno], [Orgname], [Email]) VALUES (@ID, @Name, @Address, @Phoneno, @Orgname, @Email)" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        UpdateCommand="UPDATE [client] SET [Name] = @Name, [Address] = @Address, [Phoneno] = @Phoneno, [Orgname] = @Orgname, [Email] = @Email WHERE [ID] = @original_ID AND [Name] = @original_Name AND [Address] = @original_Address AND [Phoneno] = @original_Phoneno AND (([Orgname] = @original_Orgname) OR ([Orgname] IS NULL AND @original_Orgname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_ID" Type="Int32" />
                                    <asp:Parameter Name="original_Name" Type="String" />
                                    <asp:Parameter Name="original_Address" Type="String" />
                                    <asp:Parameter Name="original_Phoneno" Type="String" />
                                    <asp:Parameter Name="original_Orgname" Type="String" />
                                    <asp:Parameter Name="original_Email" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="Phoneno" Type="String" />
                                    <asp:Parameter Name="Orgname" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="Phoneno" Type="String" />
                                    <asp:Parameter Name="Orgname" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="original_ID" Type="Int32" />
                                    <asp:Parameter Name="original_Name" Type="String" />
                                    <asp:Parameter Name="original_Address" Type="String" />
                                    <asp:Parameter Name="original_Phoneno" Type="String" />
                                    <asp:Parameter Name="original_Orgname" Type="String" />
                                    <asp:Parameter Name="original_Email" Type="String" />
                                </UpdateParameters>
                                    </asp:SqlDataSource>
                                
						</div>
            </div>-->
                </div>

      


          </section>
          
      


</asp:Content>

