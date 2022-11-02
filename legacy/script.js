$(document).ready(function () {
  $("#corpsTexte").load("presentation.html");

  $(".onglet").click(function (e) {
    e.preventDefault();
    var add = $(this).attr("href");
    $(".active").removeClass("active");
    $(this).parent().addClass("active");
    $("#corpsTexte").load(add.substr(1) + ".html");
  });
});
