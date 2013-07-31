$(document).ready(function(){

//   $('#graphic').on('click', function() {
//     $('#chart').empty().append('<%=j render :partial => 'form'%>');
// });

function process_activity(activities){
  new Morris.Bar({
    // ID of the element in which to draw the chart.
    element: 'chart',
    // Chart data records -- each entry in this array corresponds to a point on
    // the chart.
    data: [
      { name: 'GOOG', value: 10 },
      { name: 'YHOO', value: 30 },
      { name: 'AAPL', value: 5 },
      { name: 'IBM', value: 20 },
      { name: 'GSK', value: 10 }

          ],
    // The name of the data record attribute that contains x-values.
    xkey: 'name',
    // A list of names of data record attributes that contain y-values.
    ykeys: ['value'],
    // Labels for the ykeys -- will be displayed when you hover over the
    // chart.
    labels: ['Value']
  });
}

if ($('#chart').length > 0) {process_activity() };

});