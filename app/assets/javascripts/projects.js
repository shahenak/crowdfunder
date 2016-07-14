$(function(){
  $('.clicky').on('click', function(e){
    e.preventDefault();

    $.ajax({
      url: $(this).attr('href'),
      method: 'GET',
      data: { },
      dataType: 'html'
    }).done(function(responseData){
      $('.ajax_project').append(responseData);
    });
  });
});
