//= require jquery
//= require jquery_ujs
//= require jquery.raty
//= require ratyrate
//= require bootstrap/dist/js/bootstrap.js
//= require_tree .


$.ajax({
    url: "/plants/index",
    cache: false,
    success: function(html){
      $("#plant_searcher").append(html);
    }
});
