<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientInformation.aspx.cs" Inherits="PaperlessMergerWebForm.ClientInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style>
    .radio-button {
        width: 16px;
        height: 16px;
    }
        .auto-style1 {
            width: 148px;
            height: 178px;
        }
    </style>
    <script src="wwwroot/Bootstrap/js/jquery-3.6.3.min.js"></script>
    <script src="wwwroot/Bootstrap/js/bootstrap.js"></script>
    <link href="wwwroot/Bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="wwwroot/Bootstrap/css/bootstrap.rtl.css" rel="stylesheet" />
    <script src="wwwroot/JS/AutoPasteImageFunction.js"></script>
    <script src="wwwroot/JS/NextToConfirmModal.js"></script>
    <script src="wwwroot/JS/ClearInformation.js"></script>
    <title></title>
</head>
<body>
<form id="form1" runat="server">
     <div style="padding-top:12px"></div>
    <div style="width: 60.00%; margin: auto; border: 1px solid #00bff4;">
       
        <div style="text-align:center; align-items:center; background-color:#00bff4; color:aliceblue; font-size:18px; padding-top:16px; padding-bottom:16px;">
            ข้อมูลลูกค้า
        </div>
        <div style="text-align:center; padding-top:12px; padding-bottom:12px;">
             <img id="Client_Image" src="wwwroot/Assets/Images/blank-person.jpg" alt="Clipboard Image" class="auto-style1" />
        </div>
        <div>
            <div style="padding-left:14px; padding-top:3px; padding-bottom:3px;">
                <asp:Label runat="server" ID="LabelDisplayName_TH">ชื่อ-นามสุกล</asp:Label>
            </div>
<div style="display: flex; flex-wrap: wrap; padding-left:14px; padding-right:14px;">
  <div style="flex: 1; display: flex; flex-direction: column; margin-right: 10px;">
    <asp:TextBox ID="Title_Name_TextBox_TH" runat="server" Width="100%" style="width: calc(100% - 5px);"></asp:TextBox>
    <asp:Label runat="server" ID="Title_Name_Label_TH" style="margin-top: 4px;  color:darkgray; font-size:9px;">คำนำหน้าชื่อ</asp:Label>
  </div>
  <div style="flex: 3; display: flex; flex-direction: column; margin-right: 10px;">
    <asp:TextBox ID="FirstName_TextBox_TH" runat="server" Width="100%" style="width: calc(100% - 5px);"></asp:TextBox>
    <asp:Label runat="server" ID="FirstName_Label_TH" style="margin-top: 4px; color:darkgray; font-size:9px;">ชื่อจริง</asp:Label>
  </div>
  <div style="flex: 3; display: flex; flex-direction: column; margin-right: 10px;">
    <asp:TextBox ID="MiddleName_TextBox_TH" runat="server" Width="100%" style="width: calc(100% - 5px);"></asp:TextBox>
    <asp:Label runat="server" ID="MiddleName_Label_TH" style="margin-top: 4px;  color:darkgray; font-size:9px;">ชื่อกลาง</asp:Label>
  </div>
  <div style="flex: 3; display: flex; flex-direction: column;">
    <asp:TextBox ID="LastName_TextBox_TH" runat="server" Width="100%" style="width: calc(100% - 5px);"></asp:TextBox>
    <asp:Label runat="server" ID="LastName_Label_TH" style="margin-top: 4px;  color:darkgray; font-size:9px;">นามสกุล</asp:Label>
  </div>
</div>

            <div style="padding-left:14px; padding-top:3px; padding-bottom:3px;">
                <asp:Label runat="server" ID="LabelDisplayName_EN">Firstname-Lastname</asp:Label>
            </div>
<div style="display: flex; flex-wrap: wrap; padding-left:14px; padding-right:14px;">
  <div style="flex: 1; display: flex; flex-direction: column; margin-right: 10px;">
    <asp:TextBox ID="Title_Name_TextBox_EN" runat="server" Width="100%" style="width: calc(100% - 5px);"></asp:TextBox>
    <asp:Label runat="server" ID="Title_Name_Label_EN" style="margin-top: 4px;  color:darkgray; font-size:9px;">Title</asp:Label>
  </div>
  <div style="flex: 3; display: flex; flex-direction: column; margin-right: 10px;">
    <asp:TextBox ID="FirstName_TextBox_EN" runat="server" Width="100%" style="width: calc(100% - 5px);"></asp:TextBox>
    <asp:Label runat="server" ID="FirstName_Label_EN" style="margin-top: 4px; color:darkgray; font-size:9px;">Firstname</asp:Label>
  </div>
  <div style="flex: 3; display: flex; flex-direction: column; margin-right: 10px;">
    <asp:TextBox ID="MiddleName_TextBox_EN" runat="server" Width="100%" style="width: calc(100% - 5px);"></asp:TextBox>
    <asp:Label runat="server" ID="MiddleName_Label_EN" style="margin-top: 4px;  color:darkgray; font-size:9px;">Middle</asp:Label>
  </div>
  <div style="flex: 3; display: flex; flex-direction: column;">
    <asp:TextBox ID="LastName_TextBox_EN" runat="server" Width="100%" style="width: calc(100% - 5px);"></asp:TextBox>
    <asp:Label runat="server" ID="LastName_Label_EN" style="margin-top: 4px;  color:darkgray; font-size:9px;">Lastname</asp:Label>
  </div>
</div>


 <div style="display: flex; flex-wrap: wrap;">

      <div style="flex:2; display:flex; flex-direction:column;">
   <div style="padding-left:14px; padding-top:3px; padding-bottom:3px;">
    <asp:Label runat="server" ID="ID_Document_Label">หมายเลขเอกสาร</asp:Label>
    </div>
<div style="display: flex; flex-wrap: wrap; padding-left:14px; padding-right:14px;">
  <div style="flex: 3; display: flex; flex-direction: column; margin-right: 10px;">
    <asp:TextBox ID="ID_Number_TextBox" runat="server" Width="100%" style="width: calc(100% - 5px);"></asp:TextBox>
    <asp:Label runat="server" ID="ID_Number_Label" style="margin-top: 4px;  color:darkgray; font-size:9px;">เลขประจำตัวประชาชน</asp:Label>
  </div>
  <div style="flex: 3; display: flex; flex-direction: column; margin-right: 10px;">
    <asp:TextBox ID="Passport_Number_TextBox" runat="server" Width="100%" style="width: calc(100% - 5px);"></asp:TextBox>
    <asp:Label runat="server" ID="Passport_Number_Label" style="margin-top: 4px; color:darkgray; font-size:9px;">เลขหนังสือเดินทาง</asp:Label>
  </div>
  <div style="flex: 1; display: flex; flex-direction: column; margin-right: 10px;">
    <asp:TextBox ID="Nation_TextBox" runat="server" Width="100%" style="width: calc(100% - 5px);">THA</asp:TextBox>
    <asp:Label runat="server" ID="Nation_Lable" style="margin-top: 4px;  color:darkgray; font-size:9px;">สัญชาติ</asp:Label>
  </div>
</div>
</div>

           <div style="flex:2; display:flex; flex-direction:column;">
   <div style="padding-left:14px; padding-top:3px; padding-bottom:3px;">
    <asp:Label runat="server" ID="BirthDate_Age_Label">วันเกิด-อายุ</asp:Label>
    </div>
<div style="display: flex; flex-wrap: wrap; padding-left:14px; padding-right:14px;">
  <div style="flex: 3; display: flex; flex-direction: column; margin-right: 10px;">
    <asp:TextBox ID="BirthDate_TextBox" runat="server" Width="100%" style="width: calc(100% - 5px);"></asp:TextBox>
    <asp:Label runat="server" ID="Label6" style="margin-top: 4px;  color:darkgray; font-size:9px;">วันเกิด</asp:Label>
  </div>
  <div style="flex: 3; display: flex; flex-direction: column; margin-right: 10px;">
    <asp:TextBox ID="Age_TextBox" runat="server" Width="100%" style="width: calc(100% - 5px);"></asp:TextBox>
    <asp:Label runat="server" ID="Age_Label" style="margin-top: 4px; color:darkgray; font-size:9px;">อายุ</asp:Label>
  </div>
</div>
</div>

</div>


<div>
<div style="display: flex; flex-wrap: wrap; padding-left:14px; padding-top:8px;" >
  <div style="flex:2;">
    <div style="display:flex; flex-direction:row; padding-bottom:8px;">
        <div>
        <input id="Male_Sex_Check" class="radio-button" type="radio" name="sex" value="ชาย" style="padding-right:4px;" />
        <asp:Label runat="server" ID="Male_Label">ชาย</asp:Label>
            </div>
    </div>
    <div style="display:flex; flex-direction:row; padding-bottom:8px;">
        <div>
        <input id="Female_Sex_Check" class="radio-button" type="radio" name="sex" value="หญิง" style="padding-right:4px;" />
        <asp:Label runat="server" ID="Female_Label">หญิง</asp:Label>
            </div>
    </div>
    <div style="display:flex; flex-direction:row; padding-bottom:8px;">
        <div>
        <input id="No_Sex_Check" class="radio-button" type="radio" name="sex" value="ไม่ระบุเพศ" style="padding-right:4px;" />
        <asp:Label runat="server" ID="No_Sex_Label">ไม่ระบุ</asp:Label>
            </div>
    </div>
  </div>
</div>
</div>

            <div>
             <div style="padding-left:14px; padding-top:3px; padding-bottom:3px;">
                <asp:Label runat="server" ID="Address_Label">ที่อยู่</asp:Label>
            </div>

            <div>
   <div style="display: flex; flex-wrap: wrap; padding-left:14px; padding-top:8px;" >
  <div style="flex:1;">
    <div style="display:flex; flex:1; flex-direction:row;  resize: both;">
<asp:TextBox runat="server" ID="Address_TextBox" style="width:98%;" ></asp:TextBox>
        </div>
        <div  style="display:flex; flex:1; flex-direction:row; padding-bottom:8px;">
        <asp:Label runat="server" ID="Dis_Address_Label" style="margin-top: 4px;  color:darkgray; font-size:9px;">เลขที่ - แขวง / ตำบล</asp:Label>
    </div>



    <div style="display:flex; flex-direction:row; padding-bottom:8px;">
        <div style="flex:2; display:flex; flex-direction:column; padding-right:12px;">
            <div   style="display:flex; flex:1; flex-direction:row; ">
            <asp:TextBox ID="District_TextBox" runat="server"></asp:TextBox>

                </div>
            <div  style="display:flex; flex:1; flex-direction:row; padding-bottom:8px;">
                 <asp:Label runat="server" ID="District_Label" style="margin-top: 4px;  color:darkgray; font-size:9px;">อำเภอ</asp:Label>
            </div>
            
        </div>
                <div style="flex:2; display:flex; flex-direction:column; padding-right:12px;">
        <div style="flex:2; display:flex; flex-direction:row; padding-right:12px;">

            <asp:TextBox ID="County_TextBox" runat="server"></asp:TextBox>
            

        </div>
                    <div  style="display:flex; flex:1; flex-direction:row; padding-bottom:8px;">
                 <asp:Label runat="server" ID="County_Label" style="margin-top: 4px;  color:darkgray; font-size:9px;">จังหวัด</asp:Label>
            </div>
                    </div>

    </div>

          <div style="display:flex; flex-direction:row; padding-bottom:8px;">
        <div style="flex:2; display:flex; flex-direction:column; padding-right:12px;">
            <div   style="display:flex; flex:1; flex-direction:row; ">
            <asp:TextBox ID="PostCode_TextBox" runat="server"></asp:TextBox>

                </div>
            <div  style="display:flex; flex:1; flex-direction:row; padding-bottom:8px;">
                 <asp:Label runat="server" ID="PostCode_Label" style="margin-top: 4px;  color:darkgray; font-size:9px;">รหัสไปรษณีย์</asp:Label>
            </div>
            
        </div>
                <div style="flex:2; display:flex; flex-direction:column; padding-right:12px;">
        <div style="flex:2; display:flex; flex-direction:row; padding-right:12px;">
            <asp:TextBox ID="Country_TextBox" runat="server" Text="ประเทศไทย"></asp:TextBox>
        </div>
            <div style="display:flex; flex:1; flex-direction:row; padding-bottom:8px;">
                 <asp:Label runat="server" ID="Country_Label" style="margin-top: 4px;  color:darkgray; font-size:9px;">ประเทศ</asp:Label>
            </div>
                </div>

    </div>

  </div>
</div>
                </div>


            </div>


    </div>
        <div style="text-align:center;">
            <button type="button" id="clear_From_Button" class="btn-warning"  onclick="ClearInformation()">Clear</button>
            <button type="button" id="next_To_Confirm_Button" class="btn btn-primary" onclick="OpenConfirmModal()" >Next</button>
        </div>
        <div style="padding-bottom:30px;"></div>
    </div>

    <div class="modal" id="Confirm_Modal">
    <div class="modal-dialog">
        <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" >Confirm Customer Information</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal" style="margin: 0;"></button>
      </div>
            <div class="modal-body">

                    <div>
                        <asp:Label runat="server" ID="Email_Label" Text="Email:"></asp:Label>
                    </div>
                    <div>
                         <asp:TextBox runat="server" ID="Email_TextBox"></asp:TextBox>
                    </div>
                <div style="padding-top:8px; padding-bottom:8px;"></div>
                    <div>
                          <asp:Label runat="server" ID="MobilePhone_Label" Text="Mobile Number:"></asp:Label>
                    </div>
                    <div>
                    <asp:TextBox runat="server" ID="MobilePhone_TextBox"></asp:TextBox>
                    </div>
                </div>
                  <div class="modal-footer">

        <asp:Button type="button" ID="Save_Client_Button" runat="server" CssClass="btn btn-primary" data-bs-dismiss="modal" Text="Save" OnClick="Save_Client_Button_Click"/>
        
                </div>
            </div>
        </div>
    </div>



</form>
</body>
</html>
