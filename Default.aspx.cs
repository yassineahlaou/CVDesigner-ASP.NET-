using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;//Object application , cookies , cache , response , request    
using System.Web.UI;// object pages
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using System.Data;
using CrystalDecisions.Shared;
using System.IO;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // clearfield();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=ANDROID-E7F6391\\SQLEXPRESS;Initial Catalog=GestionCV;Integrated Security=True;Connect Timeout=30");

        con.Open();
        string path;
        if (FileUpload1.HasFile)
            FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + FileUpload1.FileName);
        path = FileUpload1.FileName;

        string extension = Path.GetExtension(path);
        
            //byte[] imgbyte = FileUpload1.FileBytes;


            if (String.IsNullOrEmpty(TextBox2.Text) || String.IsNullOrEmpty(TextBox2.Text) || String.IsNullOrEmpty(TextBox3.Text) || String.IsNullOrEmpty(TextBox4.Text.ToString()) || String.IsNullOrEmpty(TextBox5.Text) || String.IsNullOrEmpty(TextBox6.Text) || String.IsNullOrEmpty(TextBox7.Text) || String.IsNullOrEmpty(path) || String.IsNullOrEmpty(TextBox8.Text))

            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please fill all the gaps');", true);
            }
            else
            {
            if (extension == ".png" || extension == ".jpeg" || extension == ".jpg" || extension == ".JPG" || extension == ".JPEG" || extension == ".PNG")
            {

                SqlCommand comm = new SqlCommand("Insert into Personnne values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + int.Parse(TextBox4.Text) + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + path + "','" + TextBox8.Text + "')", con);

                comm.ExecuteNonQuery();
                SqlCommand commc = new SqlCommand("SELECT MAX (Idp) FROM Personnne", con);
                int Idpp = Convert.ToInt32(commc.ExecuteScalar());
                comm = new SqlCommand("Insert into Formation values('" + TextBox10.Text + "','" + Idpp + "')", con);
                comm.ExecuteNonQuery();

                comm = new SqlCommand("Insert into Compétences values('" + TextBox13.Text + "','" + Idpp + "')", con);
                comm.ExecuteNonQuery();

                comm = new SqlCommand("Insert into Langue values('" + TextBox16.Text + "','" + Idpp + "')", con);
                comm.ExecuteNonQuery();

                

                 SqlCommand com = new SqlCommand("Select * from Personnne WHERE Idp = @id ", con);
                 com.Parameters.AddWithValue("@id", Idpp);
                 // Console.WriteLine(Idpp);
                 SqlDataAdapter sdt = new SqlDataAdapter(com);
                 DataSet ds = new DataSet();


                 sdt.Fill(ds);
                 ReportDocument crp = new ReportDocument();

                 crp.Load(Server.MapPath("CrystalReport.rpt"));
                 crp.SetDataSource(ds.Tables["table"]);
                 crp.SetParameterValue("chemin", HttpContext.Current.Request.PhysicalApplicationPath + "image/");
                 CrystalReportViewer1.ReportSource = crp;


                 crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Personal info");

                /*string msg = "Your data are successfully saved . Generate you CV by inserting your ID :";
                msg += Idpp.ToString();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('" + msg + "');", true);*/
                clearfield();
                con.Close();
            }
            else
            {
                TextBox19.Text = "please choose files with png, jpge or jpg extensions";
                TextBox19.ForeColor = System.Drawing.Color.Red;
            }




            /*   ParameterFields From = new ParameterFields();
               ParameterField PID = new ParameterField();
               PID.Name = "Idp";
               ParameterDiscreteValue val = new ParameterDiscreteValue();
               val.Value = Idpp;
               PID.CurrentValues.Add(val);
               From.Add(PID);
               CrystalReportViewer1.ParameterFieldInfo = From;*/




            /* SqlCommand com = new SqlCommand("Select * from Personnne WHERE Idp = 7 ", con);
             //com.Parameters.AddWithValue("@id", Idpp);
             // Console.WriteLine(Idpp);
             SqlDataAdapter sdt = new SqlDataAdapter(com);
             DataSet ds = new DataSet();


             sdt.Fill(ds);
             ReportDocument crp = new ReportDocument();

             crp.Load(Server.MapPath("CrystalReport.rpt"));
             crp.SetDataSource(ds.Tables["table"]);
             CrystalReportViewer1.ReportSource = crp;


             crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Personal info");


             //con.Close();
             */
        }
       

    }




    public void clearfield()
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox10.Text = "";
        TextBox13.Text = "";
        TextBox16.Text = "";



    }



    protected void Button2_Click1(object sender, EventArgs e)
    {
       /* SqlConnection cox = new SqlConnection("Data Source=ANDROID-E7F6391\\SQLEXPRESS;Initial Catalog=GestionCV;Integrated Security=True;Connect Timeout=30");

         cox.Open();
         SqlCommand com = new SqlCommand("Select * from Personnne WHERE Idp = '" + int.Parse(TextBox18.Text) + "' ", cox);
         //com.Parameters.AddWithValue("@id", Idpp);
         // Console.WriteLine(Idpp);
         SqlDataAdapter sdt = new SqlDataAdapter(com);
         DataSet ds = new DataSet();


         sdt.Fill(ds);
         ReportDocument crp = new ReportDocument();

         crp.Load(Server.MapPath("CrystalReport.rpt"));
         crp.SetDataSource(ds.Tables["table"]);
         crp.SetParameterValue("chemin", HttpContext.Current.Request.PhysicalApplicationPath + "image/");
         CrystalReportViewer1.ReportSource = crp;


         crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Personal info");


         cox.Close();*/



     
    }
}