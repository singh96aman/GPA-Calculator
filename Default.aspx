<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="Style.css" />
    <link rel="stylesheet" type="text/javascript" href="jquery-1.7.2.min.js" />
    <link rel="stylesheet" type="text/javascript" href="jquery-ui-1.8.21.custom.min.js" />
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $('body').click(function () {
                $("#panel").slideUp("slow");
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="panel" style="align-content:center">
           <img src="image/splash.png" style="height:640px; width:50%;padding:0px 25% 0px 25%"/>
        </div>
        <div id="header_container">
             <div id="header"> 
            CGPA CALCULATOR
              </div>
            </div>
        <ul>
   <li><a href="Default.aspx">Home</a></li>
   <li><a href="gpa.aspx">Calculate GPA and Analyse</a></li>
   <li><a href="discussions.aspx">Discussions and Forum</a></li>
   <li style="float:right"><a href="contact.aspx">Contact Us</a></li>
    </ul> 
     <div>
        <div style="padding: 40px 20px 20px 20px">
            <div style="background-color:bisque; font-family:sans-serif">
            <h2>About The Project</h2>
            </div>
            The project is created by 2 Microsoft enthusiasts studying at Manipal Institute Of Technology. The web app calculates the predicted CGPA students based on they way they spend their time in College Campus. 
            The web app uses 'Azure Machine Learning Studio' and 'Boosted Decision Tree Regression' Algorithm to calculated the estimated GPA. The web app was created in between the week long campus hacthon organized by Microsoft. The website is made on ASP.NET framework on Visual Studio IDE.
        </div>
    </div>
    <div>
        <div style="padding: 40px 20px 20px 20px">
            <div style="background-color:bisque; font-family:sans-serif">
            <h2>How did we Get Data To Start Predictions ?</h2>
            </div>
            To make accurate predictions, the dataset we needed had to be large and completely authentic. So, we posted this google forum on our college pages and asked our friends to share it.<br />
            <br />
                <a href="https://goo.gl/forms/VkQddvasdAJbPNs03"><u>Click Here to View The Google Forum</u></a>
            <br />
            <br />
            We got a overwhelming response by our friends with 84 responses. Some of the entries were manipulated with more realistic options. Let's start predicting!  
        </div>
    </div>
        <div style="padding: 40px 20px 20px 20px">
            <div style="background-color:bisque; font-family:sans-serif">
            <h2>Understanding Boosted Regression Trees</h2>
            </div> 
            You can use the Boosted Decision Tree Regression module to create an ensemble of regression trees using boosting. Boosting means that each tree is dependent on prior trees, and learns by fitting the residual of the trees that preceded it. Thus, boosting in a decision tree ensemble tends to improve accuracy with some small risk of less coverage.
            This regression method is a supervised learning method, and therefore requires a labeled dataset. The label column must contain numerical values.
            The boosted trees model is very good at handling tabular data with numerical features, or categorical features with fewer than hundreds of categories. Unlike linear models, the boosted trees model are able to capture non-linear interaction between the features and the target.
            <br />
            <br />
            Boosting is one of several classic methods for creating ensemble models, along with bagging, random forests, and so forth. In Azure Machine Learning Studio, boosted decision trees use an efficient implementation of the MART gradient boosting algorithm. Gradient boosting is a machine learning technique for regression problems. It builds each regression tree in a step-wise fashion, using a predefined loss function to measure the error in each step and correct for it in the next. Thus the prediction model is actually an ensemble of weaker prediction models.
            In regression problems, boosting builds a series of trees in a step-wise fashion, and then selects the optimal tree using an arbitrary differentiable loss function.
            <br />
            <br />
            In general, decision trees yield better results when features are somewhat related. If features have a large degree of entropy (that is, they are not related), they share little or no mutual information, and ordering them in a tree will not yield a lot of predictive significance.
            Implementation
            The ensemble of trees is produced by computing, at each step, a regression tree that approximates the gradient of the loss function, and adding it to the previous tree with coefficients that minimize the loss of the new tree.
            The output of the ensemble produced by MART on a given instance is the sum of the tree outputs.
            For binary classification problem, the output is converted to probability by using some form of calibration.    
            For regression problems, the output is the predicted value of the function. 
            For ranking problem, the instances are ordered by the output value of the ensemble.
            <br />
            <br />
            <div>
                <img src="image/tree.png" style="height:400px; width:400px; padding:5px 25% 0 35%"/>
            </div>
        </div>
        <div style="padding: 40px 20px 20px 20px">
            <div style="background-color:bisque; font-family:sans-serif">
            <h2>Discussions and Forum</h2>
                </div>
                One of the biggest problems students face at colleges is the lack of public forum where the students and faculties can communicate using Internet services. It is an open page on which any student can post queries and they are visible to all other students and faculties. Any Faculty or student can solve the queries. 
            </div> 
         <div style="padding: 40px 20px 20px 20px">
            <div style="background-color:bisque; font-family:sans-serif">
            <h2>A Special Thanks To MIROSOFT</h2>
                </div>
               Special thanks to the whole team and mentors at Microsoft to choose our college among other top colleges in India and introducing azure services, visual studio IDE and other new cool frameworks so that we can make the projects we always dreamt of making. This project is made comletely on Microsoft services and works brilliantly. <br />
                Also, Azure Machine Learning Studio is an excellent IDE with plethora of algorithms and datasets which made our work really easy.   
            </div>
        <div style="padding: 40px 20px 20px 20px">
            <div style="background-color:bisque; font-family:sans-serif">
            <h2>Future Scope of Development</h2>
                </div>
            IQ TESTER
            <br />
            We are looking to include IQ as one of the parameters in our machine learning model but due to lack of the resources and time we were unable to implement it right now.
            <br />
            IQ plays a vital role in this model because a student's interpretation,skills and his ablity to focus depends on his IQ.
            <br />
            <br />
            CHAT BOX
            <br />
            <br />
            When you have doubt regarding your engineering subjects, you run behind your faculties and try to convince them to waste their invaluable time and explain you your doubts. Instead, we are planning to implement chatboxes in which students can directly contact their faculties or send broadcasts to all the faculties of a department so that your doubt gets entertained. 
            so if u want to clear any doubt with the teacher u dont need to run behind them or just simply waste your time for waiting them 
            so if u have a doubt if u can go to the specific department and see which teachers are there online and clear your doubt then and there and even the teacher dont need to arrange time from their busy teaching schedule and can answer your doubt whenever they are free 
            this is one of the thing which a student portal needs to have as it saves a lot of time of them.
            </div>
         <div style="padding: 40px 20px 20px 20px">
            <div style="background-color:bisque; font-family:sans-serif">
            <h2>Error in Predictions</h2>
                </div>
                Every prediction module comes with inherited errors which are caused due to irregularities in dataset. Our system also has a large chances of errors as shown below. 
                <div>
                <img src="image/error.png" style="height:400px; width:400px; padding:5px 25% 0 35%"/>
            </div> 
             <div style="padding: 40px 20px 20px 20px">
            <div style="background-color:bisque; font-family:sans-serif">
            <h2>Study tips and Tricks</h2>
                </div>
                 <div>
                <img src="image/sleep.png" style="height:400px; width:700px; padding:5px 25% 0 20%"/>
            </div>
            </div>
            </div>
        </form>
</body>
</html>
