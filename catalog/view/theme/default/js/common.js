$(document).ready(function() {
  /* Search */
    $('button.btn.btn-default').on('click', function() {
        url = $('base').attr('href') + 'index.php?route=product/search';
                 
        var search = $('input[name=\'search\']').prop('value');
        
        if (search) {
            url += '&search=' + encodeURIComponent(search);
        }
        
        location = url;
    });

	$('input[name=\'search\']').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			url = $('base').attr('href');

			var search = $(this).attr('value');
			if (search) {
				url += 'search/?filter_name=' + encodeURIComponent(search);
			}

			location = url;
		}
	});

	/*$(".drop-menu").click(function() {
		$(this).next().slideToggle();
	});*/
	$(".drop-mob").click(function() {
		$("nav").slideToggle();
	});
	$(".close-nav").click(function() {
		$("nav").slideToggle();
	});
	$(".drop-mob").click(function() {
		$(".drop-mob").slideToggle();
	});
	$(".close-nav").click(function() {
		$(".drop-mob").slideToggle();
	});
	$(".callback").click(function() {
		$(".callback-form").slideToggle();
	});
	$(".close-form-but").click(function() {
		$(".callback-form").slideToggle();
	});
	$(".go-to-viev").click(function() {
		$(".viev-form").slideToggle();
	});
	$(".close-viev-form-but").click(function() {
		$(".viev-form").slideToggle();
	});
	$(".to-ask").click(function() {
		$(".ask-form").slideToggle();
	});
	$(".close-form-ask").click(function() {
		$(".ask-form").slideToggle();
	});
	//Таймер обратного отсчета
	//Документация: http://keith-wood.name/countdown.html
	//<div class="countdown" date-time="2015-01-07"></div>
	var austDay = new Date($(".countdown").attr("date-time"));
	$(".countdown").countdown({until: austDay, format: 'yowdHMS'});


	//Попап менеджер FancyBox
	//Документация: http://fancybox.net/howto
	//<a class="fancybox"><img src="image.jpg" /></a>
	//<a class="fancybox" data-fancybox-group="group"><img src="image.jpg" /></a>
	$(".fancybox").fancybox();

	//Навигация по Landing Page
	//$(".top_mnu") - это верхняя панель со ссылками.
	//Ссылки вида <a href="#contacts">Контакты</a>
	$(".top_mnu").navigation();

	//Добавляет классы дочерним блокам .block для анимации
	//Документация: http://imakewebthings.com/jquery-waypoints/
	$(".block").waypoint(function(direction) {
		if (direction === "down") {
			$(".class").addClass("active");
		} else if (direction === "up") {
			$(".class").removeClass("deactive");
		};
	}, {offset: 100});

	//Плавный скролл до блока .div по клику на .scroll
	//Документация: https://github.com/flesler/jquery.scrollTo
	$("a.scroll").click(function() {
		$.scrollTo($(".dolce-header-holder"), 800, {
			offset: -90
		});
	});

	//Каруселька
	//Документация: http://owlgraphic.com/owlcarousel/
	var owl = $(".carousel");
	owl.owlCarousel({
		items : 1,
		autoHeight : true
	});
	// owl.on("mousewheel", ".owl-wrapper", function (e) {
	// 	if (e.deltaY > 0) {
	// 		owl.trigger("owl.prev");
	// 	} else {
	// 		owl.trigger("owl.next");
	// 	}
	// 	e.preventDefault();
	// });
	$(".next_button").click(function() {
		owl.trigger("owl.next");
	});
	$(".prev_button").click(function() {
		owl.trigger("owl.prev");
	});
	
	//Кнопка "Наверх"
	//Документация:
	//http://api.jquery.com/scrolltop/
	//http://api.jquery.com/animate/
	$("#top").click(function () {
		$("body, html").animate({
			scrollTop: 0
		}, 800);
		return false;
	});
	
	//Аякс отправка форм
	//Документация: http://api.jquery.com/jquery.ajax/
	$("#callback").submit(function() {
		$.ajax({
			type: "GET",
			url: "mail.php",
			data: $("#callback").serialize()
		}).done(function() {
			alert("Спасибо за заявку!");
			setTimeout(function() {
				$.fancybox.close();
			}, 1000);
		});
		return false;
	});
	
	/* Подготавливаем иконку меню */
	$('#nav-wrap').prepend('<div id="menu-icon"></div>');
	
	/* Переключаем навигацию */
	$("#menu-icon").on("click", function(){
		$("#nav").slideToggle();
		$(this).toggleClass("active");
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

});



