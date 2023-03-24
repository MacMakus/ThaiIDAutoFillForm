function ClearInformation()
{
    var allTextBoxs = document.getElementsByTagName('input');
    for (var i = 0; i < allTextBoxs.length; i++) {
        var textBox = allTextBoxs[i];

        if (textBox.type == "text") {
            textBox.value = "";
        }
    }
    var radios = document.getElementsByName('sex');
    for (var i = 0; i < radios.length; i++) {
        radios[i].checked = false;
    }
    
    document.getElementById('clipboard-image').src = "wwwroot/Assets/Images/blank-person.jpg";
}