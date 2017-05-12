using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public class StringTable
{
    public string[] ColumnNames { get; set; }
    public string[,] Values { get; set; }
}

public partial class gpa : System.Web.UI.Page
{
    static string result, result2, result3;
    static string[] aman1, aman2, aman3, aman4;

    static string q1, q2, q3, q4, q5, q6, q7, q8, q9, q10;

    protected void Page_Load(object sender, EventArgs e)
    {
        RadioButton1.Checked = true;
        RadioButton3.Checked = true;
        RadioButton5.Checked = true;
        RadioButton8.Checked = true;
        RadioButton10.Checked = true;
    }
    static async Task InvokeRequestResponseService()
    {
        using (var client = new HttpClient())
        {
            var scoreRequest = new
            {

                Inputs = new Dictionary<string, StringTable>() {
                        {
                            "input1",
                            new StringTable()
                            {
                                ColumnNames = new string[] {"Have you taken courses of your Branch before joining College ?", "Are you passionate about Engineering ?", "Study ?", "Sleep", "Parties ?", "Power", "attendance", "Social", "Are you a Morning person or Night owl?", "higher"},
                                Values = new string[,] {  { q1, q2, q3, q4, q5, q6, q7, q8, q9, q10 }, { q1, q2, q3, q4, q5, q6, q7, q8, q9, q10 },  }
                            }
                        },
                    },
                GlobalParameters = new Dictionary<string, string>()
                {
                }
            };
            const string apiKey = "WZj5kOB9X3bg/TDIrbuCbZ0EUzr6jjRXprg3hZFQk5WX1g7nA9Et5bcsOhp5NMcZQY7md7Rg7GR5Hw6BESU9Ww=="; // Replace this with the API key for the web service
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", apiKey);

            client.BaseAddress = new Uri("https://ussouthcentral.services.azureml.net/workspaces/8c8678c2c9e5462f81fa045e9fa02467/services/18662e516bcc4ca1a590c4c527a77ae4/execute?api-version=2.0&details=true");

            // WARNING: The 'await' statement below can result in a deadlock if you are calling this code from the UI thread of an ASP.Net application.
            // One way to address this would be to call ConfigureAwait(false) so that the execution does not attempt to resume on the original context.
            // For instance, replace code such as:
            //      result = await DoSomeTask()
            // with the following:
            //      result = await DoSomeTask().ConfigureAwait(false)


            HttpResponseMessage response = await client.PostAsJsonAsync("", scoreRequest).ConfigureAwait(false);
            if (response.IsSuccessStatusCode)
            {
                result = await response.Content.ReadAsStringAsync();
                //Console.WriteLine("Result: {0}", result);
                //result2 = result;
                aman1 = result.Split('{', '{', '{', '[');
                foreach (String a in aman1)
                    result2 = "" + a + " ";
                aman2 = result2.Split(',');
            }
            else
            {
                //Console.WriteLine(string.Format("The request failed with status code: {0}", response.StatusCode));
                result2 = ""+response.StatusCode;
                // Print the headers - they include the requert ID and the timestamp, which are useful for debugging the failure
                //Console.WriteLine(response.Headers.ToString());

                string responseContent = await response.Content.ReadAsStringAsync();
                //Console.WriteLine(responseContent);
               
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
            q1 = "1";
        else
            q1 = "0";
        if (RadioButton3.Checked == true)
            q2 = "1";
        else
            q2 = "0";
        if (RadioButton5.Checked == true)
            q6 = "2";
        else if (RadioButton7.Checked == true)
            q6 = "1";
        else
            q6 = "0";
        if (RadioButton8.Checked == true)
            q9 = "1";
        else
            q9 = "0";
        if (RadioButton10.Checked == true)
            q10 = "1";
        else
            q10 = "0";
        q3 = TextBox3.Text;
        q4 = TextBox4.Text;
        q5 = TextBox5.Text;
        q7 = TextBox7.Text;
        q8 = TextBox9.Text;
         InvokeRequestResponseService().Wait();
        
        String[] b = aman2[aman2.Length - 1].Split('"');
        double c = double.Parse(b[1]);
        TextBox10.Text = c.ToString();
        Label8.Visible = false;
        Label14.Visible = false;
        Label15.Visible = false;
        Label16.Visible = false;
        Label17.Visible = false;
        Label18.Visible = false;
        Label19.Visible = false;

        Chart1.Visible = true;
        Chart1.Series.Add("Series2");
        Chart1.Series["Series2"].Points.AddXY(8.5,1);
        Chart1.Series["Series2"].Points.AddXY(7,1);
        Chart1.Series["Series2"].Points.AddXY(9, 1);
        Chart1.Series["Series2"].Points.AddXY(7.5, 0);
        Chart1.Series["Series2"].Points.AddXY(8, 0);
        Chart1.Series["Series2"].Points.AddXY(10,1);
        Chart1.Series["Series2"].Points.AddXY(9.62, 1);
        Chart1.Series["Series2"].Points.AddXY(Math.Round(c), int.Parse(q1));

        Chart2.Visible = true;
        Chart2.Series.Add("Series2");
        Chart2.Series["Series2"].Points.AddXY(8.5, 1);
        Chart2.Series["Series2"].Points.AddXY(7, 1);
        Chart2.Series["Series2"].Points.AddXY(7.5, 1);
        Chart1.Series["Series2"].Points.AddXY(9, 1);
        Chart2.Series["Series2"].Points.AddXY(8, 1);
        Chart2.Series["Series2"].Points.AddXY(10, 1);
        Chart2.Series["Series2"].Points.AddXY(9.62, 1);
        Chart2.Series["Series2"].Points.AddXY(Math.Round(c), int.Parse(q2));

        Chart3.Visible = true;
        Chart3.Series.Add("Series2");
        Chart3.Series["Series2"].Points.AddXY(8.5, 2);
        Chart3.Series["Series2"].Points.AddXY(7, 0.25);
        Chart3.Series["Series2"].Points.AddXY(9, 3);
        Chart3.Series["Series2"].Points.AddXY(7.5, 1.5);
        Chart3.Series["Series2"].Points.AddXY(8, 1);
        Chart3.Series["Series2"].Points.AddXY(10, 3.5);
        Chart3.Series["Series2"].Points.AddXY(9.62, 1);
        Chart3.Series["Series2"].Points.AddXY(Math.Round(c), int.Parse(TextBox3.Text));

        Chart4.Visible = true;
        Chart4.Series.Add("Series2");
        Chart4.Series["Series2"].Points.AddXY(8.5, 8);
        Chart4.Series["Series2"].Points.AddXY(7, 8);
        Chart4.Series["Series2"].Points.AddXY(9, 8);
        Chart4.Series["Series2"].Points.AddXY(7.5, 6.5);
        Chart4.Series["Series2"].Points.AddXY(8, 6);
        Chart4.Series["Series2"].Points.AddXY(10, 6);
        Chart4.Series["Series2"].Points.AddXY(9.62, 7);
        Chart4.Series["Series2"].Points.AddXY(Math.Round(c), int.Parse(TextBox4.Text));

        Chart5.Visible = true;
        Chart5.Series.Add("Series2");
        Chart5.Series["Series2"].Points.AddXY(8.5, 1);
        Chart5.Series["Series2"].Points.AddXY(7, 2);
        Chart5.Series["Series2"].Points.AddXY(9, 1);
        Chart5.Series["Series2"].Points.AddXY(7.5, 4);
        Chart5.Series["Series2"].Points.AddXY(8, 4);
        Chart5.Series["Series2"].Points.AddXY(10, 2);
        Chart5.Series["Series2"].Points.AddXY(9.62, 1);
        Chart5.Series["Series2"].Points.AddXY(Math.Round(c), int.Parse(TextBox5.Text));

        Chart6.Visible = true;
        Chart6.Series.Add("Series2");
        Chart6.Series["Series2"].Points.AddXY(8.5, 1);
        Chart6.Series["Series2"].Points.AddXY(7, 1);
        Chart6.Series["Series2"].Points.AddXY(9, 2);
        Chart6.Series["Series2"].Points.AddXY(7.5, 2);
        Chart6.Series["Series2"].Points.AddXY(8, 2);
        Chart6.Series["Series2"].Points.AddXY(10, 2);
        Chart6.Series["Series2"].Points.AddXY(9.62, 1);
        Chart6.Series["Series2"].Points.AddXY(Math.Round(c), int.Parse(q6));

        Chart7.Visible = true;
        Chart7.Series.Add("Series2");
        Chart7.Series["Series2"].Points.AddXY(8.5, 86);
        Chart7.Series["Series2"].Points.AddXY(7, 82);
        Chart7.Series["Series2"].Points.AddXY(9, 85);
        Chart7.Series["Series2"].Points.AddXY(7.5, 75);
        Chart7.Series["Series2"].Points.AddXY(8, 85);
        Chart7.Series["Series2"].Points.AddXY(10, 99);
        Chart7.Series["Series2"].Points.AddXY(9.62, 97);
        Chart7.Series["Series2"].Points.AddXY(Math.Round(c), int.Parse(TextBox7.Text));

        Chart8.Visible = true;
        Chart8.Series.Add("Series2");
        Chart8.Series["Series2"].Points.AddXY(8.5, 2);
        Chart8.Series["Series2"].Points.AddXY(7, 2);
        Chart8.Series["Series2"].Points.AddXY(9, 1);
        Chart8.Series["Series2"].Points.AddXY(7.5, 2);
        Chart8.Series["Series2"].Points.AddXY(8, 1);
        Chart8.Series["Series2"].Points.AddXY(10, 0);
        Chart8.Series["Series2"].Points.AddXY(9.62, 1);
        Chart8.Series["Series2"].Points.AddXY(Math.Round(c), int.Parse(TextBox9.Text));


    }
}