var search = document.getElementById('ajax');
var flag = 0;
var popup = document.getElementById('popup');
search.addEventListener('keyup', function (e) {
    //work with #popup
    function popup_func(data) {
        popup.style.visibility = 'visible';
        var li = document.createElement('li');
        li.className = "field";
        li.innerText = data;
        popup.appendChild(li);
    }
    //dell all elements by fag
    function dellAllChildelement(tag) {
        while (tag.firstChild) {
            tag.removeChild(tag.firstChild);
        }
        popup.style.visibility = 'hidden';
        flag = 0
    }
    if (search.value!='') {
        var domain = 'http://eshopmakers/';
        var ourRequest = new XMLHttpRequest;
        var url = domain + "test_ajax.php?city=" + search.value;
        var result = [];
        ourRequest.open("GET", url, true);
        ourRequest.onload = function () {
            var ourData = JSON.parse(ourRequest.responseText);
            if (ourData[0] == 'false' ) {
                dellAllChildelement(popup);
                popup_func('Нет данных');
                flag = 1;
            } else {
                dellAllChildelement(popup);
                for (var i = 0; i < ourData.length; i++) {
                    popup_func(ourData[i]);
                }
                flag = 2;
            }
        };
        ourRequest.send();
    }else{
        dellAllChildelement(popup);
    }
});