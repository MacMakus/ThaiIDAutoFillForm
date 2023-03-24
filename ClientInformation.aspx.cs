using PaperlessMergerWebForm.Model.SqlCommandModel;
using PaperlessMergerWebForm.Model.StringBuilderModel;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaperlessMergerWebForm
{
    public partial class ClientInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Client_Button_Click(object sender, EventArgs e)
        {
            SbInsert _sbInsert = new SbInsert();
            CmdInsert _CmdInsert = new CmdInsert();

            string conStr = ConfigurationManager.ConnectionStrings["NewMemberConStr"].ConnectionString;
            SqlConnection sqlCon = new SqlConnection(conStr);
            sqlCon.Open();
            try
            {

           
            StringBuilder sbInsert = _sbInsert.InsertInformation();
            string selectedValue = Request.Form["sex"];
            DateTime setDT = Convert.ToDateTime(BirthDate_TextBox.Text);
            int postCode = Convert.ToInt32(PostCode_TextBox.Text);
            int status = 1;
            int clubId = 1;
            _CmdInsert.InsertInformation(
                sbInsert,
                sqlCon,
                ID_Number_TextBox.Text,
                Title_Name_TextBox_EN.Text,
                FirstName_TextBox_EN.Text,
                LastName_Label_EN.Text,
                MiddleName_TextBox_EN.Text,
                Title_Name_TextBox_TH.Text,
                FirstName_TextBox_TH.Text,
                LastName_TextBox_TH.Text,
                MiddleName_TextBox_TH.Text,
                Passport_Number_TextBox.Text,
                Nation_TextBox.Text,
                setDT,
                selectedValue,
                Address_TextBox.Text,
                District_TextBox.Text,
                County_TextBox.Text,
                postCode,
                Country_TextBox.Text,
                Email_TextBox.Text,
                MobilePhone_TextBox.Text,
                status,
                clubId
            );
            }

            catch(Exception ex)
            {
                Response.Write(ex.StackTrace + "<br/>" + ex.Message);
            }

            finally
            {
                sqlCon.Close();
            }

            

        }
    }
}