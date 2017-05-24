<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
    <meta charset="UTF-8" />
    <title><?php echo $title; ?></title>
	
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
    <?php } ?>
    <?php if ($icon) { ?>
    <link href="<?php echo $icon; ?>" rel="icon" />
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <?php foreach ($styles as $style) { ?>
    <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>
    <!--[if lt IE 9]>
	<script src="js/libs/html5shiv/es5-shim.min.js"></script>
	<script src="js/libs/html5shiv/html5shiv.min.js"></script>
	<script src="js/libs/html5shiv/html5shiv-printshiv.min.js"></script>
	<script src="js/libs/respond/respond.min.js"></script>
	<![endif]-->

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--Загружаем стили-->
    <meta name="HandheldFriendly" content="true"/>
	<link href="http://allfont.ru/allfont.css?fonts=lobster" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="catalog/view/theme/default/js/libs/owl-carousel/owl.carousel.css" />
	<link rel="stylesheet" href="catalog/view/theme/default/css/fonts.css" />
	<link rel="stylesheet" href="catalog/view/theme/default/css/colorbox.css" />
	
	<link rel="stylesheet" href="catalog/view/theme/default/css/main.css" />
	<link rel="stylesheet" href="catalog/view/theme/default/css/main-960.css" />
	<link rel="stylesheet" href="catalog/view/theme/default/css/main-640.css" />
	<link rel="stylesheet" href="catalog/view/theme/default/css/main-320.css" />
	
	<link rel="stylesheet" href="catalog/view/theme/default/css/media.css" />
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
	<!-- Add fancyBox main JS and CSS files -->
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/css/jquery.fancybox.css?v=2.1.4" media="screen" />
	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/js/libs/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/js/libs/jquery.fancybox-thumbs.css?v=1.0.7" />
	<!--Стили для формы связи с агентом в карточке обьекта-->
	<link rel="stylesheet" href="catalog/view/theme/default/css/jquery.fs.boxer.css" />
	<!--Стили для формы связи с агентом в карточке обьекта-->
	
    <!--Загружаем стили-->
	
	<!--Отключение мобильных стилей-->
	<meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="email=no" />
	<!--Отключение мобильных стилей-->
	
	<!--Загружаем js-->
	
	<!--Стандартные скрипты-->
	<script src="https://code.jquery.com/jquery.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
	<!--<script src="catalog/view/theme/default/js/libs/jquery/jquery-1.11.1.min.js"></script>-->
	<!--Подключаем библиотеки галереи-->
	<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.3.15/slick.min.js"></script>
	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="catalog/view/theme/default/js/libs/jquery.mousewheel-3.0.6.pack.js"></script>
	<script type="text/javascript" src="catalog/view/theme/default/js/libs/jquery.fancybox.js?v=2.1.4"></script>
	<script type="text/javascript" src="catalog/view/theme/default/js/libs/jquery.fancybox-buttons.js?v=1.0.5"></script>
	<script type="text/javascript" src="catalog/view/theme/default/js/libs/jquery.fancybox-thumbs.js?v=1.0.7"></script>
	<!-- Add Media helper (this is optional) -->
	<!--<script type="text/javascript" src="catalog/view/theme/default/libs/jquery.fancybox-media.js?v=1.0.5"></script>-->
	<script src="catalog/view/theme/default/js/libs/fancybox/jquery.fancybox.pack.js"></script>
	<script src="catalog/view/theme/default/js/libs/waypoints/waypoints-1.6.2.min.js"></script>
	<script src="catalog/view/theme/default/js/libs/scrollto/jquery.scrollTo.min.js"></script>
	<script src="catalog/view/theme/default/js/libs/owl-carousel/owl.carousel.min.js"></script>
	<script src="catalog/view/theme/default/js/libs/owl-carousel/owl.carousel.js"></script>
	<script src="catalog/view/theme/default/js/libs/countdown/jquery.plugin.js"></script>
	<script src="catalog/view/theme/default/js/libs/countdown/jquery.countdown.min.js"></script>
	<script src="catalog/view/theme/default/js/libs/landing-nav/navigation.js"></script>
	<script src="catalog/view/theme/default/js/common.js"></script>
	<!--<script type="text/javascript" src="catalog/view/theme/default/js/modalimage/imagelightbox.min.js"></script>-->
	<!--Подключаем библиотеки галереи-->
	<!--Библиотеки для формы связи с агентом в карточке обьекта-->
	<!--<script type="text/javascript" src="catalog/view/theme/default/js/modalagent/jquery.fs.boxer.js"></script>-->
	<!--Библиотеки для формы связи с агентом в карточке обьекта-->
    <!--<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
	<script src="catalog/view/javascript/dm-modal.js"></script>-->
    <!--<script type="text/javascript" src="catalog/view/theme/default/js/jquery.main.js"></script>-->
	<script type="text/javascript" src="catalog/view/theme/default/js/top.js"></script>

	<!--Стандартные скрипты-->

    <!--Загружаем js-->
	
    <?php foreach ($scripts as $script) { ?>
    <script type="text/javascript" src="<?php echo $script; ?>"></script>
    <?php } ?>
	
    <?php echo $google_analytics; ?>
	
	<!--Скрипты-->
<noscript>
			<style>
				.es-carousel ul{
					display:block;
				}
			</style>
</noscript>

<script id="img-wrapper-tmpl" type="text/x-jquery-tmpl">	
<div class="rg-image-wrapper">
	{{if itemsCount > 1}}
		<div class="rg-image-nav">
			<a href="#" class="rg-image-nav-prev"></a>
				<a href="#" class="rg-image-nav-next"></a>
        </div>
{{/if}}
<div class="rg-image"></div>
	<div class="rg-loading"></div>
		<div class="rg-caption-wrapper">
			<div class="rg-caption" style="display:none;">
				<p></p>
		    </div>
		</div>
</div>
</script>

<!--Мобильная версия - подключение-->
<!--<script type="text/javascript" src="catalog/view/theme/default/js/mobile/jquery.mobile-1.4.5.js"></script>-->
<script type="text/javascript" src="catalog/view/theme/default/js/mobile/jquery.mobile.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/mobile/jquery.mobile.custom.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/mobile/orientaion.js"></script>

<?php if($mobile){ ?>
<script type="text/javascript">
if (device.portrait()){
    $('head').append('<meta name="viewport" content="width=320, user-scalable=no">');
}else{
    $('head').append('<meta name="viewport" content="width=640, user-scalable=no">');
}
</script>

<script type="text/javascript">
$(document).ready(function(){
$(window).on("orientationchange", function(event){
    switch(event.orientation){
	
        case 'portrait':
            $('head').append('<meta name="viewport" content="width=320, user-scalable=no">'); 
        break;
		
        case 'landscape':
            $('head').append('<meta name="viewport" content="width=640, user-scalable=no">'); 
        break;
    }
});
});
</script>
<?php } ?>

<?php if($tablet){ ?>
<script type="text/javascript">
if (device.portrait()){
    $('head').append('<meta name="viewport" content="width=640, user-scalable=no">');
}else{
    $('head').append('<meta name="viewport" content="width=960, user-scalable=no">');
}
</script>

<script type="text/javascript">
$(document).ready(function(){
$(window).on("orientationchange", function(event){
    switch(event.orientation){
	
        case 'portrait':
            $('head').append('<meta name="viewport" content="width=640, user-scalable=no">'); 
        break;
		
        case 'landscape':
            $('head').append('<meta name="viewport" content="width=960, user-scalable=no">'); 
        break;
    }
});
});
</script>
<?php } ?>

<?php if($ios && $mobile){ ?>
<script type="text/javascript">
if (device.portrait()){
    $('head').append('<meta name="viewport" content="width=320, user-scalable=no">');
}else{
    $('head').append('<meta name="viewport" content="width=640, user-scalable=no">');
}
</script>

<script type="text/javascript">
$(document).ready(function(){
$(window).on("orientationchange", function(event){
    switch(event.orientation){
	
        case 'portrait':
		
(function(doc) {

	var addEvent = 'addEventListener',
	    type = 'gesturestart',
	    qsa = 'querySelectorAll',
	    scales = [1, 1],
	    meta = qsa in doc ? doc[qsa]('meta[name=viewport]') : [];

	function fix() {
		meta.content = 'width=320,minimum-scale=' + scales[0] + ',maximum-scale=' + scales[1];
		doc.removeEventListener(type, fix, true);
	}

	if ((meta = meta[meta.length - 1]) && addEvent in doc) {
		fix();
		scales = [.25, 1.6];
		doc[addEvent](type, fix, true);
	}

}(document));

        break;
		
        case 'landscape':
		
(function(doc) {

	var addEvent = 'addEventListener',
	    type = 'gesturestart',
	    qsa = 'querySelectorAll',
	    scales = [1, 1],
	    meta = qsa in doc ? doc[qsa]('meta[name=viewport]') : [];

	function fix() {
		meta.content = 'width=640,minimum-scale=' + scales[0.25] + ',maximum-scale=' + scales[1];
		doc.removeEventListener(type, fix, true);
	}

	if ((meta = meta[meta.length - 1]) && addEvent in doc) {
		fix();
		scales = [.25, 1.6];
		doc[addEvent](type, fix, true);
	}

}(document));

        break;
    }
});
});
</script>
<?php } ?>

<?php if($ios && $tablet){ ?>
<script type="text/javascript">
if (device.portrait()){
    $('head').append('<meta name="viewport" content="width=640, user-scalable=no">');
}else{
    $('head').append('<meta name="viewport" content="width=960, user-scalable=no">');
}
</script>

<script type="text/javascript">
$(document).ready(function(){
$(window).on("orientationchange", function(event){
    switch(event.orientation){
	
        case 'portrait':
		
(function(doc) {

	var addEvent = 'addEventListener',
	    type = 'gesturestart',
	    qsa = 'querySelectorAll',
	    scales = [1, 1],
	    meta = qsa in doc ? doc[qsa]('meta[name=viewport]') : [];

	function fix() {
		meta.content = 'width=640,minimum-scale=' + scales[0.5] + ',maximum-scale=' + scales[1];
		doc.removeEventListener(type, fix, true);
	}

	if ((meta = meta[meta.length - 1]) && addEvent in doc) {
		fix();
		scales = [.25, 1.6];
		doc[addEvent](type, fix, true);
	}

}(document));

        break;
		
        case 'landscape':
		
(function(doc) {

	var addEvent = 'addEventListener',
	    type = 'gesturestart',
	    qsa = 'querySelectorAll',
	    scales = [1, 1],
	    meta = qsa in doc ? doc[qsa]('meta[name=viewport]') : [];

	function fix() {
		meta.content = 'width=960,minimum-scale=' + scales[0.5] + ',maximum-scale=' + scales[1];
		doc.removeEventListener(type, fix, true);
	}

	if ((meta = meta[meta.length - 1]) && addEvent in doc) {
		fix();
		scales = [.25, 1.6];
		doc[addEvent](type, fix, true);
	}

}(document));

        break;
    }
});
});
</script>
<?php } ?>
<!--Мобильная версия - подключение-->

</head>
<body>
<?php //var_dump($ios); ?>
<?php //var_dump($mobile); ?>
<!-- =========================== Header =============================== -->
<div class="wrapper">
<div class="main">
	<div class="header-holder">
	<header>
		<div class="header-top">
			<ul>
				<li>
					<img src="catalog/view/theme/default/images/viber-head.png" alt="">
					<span>+7(978)101-39-50</span>
					<span class="no-pad">+7(978)138-96-59</span>
				</li>
				<li class="mail">
					<img src="catalog/view/theme/default/images/mail-head.png" alt="">
					<span>emailpartner@yandex.ru</span>
				</li>
				<li>
                <input type="text" name="search" type="submit" placeholder="Поиск по №" value="" />
				</li>
			</ul>
		</div><!-- End header-top -->
		<a href="<?php echo $home; ?>" class="logo-head"><img class="logo-head" src="<?php echo $logo; ?>" alt=""></a>
		<?php if ($categories_object) { ?>
		<ul class="left-menu">
			<?php foreach($categories_object as $cat){  ?>
		        <li><?php if ($cat['active']) { ?>
	                <a href="<?php echo $cat['href']; ?>" class="active"><?php echo $cat['name']; ?></a>
	            <?php } else { ?>
	                <a href="<?php echo $cat['href']; ?>"><?php echo $cat['name']; ?></a>
	            <?php } ?>
			    <?php } ?></li>
		</ul>	
		<?php } ?>
		<nav id="nav-wrap">
		<?php if ($categories_object) { ?>
			<ul id="nav">
				<?php foreach($categories_object as $cat){  ?>
		        <li><?php if ($cat['active']) { ?>
	                <a href="<?php echo $cat['href']; ?>" class="active"><?php echo $cat['name']; ?></a>
	            <?php } else { ?>
	                <a href="<?php echo $cat['href']; ?>"><?php echo $cat['name']; ?></a>
	            <?php } ?>
			    <?php } ?></li>
			</ul>
	    <?php } ?>
		</nav>
		<!-- /nav-wrap -->
	</header>

	<div class="full-1200">
		<nav>
			<ul>
			<!--<?php foreach($menu_array as $href => $menu) {?>			
                <li <?php if($parts_uri[0] == $href){ echo 'class="active_menu' ?><?php } ?>"><?php echo $menu; ?></li>
			<?php } ?>-->
				<li><a href="<?php echo $about; ?>">О компании</a></li>
				<li><a href="<?php echo $sale; ?>">Продажа</a></li>
				<li><a href="<?php echo $rent; ?>">Аренда</a></li>
				<li><a href="<?php echo $services; ?>">Услуги</a></li>
				<li><a href="<?php echo $contact; ?>">Контакты</a></li>
				<li class="send-message"><a class="hov" href="/contact.html#bottom">Оставить заявку</a>
				<div class="bag"></div>
				</li>
			</ul>
		</nav>
	</div>
	<div class="mobile-640">
		<nav>
			<ul>
		    <!--<?php foreach($menu_array as $href => $menu) { ?>			
                <li <?php if($parts_uri[0] == $href){ echo 'class="active_menu_mobile' ?><?php } ?>"><?php echo $menu; ?></li>
			<?php } ?>-->
				<li><a href="<?php echo $about; ?>">О компании</a></li>
				<li><a href="<?php echo $sale; ?>">Продажа</a></li>
				<li><a href="<?php echo $rent; ?>">Аренда</a></li>
				<li><a href="<?php echo $services; ?>">Услуги</a></li>
				<li><a href="<?php echo $contact; ?>">Контакты</a></li>
				<li class="send-message"><a href="/contact.html#mobile">Оставить заявку</a></li>
			</ul>
		</nav>
	</div>
	</div><!-- End header-holder -->
    