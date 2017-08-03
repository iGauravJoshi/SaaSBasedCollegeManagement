<%@ Page Title="" Language="C#" MasterPageFile="~/Simple.master" AutoEventWireup="true" CodeFile="Feedback1.aspx.cs" Inherits="Feedback1" %>

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
						Feedback
					</div>
				</div>
			</div>
		</div>
         <section id="content">
			<div class="container">
<div class="row">
 <div class="col-sm-8">
                        <div class="widget" data-scroll-reveal>
							<h2 class="style2">FeedBack</h2>
                            <form>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
								<div class="form-group" id="Div1">
                                <center>

                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
                                        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                        CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="636px">
        <Columns>
            <asp:TemplateField HeaderText="Subject" SortExpression="SubName">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("SubName") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SubName") %>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Teacher" SortExpression="TName">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("TName") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TName") %>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Feedback Category" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="FName" DataValueField="FName" 
                        Width="100px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
                        SelectCommand="SELECT [FName] FROM [feedbackCategory] WHERE ([ClientId] = @ClientId)">
                        <SelectParameters>
                            <asp:SessionParameter Name="ClientId" SessionField="Client" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Remarks" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
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
                                    
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SaaS Based Student ManagementConnectionString %>" 
        SelectCommand="SELECT [SubName], [TName] FROM [SubjectFacultyDetails],[Subject],[TeachingStaff] WHERE ([SubjectID]=[Subject].[SubName] and [Subject].[ClientId] = @ClientId) and([TeacherID]=[TeachingStaff].[TName] and [TeachingStaff].[ClientId]=@ClientId)">
        <SelectParameters>
            <asp:SessionParameter Name="ClientId" SessionField="Client" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
                                    <br /><br />
                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Submit" onclick="Button1_Click"></asp:Button><br />
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                                </center>
                                </div>  
                                </ContentTemplate>
                            </asp:UpdatePanel>
    </form>
    </div>
    </div>
    </div>
    </div>
    </section>
</asp:Content>

