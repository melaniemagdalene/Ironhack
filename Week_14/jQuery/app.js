// jQuery Events

$(document).on("ready", function(){
	$("p").show();

	$(".js-button-1").on("click", function(){
		alert("First button added!")
	$(".newclass").fadeOut();
	});

	$(".js-button-2").on("click", function(){
		alert("Second button added!")
	$(".container > *").addClass(".unicorn-mode");
	});

	// Stop submitting
	// Check all inputs
	// Submit if all inputs have value
	$(".form").on(" ", function)(event.PreventDefault){
		if(element.val()==="")

		emptyCounts++
		alert("Invalid input")
	});
});
