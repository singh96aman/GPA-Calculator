using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class discussions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
    }




    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "answer")
        {
            Button btnanswer = (Button)e.CommandSource;
            GridViewRow gr = (GridViewRow)btnanswer.NamingContainer;
            Label lblanswer = (Label)gr.FindControl("lblanswer");
            TextBox txtanswer = (TextBox)gr.FindControl("txtanswer");
            Button submit = (Button)gr.FindControl("btnsubmit");
            Button cancel = (Button)gr.FindControl("btncancel");
            btnanswer.Visible = false;
            lblanswer.Visible = true;
            txtanswer.Visible = true;
            submit.Visible = true;
            cancel.Visible = true;

        }

        if (e.CommandName == "submit")
        {
            Button submit = (Button)e.CommandSource;
            GridViewRow gr = (GridViewRow)submit.NamingContainer;
            Label lblanswer = (Label)gr.FindControl("lblanswer");
            TextBox txtanswer = (TextBox)gr.FindControl("txtanswer");
            Button btnanswer = (Button)gr.FindControl("btnanswer");
            Button cancel = (Button)gr.FindControl("btncancel");
            String name = gr.Cells[0].Text;
            SqlDataSource1.UpdateParameters["answer"].DefaultValue = txtanswer.Text;
            SqlDataSource1.UpdateParameters["name"].DefaultValue = name;

            SqlDataSource1.Update();

            btnanswer.Visible = true;
            btnanswer.Enabled = false;
            lblanswer.Visible = false;
            txtanswer.Visible = false;
            submit.Visible = false;
            cancel.Visible = false;
        }
    }
}
