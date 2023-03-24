using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace PaperlessMergerWebForm.Model.StringBuilderModel
{
    public class SbInsert
    {
        public StringBuilder InsertInformation()
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine(" INSERT INTO ");
            sb.AppendLine(" ClientInformation ");
            sb.AppendLine(" ( ");
            sb.AppendLine(" ThaiId, ");
            sb.AppendLine(" TitleNameEN, ");
            sb.AppendLine(" FirstNameEN, ");
            sb.AppendLine(" LastNameEN, ");
            sb.AppendLine(" MiddleNameEN, ");
            sb.AppendLine(" TitleNameTH, ");
            sb.AppendLine(" FirstNameTH, ");
            sb.AppendLine(" LastNameTH, ");
            sb.AppendLine(" MiddleNameTH, ");
            sb.AppendLine(" PassportId, ");
            sb.AppendLine(" Nationality, ");
            sb.AppendLine(" DateOfBirth, ");
            sb.AppendLine(" Sex, ");
            sb.AppendLine(" Address1, ");
            sb.AppendLine(" District, ");
            sb.AppendLine(" County, ");
            sb.AppendLine(" PostCode, ");
            sb.AppendLine(" Country, ");
            sb.AppendLine(" Email, ");
            sb.AppendLine(" TelephoneNumber, ");
            sb.AppendLine(" Status, ");
            sb.AppendLine(" ClubId ");
            sb.AppendLine(" ) ");
            sb.AppendLine(" VALUES ");
            sb.AppendLine(" ( ");
            sb.AppendLine(" @ThaiId, ");
            sb.AppendLine(" @TitleNameEN, ");
            sb.AppendLine(" @FirstNameEN, ");
            sb.AppendLine(" @LastNameEN, ");
            sb.AppendLine(" @MiddleNameEN, ");
            sb.AppendLine(" @TitleNameTH, ");
            sb.AppendLine(" @FirstNameTH, ");
            sb.AppendLine(" @LastNameTH, ");
            sb.AppendLine(" @MiddleNameTH, ");
            sb.AppendLine(" @PassportId, ");
            sb.AppendLine(" @Nationality, ");
            sb.AppendLine(" @DateOfBirth, ");
            sb.AppendLine(" @Sex, ");
            sb.AppendLine(" @Address1, ");
            sb.AppendLine(" @District, ");
            sb.AppendLine(" @County, ");
            sb.AppendLine(" @PostCode, ");
            sb.AppendLine(" @Country, ");
            sb.AppendLine(" @Email, ");
            sb.AppendLine(" @TelephoneNumber, ");
            sb.AppendLine(" @Status, ");
            sb.AppendLine(" @ClubId ");
            sb.AppendLine(" ) ");

            return sb;
        }
    }
}