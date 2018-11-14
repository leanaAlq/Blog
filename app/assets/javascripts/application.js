// require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
// var instance = M.Tabs.init(el, options);

// Or with jQuery

// $(document).ready(function() {});
$(document).on("turbolinks:load", function() {
  console.log("jquery connected!");
  $(".tabs").tabs();
  // $("select").formSelect();

  $("h3").on("click", function() {
    console.log("click!");
  });

  // Or with jQuery

  var a = $(".cloud").children()[0];
  $(a).css("height", "100px");
  $("li.tab").on("click", function() {
    // $(this).css("background-color", "#b8dbe8");
  });
});
