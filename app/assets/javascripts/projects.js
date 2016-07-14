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

  $('.category').on('click', function(e){
    $('.Catdiv').html('');
      $.ajax({
        url: "/projects/cat_search",
        method: 'GET',
        data: { "category": $(this).data("category") },
        dataType: 'html'
      }).done(function(responseData){
        console.log(responseData);
        $('.Catdiv').append(responseData);
      });
  });
  //
  // $('#nature').on('click', function(e){
  //   $('#Naturediv').html('');
  //   $.ajax({
  //     url: "/projects/cat_search",
  //     method: 'GET',
  //     data: { "category": "Nature" },
  //     dataType: 'html'
  //   }).done(function(responseData){
  //     console.log(responseData);
  //     $('#Naturediv').append(responseData);
  //   });
  // });


});
