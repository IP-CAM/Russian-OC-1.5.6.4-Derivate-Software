<?php echo $header; ?>
<!-- ============================ Content ================================= -->
<div class="content-contact">
	<h1>Контакты - АН "Партнер"</h1>
	<ul>
		<li><span>Наш адрес: </span>
			<p><?php echo $address; ?></p>
		</li>
		<li class="phone-li"><span>Телефоны:</span>
			<p class="phone-2"><?php echo $fax; ?></p><br />
			<p class="phone"><?php echo $telephone; ?></p>
		</li>
		<li><span>E-mail: </span>
			<p><?php echo $setting["config_email"]; ?></p>
		</li>
		<?php if($setting["skype"]){?>
		<li><span>Skype: </span>
			<p><?php echo $setting["skype"]; ?></p>
		</li>
		<?php } ?>
	</ul>
</div><!-- End content-contact -->

	<div class="maps maps-contact">
		<p class="name">Мы на карте:</p>
		<!--<script type="text/javascript" charset="utf-8" src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=bs9KwyDU3TXNyppIsLrFGCq0TrTIMLWN&width=100%&height=324"></script>-->
		<div id="map"></div>
		    <script src="http://api-maps.yandex.ru/2.0/?load=package.standard&lang=ru-RU" type="text/javascript"></script>
                <?php if($setting["config_address"]) { ?>
                    <script type="text/javascript">
                        var myMap;
                        ymaps.ready(init);
                        function init()
                        {
                            ymaps.geocode('<?php echo $setting["config_address"]; ?>', {
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

<div class="form-holder" id="bottom">

<p class="name">Оформление заявки</p>
		
<form class="contact" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">

        <div class="left-form">
	    <div class="inp-block first">
        <p class="name-form">Имя:</p>
        <input type="text" name="name" value="<?php echo $name; ?>" />

        <?php if ($error_name) { ?>
        <?php echo $error_name; ?>
        <?php } ?>
        </div>

		<div class="inp-block">
        <p>E-mail:</p>
        <input type="text" name="email" value="<?php echo $email; ?>" />

        <?php if ($error_email) { ?>
        <?php echo $error_email; ?>
        <?php } ?>
        </div>
        
		<div class="inp-block last-form">
		<p>Номер телефона:</p>
		<input type="text" name="phone" value="<?php echo $phone; ?>" />
		</div>
        </div><!-- End left-form -->
		
        <div class="right-form">
		<div class="inp-block">
		<p>Заявка:</p>
        <textarea name="enquiry" cols="45" rows="5"><?php echo $enquiry; ?></textarea>

        <?php if ($error_enquiry) { ?>
        <?php echo $error_enquiry; ?>
        <?php } ?>
        </div>
		
        <!--<div class="inp-block">
		<p>Число на картинке:</p>
        <input class="captcha" type="text"  name="captcha" value="<?php echo $captcha; ?>" />

        <img src="index.php?route=information/contact/captcha" alt="" />
		
        <?php if ($error_captcha) { ?>
        <?php echo $error_captcha; ?>
        <?php } ?>
        </div>-->

        <input type="submit" value="Отправить заявку" class="sub" />
        </div><!-- End right-form -->
</form>
</div>
	
<div class="form-holder-640" id="mobile">

<p class="name">Оформление заявки</p>

<form class="contact" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		<div class="left-form">
	    <div class="inp-block first">
        <p>Имя:</p>
        <input type="text" name="name" value="<?php echo $name; ?>" />
        <?php if ($error_name) { ?>
        <?php echo $error_name; ?>
        <?php } ?>
        </div>
		<div class="inp-block">
        <p>Е-mail:</p>
        <input type="text" name="email" value="<?php echo $email; ?>" />
        <?php if ($error_email) { ?>
        <?php echo $error_email; ?>
        <?php } ?>
        </div>
		<div class="inp-block last-form">
		<p>Номер телефона:</p>
		<input type="text" name="phone" value="<?php echo $phone; ?>" />
		</div>
		<div class="inp-block">
		<p>Заявка:</p>
        <textarea name="enquiry" cols="45" rows="5"><?php echo $enquiry; ?></textarea>
        <?php if ($error_enquiry) { ?>
        <?php echo $error_enquiry; ?>
        <?php } ?>
        </div>
        <div class="inp-block">
		<!--<p>Число на картинке:</p>
        <input class="captcha" type="text"  name="captcha" value="<?php echo $captcha; ?>" />
        <img src="index.php?route=information/contact/captcha" alt="" />
        <?php if ($error_captcha) { ?>
        <?php echo $error_captcha; ?>
        <?php } ?>-->
        </div>
		<input type="submit" value="Отправить заявку" class="sub" />
		 </div>
</form>
</div><!-- End right-form -->

<?php echo $footer; ?>
    <!--<script type="text/javascript">
        window.onload = function(){
            jQuery('html, body').animate({scrollTop:470}, 'fast');
        }
    </script>-->