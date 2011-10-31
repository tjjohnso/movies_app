$(document).ready(function() {
  $("#moviesTable").tablesorter();
  $("#actorsTable").tablesorter();

  $("#thumbnailToggle").change( function() {
     $(".moviethumbnail").toggle();
  });

  $("#imagePreviewButton").click( function() {
    $("#imagethumbnail").html("<img src='"+$("#movie_image_url").val()+"'/>");
  });
});