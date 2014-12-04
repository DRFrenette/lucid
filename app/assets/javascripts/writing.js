function setWordCount() {
  var wordCount;
  var body = $(".writing-area textarea").val().trim()

  if (body === "") {
    wordCount = 0;
  } else {
    wordCount = body.split(/\s+/).length;
  }

  $(".word-count").text(wordCount);
}

$(function() {
  $("textarea").on('input', setWordCount)
})

