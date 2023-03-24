document.addEventListener('paste', function (event) {
    var items = (event.clipboardData || event.originalEvent.clipboardData).items;
    for (var i = 0; i < items.length; i++) {
        if (items[i].type.indexOf('image') !== -1) {
            var blob = items[i].getAsFile();
            var reader = new FileReader();
            reader.onload = function (event) {
                document.getElementById('Client_Image').src = event.target.result;
                console.log(document.getElementById('Client_Image').src);
            };
            reader.readAsDataURL(blob);
            //var codeImage = event.target.result;
            //console.log(codeImage);
            //var codeImage = document.getElementById('Client_Image').src;
            //console.log(codeImage);
        }
    }



});