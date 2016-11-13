$(document).ready(function(){
  viewPublished()
  viewDrafts();
  viewDefault();
  addComment();
  // storeCommentName();
  // storeCommentBody();
  addCommentField();
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

function addCommentField(){
  $('.comment-button').on('click', function(e){
    $('.post-body').append(
      "<br><div class='comment-post' data-id='" +
      $(this).data('id') +
      "'><h6>Add your comment below:</h6> "+
      "<form class='comment-form'>Name:<input type='text' name='name' class='comment-name-'" + 
      $(this).data('id')+
      "'><br>Comment:<input type='text-area' name='comment-field' class='comment-body'>" +
      "<br><input type='button' value='Submit' class='add-comment-button'></input></form></div>"
    );
    }    
  )
}

// function storeCommentName(){
//   $(".post").on('keyup', '#comment-name', function(e){
//     var name = e.target.value;
//   })
// }
// function storeCommentBody(){
//   $(".post").on('keyup', '#comment-body', function(e){
//     var body = e.target.value;
//   })
// }

function addComment(){  
  $('.post').on('click', '.add-comment-button', function(e){
    debugger;
    console.log($(".comment-name").val())
    var commentParams = {
        name: $(".comment-name").val(),
        body: $(".comment-body").val(),
        post_id: $(".comment-post").val()
      };
      
      $.ajax({
        type: 'POST',
        url:  '/api/v1/comments',
        data: commentParams,
        success: function(newComment){
          renderComment(newComment);
        },
      })
    })
}
  // $('.comment-form').on('click', 'input.add-comment-button', function(e){
  //   console.log('hit')
  //   debugger;
  //   var commentParams = {
  //     name: $("#comment-name").val(),
  //     body: $("#comment-body").val(),
  //     post_id: $(".comment-post").val()
  //   };
  //   
  //   $.ajax({
  //     type: 'POST',
  //     url:  '/api/v1/comments',
  //     data: commentParams,
  //     success: function(newComment){
  //       renderComment(newComment);
  //     },
  //     error: function(xhr){
  //       console.log(xhr.responseText);
  //     }
  //   });
  //   })
  // }

