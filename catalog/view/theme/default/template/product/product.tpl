<?php echo $header; ?><?php echo $column_right; ?><?php echo $content_top; ?>
<div class="crumbs">
<ul>
    <?php
    $count = count($breadcrumbs);
    $i=1;
    foreach ($breadcrumbs as $breadcrumb) {
     if($i!=$count){
     ?>
<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text'] . ' /  '; ?></a></li>
     <?php
      }
     else{
     ?><li><?php echo $breadcrumb['text']; ?></li>
     <?php }
        $i++;
     } ?>
</ul>
</div><!-- End crumbs -->

<div class="obj-content">

<h1><?php echo $heading_title;?></h1>

<div class="object-gallery">
    <?php if ($thumb || $images) { ?>
      <?php $i=1; ?>
      <?php if ($thumb) { ?>
<script type="text/javascript">
            $(document).ready(function(){
                $('.slider-for').slick({
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    arrows: true,
                    prevArrow:'<div class="car-prev"></div>',
                    nextArrow:'<div class="car-next"></div>',
                    fade: true,
                    asNavFor: '#carousel-thumb'
                });
            $('#carousel-thumb').slick({
                autoplay: false,
                variableWidth: true,
                autoplaySpeed: 10000,
                pauseOnHover: false,
                slidesToShow: 4,
                slidesToScroll: 1,
                asNavFor: '.slider-for',
                dots: false,
                focusOnSelect: true
            });
			
			/*$('.slider-for').hover(
            function(){ $('.car-prev').addClass('hover') },
            function(){ $('.car-prev').removeClass('hover') }
            );
		    $('.slider-for').hover(
            function(){ $('.car-next').addClass('hover') },
            function(){ $('.car-next').removeClass('hover') }
            );*/
			
			
            });
</script>

<script type="text/javascript"><!--
            /*$(document).ready(function() {
                $('.colorbox').colorbox({
                    overlayClose: true,
                    opacity: 0.5,
                    rel: "colorbox"
                });
            });*/
			$('.fancybox-buttons').fancybox({
				openEffect  : 'none',
				closeEffect : 'none',

				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : true,

				helpers : {
					title : {
						type : 'inside'
					},
					buttons	: {}
				},

				afterLoad : function() {
					this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
				}
			});
//--></script>
        <div class="image">
          <?php if ($images) { ?>
          <div class="slider-for">
              <?php foreach ($images as $image) { ?>
              <div>
                  <!--<a class="thumbnail colorbox" href="<?php echo $image['orig']; ?>" title="<?php echo $heading_title; ?>"  onclick="return false;"><img class="img-target <?php if($i==1){echo 'active';}?>" id="img<?php echo $i; ?>" src="<?php echo $image['full']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>-->
                  <a class="fancybox-buttons" data-fancybox-group="button" href="<?php echo $image['orig']; ?>" title="<?php echo $heading_title; ?>"  onclick="return false;"><img class="img-target <?php if($i==1){echo 'active';}?>" id="img<?php echo $i; ?>" src="<?php echo $image['full']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
		<?php if($badge && trim($badge)=='sale'){ ?>
        <?php echo '<div class="new-sale"><span>Продано</span></div>'; ?>
        <?php } else if($badge && trim($badge)=='new'){ ?>
        <?php echo '<div class="new-sale"><span>Новое</span></div>'; ?>
	    <?php } else if($badge && trim($badge)=='quick'){ ?>
	    <?php echo '<div class="new-sale"><span>Срочно</span></div>'; ?>
		<?php } else if($badge && trim($badge)=='action'){ ?>
		<?php echo '<div class="new-sale"><span>Акция</span></div>'; ?>
		<?php } else if($badge && trim($badge)=='removed'){ ?>
		<?php echo '<div class="new-sale"><span>Снято</span></div>'; ?>
	    <?php } ?>
			  </div>
              <?php $i++; ?>
              <?php } ?>
          </div>
<script type="text/javascript">
                  $(document).ready(function(){
                      var h = $('.slider-for').find('img.active').height() + 10;
                      var sold = $('.image').find('.sold');
                      $(sold).css('height', h);
                      $(sold).click(function(){
                          $('.slider-for').find('img.active').trigger('click');
                      });
                  });
</script>
          <?php } ?>

          <?php if ($images) { ?>
          <div id="carousel-thumb" class="thumb-gallery">
             <?php foreach ($images as $image) { ?>
              <div>
                    <a class="thumbnail " href="<?php echo $image['orig']; ?>" title="<?php echo $heading_title; ?>" onclick="return false;"><img data-img="<?php echo $image['full']; ?>" class="img-target <?php if($i==1){echo 'active';}?>" id="img<?php echo $i; ?>" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
              </div>
              <?php $i++; ?>
              <?php } ?>
          </div>
          <?php } ?>
      </div>
      <?php } ?>
    <?php } ?>
</div>

<div class="gallery-desc">
		<div class="left-desc">
		
			<p>№ объекта: <span><?php echo $model ?></span></p>
			
			<div class="price-block">
			<?php if(!$special_usd) { ?>
			<h2>Цена:</h2> <h3><?php echo $rub; ?> руб.<?php if($square_meter[0]["square_meter"] == '1'){ ?>/кв.м.<?php } ?></h3>
			<p class="price"><?php echo $usd; ?> у.е.<?php if($square_meter[0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></p>
			<?php }else{ ?>
			<?php if ($currency_id == 1){ ?>
			<h2>Цена:</h2><h3><strike><?php echo $rub; ?> руб.<?php if($square_meter[0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></strike></h3>
			<p class="price"><?php echo $special_rub; ?> руб.<?php if($square_meter[0]["square_meter"]  == '1') { ?>/кв.м.<?php } ?></p>
			<?php }else{ ?>
			<h2>Цена:</h2><h3><strike><?php echo $usd; ?> у.е.<?php if($square_meter[0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></strike></h3>
			<p class="price"><?php echo $special_usd; ?> у.е.<?php if($square_meter[0]["square_meter"]  == '1') { ?>/кв.м.<?php } ?></p>
			<?php } ?>
			<?php } ?>
			</div>
			
			<div class="info-block">
			<?php if ($options) { ?>
			<ul>
			<?php $i = 0; ?>
			<?php foreach ($options as $option) { ?>
			<?php $i++; ?>
			<?php if($i > 5) break; ?>
			<li>
				<p><?php echo $option['name']; ?>:</p>
				<span><?php echo $option['option_value']; ?></span>
			</li>
			<?php } ?>
				<!--<li class="adressblock">
					<p>Адрес: <?php if(!empty($adress["option_value"])){ ?><span><?php echo $adress["option_value"]; ?></span><?php }else{ ?><span><?php echo '-'; ?></span><?php } ?></p>
				</li>
				<li>
					<p>Количество комнат:</p>
					<span><?php if(!empty($number_of_rooms_value["option_value"])){ ?><div class="info_value"><?php echo $number_of_rooms_value["option_value"]; ?></div><?php }else{ ?><div class="info_value"> - </div><?php } ?></span>
				</li>
				<li>
					<p>Общая площадь:</p>
					<span><?php if(!empty($number_of_total_area["option_value"])){ ?><div class="info_value"><?php echo $number_of_total_area["option_value"]; ?></div><?php }else{ ?><div class="info_value"> - </div><?php } ?></span>
				</li>
				<li>
					<p><div id="minimal_change">Этаж:</div></p>
					<span><?php if(!empty($floor["option_value"])){ ?><div class="info_value_3"><?php echo $floor["option_value"]; ?></div><?php }else{ ?><div class="info_value_3"> - </div><?php } ?></span>
				</li>
				<li>
					<p><div id="minimal_change_2">Этажность:</div></p>
					<span><?php if(!empty($floors["option_value"])){ ?><div class="info_value_4"><?php echo $floors["option_value"]; ?></div><?php }else{ ?><div class="info_value_4"> - </div><?php } ?></span>
				</li>-->
			
			</ul>
			
			<?php } ?>
			</div>
			
			<div class="contact-block">
			<ul>
				<li class="contact">
					<p>Контакты:</p>
					<h3><?php if(!empty($agent["phone_1"])) {?><?php echo $agent["phone_1"]; ?><?php }else{ ?><?php echo $setting["config_telephone"]; ?><?php }?></h3>
					<?php if(!empty($agent["email"])) {?><a href="mailto://<?php echo $agent["email"]; ?>"><?php echo $agent["email"]; ?></a><?php }else{ ?><a href="mailto://<?php echo $setting["config_email"]; ?>"><?php echo $setting["config_email"]; ?></a><?php }?>    
					<a class="go-req" href="/contact/#bottom">Оставить заявку</a>
					<a class="go-req-640" href="/contact.html#mobile">Оставить заявку</a>
				</li>
			</ul>
			</div>
		</div><!-- End left-desc -->

		<div class="right-desc">
		<?php if(!empty($relateds)){ ?>
			<p>Похожие объекты:</p>
			<ul>
			<?php for($i=0; $i < count($relateds); $i++ ){ ?>
			<?php if ($i == 3) break;?>
			<li><a target="_blank" href="<?php echo $relateds[$i]["href"]; ?>">
					<?php if(!empty($relateds[$i]["image"])){?>
					    <img src="<?php echo $relateds[$i]["image"]; ?>" alt="<?php echo $relateds[$i]["name"]; ?>">
					<?php }else{ ?>
					    <img src="<?php echo HTTP_IMAGE?>no_image_objects.png" alt="<?php echo $relateds[$i]["name"]; ?>" style="width:150px; height:90px;">
					<?php } ?>
					<div class="related-name"><?php echo $relateds[$i]["name"]; ?></div>
						<!--<?php if(!$relateds[$i]["special"]) { ?>	
						<h5>Цена: <span><?php echo $relateds[$i]["rub"]; ?> руб.<?php if($relateds[$i]["square_meter"][0]["square_meter"] == '1'){ ?>/кв.м.<?php } ?>
						/ 
						<?php echo $relateds[$i]["usd"]; ?> у.е.<?php if($relateds[$i]["square_meter"][0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></span></h5> 
						<?php }else { ?>
						<?php if ($relateds[$i]["currency_id"] == 1){ ?>
			            <h5>Цена: <span><strike><?php echo $relateds[$i]["rub"]; ?> руб.<?php if($relateds[$i]["square_meter"][0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></strike>
						/
			            <?php echo $relateds[$i]["special_rub"]; ?> руб.<?php if($relateds[$i]["square_meter"][0]["square_meter"]  == '1') { ?>/кв.м.<?php } ?></span></h5>
						<?php }else{ ?>
					    <h5>Цена: <span><strike><?php echo $relateds[$i]["usd"]; ?> у.е.<?php if($relateds[$i]["square_meter"][0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></strike>
						/
			            <?php echo $relateds[$i]["special"]; ?> у.е.<?php if($relateds[$i]["square_meter"][0]["square_meter"]  == '1') { ?>/кв.м.<?php } ?></span></h5>
						<?php } ?>
			            <?php } ?>-->
			<?php } ?>
			</a></li>
			</ul>
			<?php } ?>
		</div>
</div>
		<div class="under-desc-gal">
		<div class="name-under-desc-gal">Описание:</div>
		<p><?php echo $description; ?></p>
		</div>
		<div class="maps">
			<p class="name">На карте:</p>
			<!--<script type="text/javascript" charset="utf-8" src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=bs9KwyDU3TXNyppIsLrFGCq0TrTIMLWN&width=100%&height=380"></script>-->
			<div id="map" style="width:100%; height:380px"></div>
		    <script src="http://api-maps.yandex.ru/2.0/?load=package.standard&lang=ru-RU" type="text/javascript"></script>
                <?php if($ean) { ?>
                    <script type="text/javascript">
                        var myMap;
                        ymaps.ready(init);
                        function init()
                        {
                            ymaps.geocode('<?php echo $ean; ?>', {
                                results: 1
                            }).then
                            (
                                function (res)
                                {
                                    var firstGeoObject = res.geoObjects.get(0),
                                        myMap = new ymaps.Map
                                        ("map",
                                            {
                                                center: firstGeoObject.geometry.getCoordinates(),
                                                zoom: 16
                                            }
                                        );
                                    var myPlacemark = new ymaps.Placemark
                                    (
                                        firstGeoObject.geometry.getCoordinates(),
                                        {
                                            iconContent: ''
                                        },
                                        {
                                            preset: 'twirl#blueStretchyIcon'
                                        }
                                    );
                                    myMap.geoObjects.add(myPlacemark);
                                    myMap.controls.add(new ymaps.control.ZoomControl()).add(new ymaps.control.ScaleLine()).add('typeSelector');
                                },
                                function (err)
                                {
                                    alert(err.message);
                                }
                            );
                        }
                    </script>
                <?php } ?>
		</div>
		
		<div class="right-desc-640">
 		<?php if(!empty($relateds)){ ?>
			<p>Похожие объекты:</p>
			<ul>
			<?php for($i=0; $i < count($relateds); $i++ ){ ?>
			<?php if ($i == 3) break;?>
			<li><a href="<?php echo $relateds[$i]["href"]; ?>">
					<?php if(!empty($relateds[$i]["image"])){?>
					    <img src="<?php echo $relateds[$i]["image"]; ?>" alt="<?php echo $relateds[$i]["name"]; ?>">
					<?php }else{ ?>
					    <img src="<?php echo HTTP_IMAGE?>no_image_objects.png" alt="<?php echo $relateds[$i]["name"]; ?>" style="width:150px; height:90px;">
					<?php } ?>
					<div class="related-name"><?php echo $relateds[$i]["name"]; ?></div>
						<!--<?php if(!$relateds[$i]["special"]) { ?>	
						<h5>Цена: <span><?php echo $relateds[$i]["rub"]; ?> руб.<?php if($relateds[$i]["square_meter"][0]["square_meter"] == '1'){ ?>/кв.м.<?php } ?>
						/ 
						<?php echo $relateds[$i]["usd"]; ?> у.е.<?php if($relateds[$i]["square_meter"][0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></span></h5> 
						<?php }else { ?>
						<?php if ($relateds[$i]["currency_id"] == 1){ ?>
			            <h5>Цена: <span><strike><?php echo $relateds[$i]["rub"]; ?> руб.<?php if($relateds[$i]["square_meter"][0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></strike>
						/
			            <?php echo $relateds[$i]["special_rub"]; ?> руб.<?php if($relateds[$i]["square_meter"][0]["square_meter"]  == '1') { ?>/кв.м.<?php } ?></span></h5>
						<?php }else{ ?>
					    <h5>Цена: <span><strike><?php echo $relateds[$i]["usd"]; ?> у.е.<?php if($relateds[$i]["square_meter"][0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></strike>
						/
			            <?php echo $relateds[$i]["special"]; ?> у.е.<?php if($relateds[$i]["square_meter"][0]["square_meter"]  == '1') { ?>/кв.м.<?php } ?></span></h5>
						<?php } ?>
			            <?php } ?>-->
			<?php } ?>
			</a></li>
			</ul>
			<?php } ?>
		</div><!-- End right-desc -->
		
</div><!-- End obj-content -->

<?php echo $footer; ?>

    <script type="text/javascript">
        window.onload = function(){
            jQuery('html, body').animate({scrollTop:470}, 'fast');
        }
    </script>