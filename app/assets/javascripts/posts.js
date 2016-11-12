$(document).ready(function(){
  viewPublished()
  viewDrafts();
  viewDefault();
})

function viewDefault(){
  $posts = $('div.post')
  $posts.each(function(post){
    if($(this).hasClass("published")){
      $(this).show()
    } else {
      $(this).hide()
    }
  })
}

function viewDrafts(){
  $('#drafts-button').on('click', function(e){
    $posts = $('div.post')
    $posts.each(function(post){
      if($(this).hasClass("draft")){
        $(this).show()
      } else {
        $(this).hide()
      }
  })
  })
}

function viewPublished(){
  $('#published-button').on('click', function(e){
    $posts = $('div.post')
    $posts.each(function(post){
      if($(this).hasClass("published")){
        $(this).show()
      } else {
        $(this).hide()
      }
  })
  })
}
