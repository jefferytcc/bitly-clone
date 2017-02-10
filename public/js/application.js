$(document).ready(function(){
  // this ID here refers to the form where the usesr types in a URL, you may have a different name for the ID. Edit the code accordingly.
  $('#myForm').submit(function(e){ 
    e.preventDefault();         
    $.ajax({
      url: '/urls', 
      method: 'POST',

      data: $(this).serialize(),
      success: function(data) {

      $(".table").html(data);
         },
      // error: function(data){
      //   alert("Url is in not in");
      // }
    }); // end of function .ajax
  }); // end of function .submit
}); // end of function document.ready