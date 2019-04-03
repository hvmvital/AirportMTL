$(document).ready(function(){
  $("#bntToday").click(function(){
    $("#demain").hide();
    $("#aujourdhui").show();
  });
  $("#bntTomorrow").click(function(){
    $("#aujourdhui").hide();
    $("#demain").show();
  });
});

