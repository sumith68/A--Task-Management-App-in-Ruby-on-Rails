// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){
  $(".flip").click(function(){
    $(".panel").slideToggle("slow");
  });
});


$(document).ready(function(){
	$("a").click(function(){
	$(this).fadeTo("slow",0.50);
	});
}); 


