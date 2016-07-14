$(function(){
  $('.clicky').on('click', function(e){
    e.preventDefault();
    $('.ajax_project').html('');
    $.ajax({
      url: $(this).attr('href'),
      method: 'GET',
      data: { },
      dataType: 'html'
    }).done(function(responseData){
      $('.ajax_project').append(responseData);
    });
  });

  $('#art').on('click', function(e){
    $.ajax({
      url: "/projects/cat_search",
      method: 'GET',
      data: { "category": "Art" },
      dataType: 'html'
    }).done(function(responseData){
      console.log(responseData)
    });
  });
});
