function setWordCount() {
  var wordCount;
  var body = $(".writing-area textarea").val().trim()
    var words = string.replace(/\s+/gi, ' ').split(' ').length
    var chars = string.length;
  if(!chars)words=0;

  if (body === "") {
    wordCount = 0;
  } else {
    wordCount = body.split(/\s+/).length;
  }

  $(".word-count").val(wordCount);
}

$(function() {
  $(".word-count").hover(function() {
    $(this).find(".words").toggleClass("hidden")
  })

  $("textarea").on("input", setWordCount)
})
