$(function() {
  $(".upvote, .downvote").click(function(event) {
    var button = $(event.target).closest("input");
    var path = button.closest('[action]').attr("action");

    $.post(path).done(function(data) {
      var promptId = data.prompt_id;
      var score = $("#score_" + promptId);
      $(score).text("Score: " + data.score)
    });

    return false;
  });
});
