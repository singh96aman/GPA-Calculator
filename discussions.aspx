<%@ Page Language="C#" AutoEventWireup="true" CodeFile="discussions.aspx.cs" Inherits="discussions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discussions and Forum</title>
     <link rel="stylesheet" type="text/css" href="Style.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div id="header_container">
        <div id="header">
        Header
            </div>
    </div>
        <ul>
   <li><a href="Default.aspx">Home</a></li>
   <li><a href="gpa.aspx">Calculate GPA and Analyse</a></li>
   <li><a href="discussions.aspx">Discussions and Forum</a></li>
   <li style="float:right"><a href="contact.aspx">Contact Us</a></li>
    </ul> 
     <div>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dataConnectionString %>" InsertCommand="INSERT INTO studentdata3(Name, Registerationno, Query, Answer) VALUES ( @n , @r, @q, @ans)" SelectCommand="SELECT * FROM [studentdata3]" UpdateCommand="UPDATE studentdata3 SET Answer = @answer WHERE name=@name">
             <InsertParameters>
                 <asp:ControlParameter ControlID="TextBox2" Name="n" PropertyName="Text" />
                 <asp:ControlParameter ControlID="TextBox3" DefaultValue="" Name="r" PropertyName="Text" />
                 <asp:ControlParameter ControlID="TextBox1" Name="q" PropertyName="Text" />
                 <asp:Parameter Name="ans" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="answer" />
                 <asp:Parameter Name="name" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <br />
    </div>
        <div id="yo">
            <br />
&nbsp;<p>
                &nbsp; &nbsp;</p>
            <div id="lala" class="auto-style1">
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" Caption="Help Your Friends ! Answer These Questions" CellPadding="4" CssClass="lala" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand" PageSize="5">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Registerationno" HeaderText="Registerationno" SortExpression="Registerationno" />
                    <asp:BoundField DataField="Query" HeaderText="Query" SortExpression="Query" />
                    <asp:TemplateField HeaderText="Answer" SortExpression="Answer">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Answer") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnanswer" runat="server" CommandName="answer" Text="Answer" />
                            <br />
                            <br />
                            <asp:Label ID="lblanswer" runat="server" Text="Enter Answer" Visible="False"></asp:Label>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="txtanswer" runat="server" TextMode="MultiLine" Visible="False"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="btnsubmit" runat="server" CommandName="submit" Text="Submit" Visible="False" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btncancel" runat="server" CommandName="cancel" Text="Cancel" Visible="False" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
                </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="What is your Query ?"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="105px" TextMode="MultiLine" Width="265px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Registeration Number&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </div>
        </form>
</body>
</html>
