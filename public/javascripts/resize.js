// var bgImage;
	
// var window_height;
// var window_width;
// var image_width;
// var image_height;

// var image_aspect_ratio;
// var window_aspect_ratio;

function resizeImage() {
	var bgImage = document.getElementById("bgImage");
	
	var bg = document.getElementById("bg");
	
	var window_height = window.innerHeight;
	var window_width  = window.innerWidth;
	var image_width   = bgImage.width;
	var image_height  = bgImage.height;
	
	var image_aspect_ratio  = image_width / image_height;
	var window_aspect_ratio = window_width / window_height;
	
	if (window_aspect_ratio <= image_aspect_ratio)
	{
		bgImage.style.height = "100%";
		bgImage.style.width = "auto";
		bg.style.height = "100%";
		bg.style.width = "auto";
	}
	else
	{
		bgImage.style.width  = "100%";
		bgImage.style.height = "auto";
		bg.style.width  = "100%";
		bg.style.height = "auto";
	}
}

window.onload = function() {
	resizeImage();
}
