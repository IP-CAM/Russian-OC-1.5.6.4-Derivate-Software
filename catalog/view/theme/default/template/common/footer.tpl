    <div class="bottom-content-1"></div>
	<footer>
		<div class="top-footer">
			<ul class="inf-nav-header">
				<li><a href="<?php echo $rooms; ?>">Квартиры</a></li>
				<li><a href="<?php echo $homes; ?>">Дома</a></li>
				<li><a href="<?php echo $lots; ?>">Участки</a></li>
				<li><a href="<?php echo $buildings; ?>">Новостройки</a></li>
				<li><a href="<?php echo $hotels; ?>">Гостиницы</a></li>
				<li><a href="<?php echo $elite; ?>">Элитная</a></li>
				<li><a href="<?php echo $business; ?>">Бизнес</a></li>
			</ul>
		</div><!-- End top-footer -->
		<a href="#" class="logo-fot"><img src="catalog/view/theme/default/images/footer-logo.png" alt=""></a>
			<div class="nav-header">
			<div class="footer-center-element">
				<ul>					
				<!--<?php foreach($menu_array as $href => $menu) {?>			
                    <li <?php if($parts_uri[0] == $href){ echo 'class="active_menu_footer' ?><?php } ?>"><?php echo $menu; ?></li>
			    <?php } ?>-->
					<li><a href="<?php echo $about; ?>">О компании</a></li>
					<li><a href="<?php echo $sale; ?>">Продажа</a></li>
					<li><a href="<?php echo $rent; ?>">Аренда</a></li>
					<li><a href="<?php echo $services; ?>">Услуги</a></li>
					<li><a href="<?php echo $contact; ?>">Контакты</a></li>
					<li class="last"><a href="/contact.html#bottom">Оставить заявку</a></li>
					<li class="last-640"><a href="/contact.html#mobile">Оставить заявку</a></li>
				</ul>
			</div>
				<ul class="fot-contact">
					<li>
						<p>&copy; 2009-2016  ПАРТНЕР</p>
						<p>Все права защищены</p>
					</li>
					<li>
						<p>Сайт сделан</p>
						<span>в </span><a href="#">MKVADRAT</a>
					</li>
					<li>
						<p>298600, Россия, Республика Крым,</p>
						<p>Ялта, ост."Октябрь", ул. Московская, 47/2</p>
					</li>
				</ul>
			
			<div class="last-contact-fot">
				<div class="search-footer">
					<button><img src="catalog/view/theme/default/images/search.png" alt=""></button>
					<input type="text" name="search" type="submit" placeholder="Поиск по №" value="" />
				</div>
				<div class="last-320"><a href="/contact/#mobile">Оставить заявку</a></div>
				<ul>
					<li>
						<img src="catalog/view/theme/default/images/phone-fot.png" alt="">
						<span id="inf-tel">+7 (978) 096 78 29</span>
					</li>
					<li>
					    <img src="catalog/view/theme/default/images/punt.png" alt="">
						<span id="inf-tel" class="sec">+7 (978) 854 20 41</span> <span class="vib">Viber</span>
					</li>
					<li id="inf-li-email">
						<img src="catalog/view/theme/default/images/mail-fot.png" alt="">
						<a id="inf-email" href="#">yaltapartner@yandex.ru</a>
					</li>
					<li>
						<img src="catalog/view/theme/default/images/skype-fot.png" alt="">
						<span id="inf-skype">Lubinetss</span>
					</li>
				</ul>
				</div><!-- End nav-header -->
			</div><!-- End last-contact-fot -->
			
	</footer>	
</div>
	
</div><!-- End wrapper -->
<script type="text/javascript">
    /*$(document).ready(function(){
        $('body, html').animate({'scrollTop':500},700)
    });*/
</script>
<!--Модальная форма отправки сообщения агенту в карточке товара-->
<!--<div id="otpr-s" style="display:none;">
    <form class="in-r" rel="agent-message-form" action="index.php?route=information/contact/agent">
        <p class="in-zag">ОТПРАВИТЬ СООБЩЕНИЕ РИЕЛТОРУ</p>
        <div class="form-message"></div>
        <div class="wrap-cont-in">
            <div class="wrap-cont-in-left">
                <label>Имя<span>*</span></label>
                <input type="text" name="firstname">
                <label>Телефон<span>*</span></label>
                <input type="text" name="phone">
            </div>
            <div class="wrap-cont-in-right">
                <label>Фамилия<span>*</span></label>
                <input type="text" name="secondname">
                <label>Email<span>*</span></label>
                <input type="text" name="email">
            </div>
            <label>Сообщение<span>*</span></label>
            <textarea name="text"></textarea>
            <div class="cont-in-b">
                <p>*поля обязательно к заполнению</p>
                <input class="but-in" type="submit" value="ОТПРАВИТЬ СООБЩЕНИЕ">
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
    $(".go-req").boxer({
        fixed: true,
        callback: function() {

        }
    });

</script>

<script type="text/javascript">
    $(document).ready(function(){
        $('body').on('submit', 'form[rel=agent-message-form]', function(e){
            e.stopPropagation();
            e.preventDefault();

            var data = $(this).serialize();

            if ($('input[name=agent-user-id]').length) {
                data += '&user_id='+$('input[name=agent-user-id]').val();
            }

            $.post(
               $(this).attr('action'),
                data,
                function(response) {
                    if (!response) return;
                    if (response.status) {
                        $('form[rel=agent-message-form]').find('.form-message').html('<div class="message">'+response.message+'</div>');
                        window.setTimeout("$('.boxer-close').trigger('click');",3000);
                    } else {
                        $('form[rel=agent-message-form]').find('.form-message').html('<div class="error">'+response.message+'</div>');
                    }
                },
                'json'
            )
        });
    });

</script>-->
<!--Модальная форма отправки сообщения агенту в карточке товара-->
<div class="button-up"><div class="top">▲<br/>Наверх</div></div>
</body>
</html>