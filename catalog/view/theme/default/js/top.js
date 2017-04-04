$(document).ready(function() {
	
	/*$('body').append('<div class="button-up"><div class="top">▲<br/>Наверх</div></div>');
	$('.button-up').animate({
				'opacity':'1',
			}).css({'background-color':'#E0E5EB','color':'#003366'});
			
	$ (window).scroll (function () {
		if ($ (this).scrollTop () > 300) {
			$ ('.button-up').fadeIn();
		} else {
			$ ('.button-up').fadeOut();
		}
	});
	
	$('.button-up').click(function(){
		$('body,html').animate({
            scrollTop: 0
        }, 600);
        return false;
	});
	
	$('.button-up').hover(function() {
			$(this).animate({
				'opacity':'1',
			}).css({'background-color':'#E0E5EB','color':'#003366'});
		}, function(){
			$(this).animate({
				'opacity':'0.2'
			}).css({'opacity':'0.2','background-color':'#E0E5EB','color':'#003366'});;
	});*/
	

 
$(window).scroll(function() {
 
if($(this).scrollTop() != 0) {
 
$('.button-up').fadeIn();
 
} else {
 
$('.button-up').fadeOut();
 
}
 
});
 
$('.button-up').click(function() {
 
$('body,html').animate({scrollTop:0},600);
 
});
 
});
		
