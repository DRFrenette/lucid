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

  $(".close").click(function() {
    $(".writing-area").submit()
  })

  $(function() {
    $(data).filter("span.word-count")
  })

  setWordCount()

  $(".close").hover(function() {
    $(".save-quit").toggleClass("hidden")
  })
})
