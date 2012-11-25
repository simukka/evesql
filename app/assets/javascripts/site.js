$(function() {
  $('.dropdown-toggle').dropdown();
  $('#account-tabs a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
  });
  $('#account-tabs a:first').tab('show');
  $('#api-status').on('click','a',function(event){
    var api = $(this).data().api;
    $('#api-status .active').removeClass('active');
    $(this).parent('li').addClass('active');
    if(api==='all'){
      $('#api-overview li').show();
    } else if(api===true){
      $('#api-overview li.muted').hide();
    };
    return false;
  });
});