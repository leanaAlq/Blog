//= require rails-ujs
//= require activestorage
//= require jquery
//= require turbolinks
//= require_tree .
$(document).on("turbolinks:load", function() {
  console.log("jquery connected!");

  $("select").formSelect();

  $("h3").on("click", function() {
    console.log("click!");
  });
});
