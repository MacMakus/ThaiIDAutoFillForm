using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

namespace PaperlessMergerWebForm.Model.SqlCommandModel
{
    public class CmdInsert
    {
        public void InsertInformation
        (
        StringBuilder sb, 
        SqlConnection sqlCon,
            string id_Number,
            string title_Name_EN,
            string first_Name_EN,
            string last_Name_EN,
            string middle_Name_EN,
            string title_Name_TH,
            string first_Name_TH,
            string last_Name_TH,
            string middle_Name_TH,
            string id_passport,
            string nationality,
            DateTime dateOfBirth,
            string sex,
            string address1,
            string district,
            string county,
            int postCode,
            string country,
            string email,
            string telephoneNumber,
            int status,
            int clubId
        )
        {
            SqlCommand sqlCmd = new SqlCommand(sb.ToString(), sqlCon);

            sqlCmd.Parameters.AddWithValue("@ThaiId", id_Number);
            sqlCmd.Parameters.AddWithValue("@TitleNameEN", title_Name_EN);
            sqlCmd.Parameters.AddWithValue("@FirstNameEN", first_Name_EN);
            sqlCmd.Parameters.AddWithValue("@LastNameEN", last_Name_EN);
            sqlCmd.Parameters.AddWithValue("@MiddleNameEN", middle_Name_EN);
            sqlCmd.Parameters.AddWithValue("@TitleNameTH", title_Name_TH);
            sqlCmd.Parameters.AddWithValue("@FirstNameTH", first_Name_TH);
            sqlCmd.Parameters.AddWithValue("@LastNameTH", last_Name_TH);
            sqlCmd.Parameters.AddWithValue("@MiddleNameTH", middle_Name_TH);
            sqlCmd.Parameters.AddWithValue("@PassportId", id_passport);
            sqlCmd.Parameters.AddWithValue("@Nationality", nationality);
            sqlCmd.Parameters.AddWithValue("@DateOfBirth", dateOfBirth);
            sqlCmd.Parameters.AddWithValue("@Sex", sex);
            sqlCmd.Parameters.AddWithValue("@Address1", address1);
            sqlCmd.Parameters.AddWithValue("@District", district);
            sqlCmd.Parameters.AddWithValue("@County", county);
            sqlCmd.Parameters.AddWithValue("@PostCode", postCode);
            sqlCmd.Parameters.AddWithValue("@Country", country);
            sqlCmd.Parameters.AddWithValue("@Email", email);
            sqlCmd.Parameters.AddWithValue("@TelephoneNumber", telephoneNumber);
            sqlCmd.Parameters.AddWithValue("@Status", status);
            sqlCmd.Parameters.AddWithValue("@ClubId", clubId);

            sqlCmd.ExecuteNonQuery();
        }
    }
}