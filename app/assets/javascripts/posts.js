$(document).ready(function(){
  viewPublished()
  viewDrafts();
  viewDefault();
  addComment();
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

function addComment(){
  $('.comment-button').on('click', function(e){
    debugger;
    $('.post-body').append(
      "<br><div class='comment' data-id='" +
      $(this).data('id') +
      "'><h6>Add your comment below:</h6> "+
      "<form class='comment-form'>Name:<input type='text' name='name'><br>Comment:<input type='text-area' name='comment-field'><br><input type='submit' value='Submit'>" +
      "</form></div>"
    );
    }    
  )
}
