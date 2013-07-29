var portfolio = []
$(document).ready(function(){

  var display_chart = function () {
    var stock = $('#stocks').val();

    $.ajax({

    datatype: 'json',
    type: 'get',
    url: '/stocks/chart'+stock



    })


  }
});