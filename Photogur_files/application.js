// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//



// $(window).load(function () {
// var $window = $(window),
//     $main = $('.mainIframe');
//     $blurred = $('.blurred');
// var vague = $blurred.find('iframe').Vague({
//   intensity:5 //blur intensity
// });
// vague.blur();

// var scrollIframe = function () {
//   $blurred.find('iframe').css({
//     top: -$blurred.offset().top
//   });
// };
// $window.on('scroll',scrollIframe);

// scrollIframe();
// });

$(document).ready(function() {
  $('.productBox').mouseenter(function(){
	$(this).find('aside').hide("slide",{direction: 'right'});
	}).mouseleave(function(){
	$(this).find('aside').show("slide",{direction: 'left'});
	});
});

$(document).on('page:load', function () {

});
