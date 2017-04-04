jQuery(document).ready(function() {
   jQuery('a[href^="#"]').click(function () { 
     elementClick = jQuery(this).attr("href");
     destination = jQuery(elementClick).offset().top;
     if(jQuery.browser.safari){
       jQuery('body').animate( { scrollTop: destination }, 1100 );
     }else{
       $('html').animate( { scrollTop: destination }, 1100 );
     }
     return false;
   });
 });