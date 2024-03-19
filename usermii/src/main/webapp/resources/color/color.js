$(function () {
	$('head').append('<link rel="stylesheet" href="css/custom-0.css" rel="stylesheet">');
	$('.js-colorswatch').on('click',function (e){
		$('.colorswatch').toggleClass('opened');
	})
	$('.js-swatch-color').on('click',function (e){
		var color = $(this).attr('data-color');
		if(color != undefined){
			$('link[href*="css/custom-"]').attr('href','css/custom-'+color+'.css');
			$('.page-header .logo img').attr('src','images/logo-'+color+'.png');
		} else {
			$('link[href*="css/custom-"]').attr('href','css/custom-0.css');
			$('.page-header .logo img').attr('src','images/logo.png');
		}
		$('.js-swatch-color').removeClass('active');
		$(this).toggleClass('active');
		e.preventDefault();
	});

})