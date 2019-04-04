using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SetDayDDL();
            SetMounthDDL();
            SetYearDDL();
           
        }
    }

    private void SetDayDDL()
    {
        for (int i = 1; i <= 31; i++)
        {
            DropDownListDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }
    private void SetMounthDDL()
    {
        for (int i = 1; i <= 12; i++)
        {
            DropDownListMounth.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }

    private void SetYearDDL()
    {
        int CY = DateTime.Now.Year + 543;
        for (int i = CY - 5; i <= CY + 1; i++)
        {
            DropDownListYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        LabelInserted.Visible = true;
        if (FileUpload1.HasFile)
        {
            string OldFiileName = FileUpload1.FileName;

            string Ext = System.IO.Path.GetExtension
                (FileUpload1.PostedFile.FileName);

           
                string NewName = Guid.NewGuid().ToString();
                string cNewName = string.Format("{0}{1}", NewName, Ext);
                string Path = string.Format("Upload/{0}", cNewName);
                string cPath = Server.MapPath(Path);
                FileUpload1.SaveAs(cPath);


                // DB
                InsertFileDB(OldFiileName, Path);

                LabelInserted.Text = "Upload Successful";
                LabelInserted.ForeColor = System.Drawing.Color.Green;
           

        }
        else
        {
            LabelInserted.Text = "กรุณาเลือกไฟล์";
            LabelInserted.ForeColor = System.Drawing.Color.Red;

        }
       

    }

    private void InsertFileDB(string OldFileName, string cPath)
    {

        string StrConn = WebConfigurationManager.ConnectionStrings["UPPart2ConnectionString"].ConnectionString;
        using (SqlConnection ObjConn = new SqlConnection(StrConn))
        {
            ObjConn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjConn;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "InsertFile";
                ObjCM.Parameters.AddWithValue("@Name", OldFileName);
                ObjCM.Parameters.AddWithValue("@FilePath", cPath);
                ObjCM.Parameters.AddWithValue("@day", DropDownListDay.Text);
                ObjCM.Parameters.AddWithValue("@month", DropDownListMounth.Text);
                ObjCM.Parameters.AddWithValue("@year", DropDownListYear.Text);

                ObjCM.ExecuteNonQuery();

            }
            ObjConn.Close();
        }

    }
}