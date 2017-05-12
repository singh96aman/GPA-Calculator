<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gpa.aspx.cs" Inherits="gpa" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculate GPA and Analyse</title>
     <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="Style.css" />
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        </style>
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
  <link rel="stylesheet" href="/resources/demos/style.css"/>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#accordion" ).accordion();
  } );

  </script>


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
   <li ><a href="contact.aspx">Contact Us</a></li>
    </ul>         
        <div>
            <br />
            <div id="yo" class="auto-style1">  
            <asp:Label ID="Label10" runat="server" Text="Enter the following Entries so that we can predict your GPA !"></asp:Label>
            <br />
            <br />
       
            <asp:Label ID="Label1" runat="server" Text="Q.1 Have you taken courses of your branch before joining college ?"></asp:Label>
                <br />
                 <br />
                 <br />
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Yes" GroupName="q1"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text="No" GroupName="q1" />
                <br />
            <br />
                 <br />
            <asp:Label ID="Label2" runat="server" Text="Q.2 Are you passionate about Engineering ?"></asp:Label>
                 <br />
                 <br />
                 <br />
            <asp:RadioButton ID="RadioButton3" runat="server" Text="Yes" GroupName="q2" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton4" runat="server" Text="No" GroupName="q2" />
                <br />
            <br />
                 <br />
            <asp:Label ID="Label3" runat="server" Text="Q.3 How many hours do you spend on Self Study ?"></asp:Label>
             <br />
                 <br />
                 <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Enter Value Between 1 and 10 " ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                 <br />
            <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="q3"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                 <br />
            <asp:Label ID="Label4" runat="server" Text="Q.4 How many hours do you Sleep in one day ?"></asp:Label>
                <br />
                 <br />
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Enter Value Between 1 and 15" ForeColor="Red" MaximumValue="15" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                 <br />
            <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="q4"></asp:TextBox>
            <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            <asp:Label ID="Label5" runat="server" Text="Q.5 How many hours do you spend on Student Clubs / Co-Curriculars / Parties ?"></asp:Label>
                <br />
                 <br />
                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Enter Value Between 0 and 20" ForeColor="Red" MaximumValue="20" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                 <br />
            <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="q5"></asp:TextBox>
            <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            <asp:Label ID="Label6" runat="server" Text="Q.6 How would you rate your Grasping Power, Concentration Power and Thinking Speed ?"></asp:Label>
                <br />
                 <br />
                 <br />
            &nbsp;<asp:RadioButton ID="RadioButton5" runat="server" Text="High" GroupName="q6" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton6" runat="server" Text="Average" GroupName="q6" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton7" runat="server" Text="I am dumb" GroupName="q6" />
            <br />
                <br />
                <br />
            <asp:Label ID="Label7" runat="server" Text="Q.7 What is your average attendance percentage for a semester ?"></asp:Label>
                <br />
                 <br />
                <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Enter Value Between 60 and 100 " ForeColor="Red" MaximumValue="100" MinimumValue="60" Type="Integer"></asp:RangeValidator>
                 <br />
            <asp:TextBox ID="TextBox7" runat="server" ValidationGroup="q7"></asp:TextBox>
            <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            <asp:Label ID="Label9" runat="server" Text="Q.8 How many hours do you spend on Social Networking Sites ?"></asp:Label>
                <br />
                 <br />
                 <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="*Enter Value Between 0 and 10 " ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                 <br />
            <asp:TextBox ID="TextBox9" runat="server" ValidationGroup="q9"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Text=" Q.9 Are you a Morning person or a Night Owl ?"></asp:Label>
                <br />
                <br />
            <br />
        
            <asp:RadioButton ID="RadioButton8" runat="server" Text="Morning Person" GroupName="q10" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton9" runat="server" Text="Night Owl" GroupName="q10" />
                <br />
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" Text="Q.10 Do you want to pursue higher education ?"></asp:Label>
                <br />
                <br />
                <br />
                <asp:RadioButton ID="RadioButton10" runat="server" Text="Yes" GroupName="q11" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton11" runat="server" Text="No" GroupName="q11" />
                <br />
                <br />
                 <br />
                <div id="buttonyo">
                <asp:Button ID="Button1" runat="server" Text="Button" style="padding : 20px 30px 20px 30px" BackColor="#FFFF99" Font-Bold="True" Font-Strikeout="False" CssClass="buttonyo" OnClick="Button1_Click" />
                    </div>
                <br />
                <br />
                <asp:Label ID="Label21" runat="server" Text="Your Predicted CGPA IS"></asp:Label>
                 <br />
                <br />
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                <br />
                <br />
                    <asp:Label ID="Label13" runat="server" Text=" © Powered By Azure Machine Learning"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                <h1>Analysis Of GPA</h1>
                <br />
                <div id="accordion">
  <h3>Have you taken courses of your branch before joining college ?</h3>
  <div>
      <asp:Label ID="Label8" runat="server" Text="GPA not calculated"></asp:Label>
      <asp:Chart ID="Chart1" runat="server" Visible="false" Width="439px">
          <Series>
              <asp:Series Name="Series1"></asp:Series>
          </Series>
          <ChartAreas>
              <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
          </ChartAreas>
      </asp:Chart>
  </div>
  <h3>Are you passionate about Engineering ? </h3>
  <div>
       <asp:Label ID="Label14" runat="server" Text="GPA not calculated"></asp:Label>
      <asp:Chart ID="Chart2" runat="server" Visible="false">
          <Series>
              <asp:Series Name="Series1"></asp:Series>
          </Series>
          <ChartAreas>
              <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
          </ChartAreas>
      </asp:Chart>
  </div>
  <h3>How many hours do you spend on Self Study ?</h3>
  <div>
       <asp:Label ID="Label15" runat="server" Text="GPA not calculated"></asp:Label>
      <asp:Chart ID="Chart3" runat="server" Visible="false">
          <Series>
              <asp:Series Name="Series1"></asp:Series>
          </Series>
          <ChartAreas>
              <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
          </ChartAreas>
      </asp:Chart>
  </div>

  <h3>How many hours do you Sleep in one day ?</h3>
  <div>
       <asp:Label ID="Label16" runat="server" Text="GPA not calculated"></asp:Label>
      <asp:Chart ID="Chart4" runat="server" Visible="false">
          <Series>
              <asp:Series Name="Series1"></asp:Series>
          </Series>
          <ChartAreas>
              <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
          </ChartAreas>
      </asp:Chart>
  </div>

    <h3>How many hours do you spend on Student Clubs / Co-Curriculars / Parties ? </h3>
    <div>
       <asp:Label ID="Label17" runat="server" Text="GPA not calculated"></asp:Label>
      <asp:Chart ID="Chart5" runat="server" Visible="false">
          <Series>
              <asp:Series Name="Series1"></asp:Series>
          </Series>
          <ChartAreas>
              <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
          </ChartAreas>
      </asp:Chart>
  </div>

    <h3>How would you rate your Grasping Power, Concentration Power and Thinking Speed ? </h3>
    <div>
       <asp:Label ID="Label18" runat="server" Text="GPA not calculated"></asp:Label>
      <asp:Chart ID="Chart6" runat="server" Visible="false">
          <Series>
              <asp:Series Name="Series1"></asp:Series>
          </Series>
          <ChartAreas>
              <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
          </ChartAreas>
      </asp:Chart>
  </div>

    <h3>What is your average attendance percentage for a semester ?</h3>
    <div>
       <asp:Label ID="Label19" runat="server" Text="GPA not calculated"></asp:Label>
      <asp:Chart ID="Chart7" runat="server" Visible="false">
          <Series>
              <asp:Series Name="Series1"></asp:Series>
          </Series>
          <ChartAreas>
              <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
          </ChartAreas>
      </asp:Chart>
  </div>

    <h3>How many hours do you spend on Social Networking Sites ? </h3>
    <div>
       <asp:Label ID="Label20" runat="server" Text="GPA not calculated"></asp:Label>
      <asp:Chart ID="Chart8" runat="server" Visible="false">
          <Series>
              <asp:Series Name="Series1"></asp:Series>
          </Series>
          <ChartAreas>
              <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
          </ChartAreas>
      </asp:Chart>
  </div>

</div>
             </div>
            <br /> 
            <br />
            <br />
            </div>
    </form>
</body>
</html>
