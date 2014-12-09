$(function() {
  var deleteProject = function() {
    var project = $(this);
    var projectData = project.serialize();

    $.ajax({
      url: project.attr("action"),
      type: "DELETE",
      data: projectsData
    });

    $(this).parent("li").fadeOut();

    return false;
  };

  $("body").on("submit", ".delete", deleteProject);
});
