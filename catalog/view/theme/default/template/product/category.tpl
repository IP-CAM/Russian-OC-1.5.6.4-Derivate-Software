<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<?php if($category_id >= 59 && $category_id <= 63) { ?>
<div class="object-page-room">
<?php }elseif($category_id == 79){ ?>
<div class="object-page-new-b">
<?php }elseif($category_id == 64){ ?>
<div class="object-page-home">
<?php }elseif($category_id == 78){ ?>
<div class="object-page-lots">
<?php }elseif($category_id == 81){ ?>
<div class="object-page-elite">
<?php }else{ ?>
<div class="object-page">
<?php } ?><?php echo $content_top; ?>
	<div class="top-obj-text">
	<?php if($categories) { ?>
	<ul>
    <?php foreach ($categories as $category) { ?>
		<li>
		    <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
	    </li>	
	<?php } ?>
	</ul>
	<?php } ?>
    <?php if ($description) { ?>
                    <h1><?php echo $heading_title; ?></h1>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
    <?php } ?>
	</div><!-- End top-obj-text -->
	<div class="content-obj-page">
	<div class="obj-filter" id="scroll-down">
	<?php foreach ($sorts_up_price as $sorts) { ?>	
		<input onchange="location = this.value;" id="check-1" type="checkbox" value="<?php echo $sorts['up']; ?>" checked hidden />
		<input onchange="location = this.value;" id="check-2" type="checkbox" value="<?php echo $sorts['down']; ?>" checked hidden />
	        <span><label>Сортировать по цене:</label>
				<?php if($separator == 'asc'){ ?>
					<label for="check-1" <?php echo $id; ?> class="down"></label>
					<label for="check-2" class="up"></label>
				<?php }elseif($separator == 'desc'){ ?>
					<label for="check-1" class="down"></label>
					<label for="check-2" <?php echo $id; ?> class="up"></label>
				<?php }else{ ?>
					<label for="check-1" class="down"></label>
					<label for="check-2" class="up"></label>
				<?php } ?>
			</span>
	<?php } ?>
	</div>
	
	<?php if ($products) { ?>
		<ul>
		<?php foreach ($products as $product) { ?>
			<li>
				<?php if ($product['thumb'] || !empty($product['thumb'])) { ?>
				    <a href="<?php echo $product['href']; ?>">
					<img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
					<?php if($product['badge'] && trim($product['badge'])=='sale'){ ?>
					<img class="s" src="/catalog/view/theme/default/images/s.png" alt="">
					<?php } else if($product['badge'] && trim($product['badge'])=='removed'){ ?>
					<img class="s" src="/catalog/view/theme/default/images/p.png" alt="">
					<?php } ?>
					</a>
			    <?php }else{ ?>
				    <a href="<?php echo $product['href']; ?>"><img src="<?php echo HTTP_IMAGE?>no_image_object.jpg" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
				<?php } ?>
				
				<?php if($product['badge'] && trim($product['badge'])=='action'){ ?>
                <?php echo '<div class="new-sale"><span>Срочно</span></div>'; ?>
                <?php } else if($product['badge'] && trim($product['badge'])=='new'){ ?>
                <?php echo '<div class="new-sale"><span>Новое</span></div>'; ?>
				<?php } else if($product['badge'] && trim($product['badge'])=='quick'){ ?>
				<?php echo '<div class="new-sale"><span>Срочно</span></div>'; ?>
				<?php } ?>
			     
				<h2><?php echo $product['name']; ?></h2>
				<?php if(!empty($product['description'])){?>
				    <p><?php echo $product['description']; ?></p>
				<?php }else{ ?>
				    <p>Наша компания поможет срочно и выгодно продать или купить недвижимость недорого. У нас большой каталог предложений и услуг. Надежность и профессионализм - главные качества АН Партнер по предоставлению риэлтерских услуг в Ялте!</p>
				<?php } ?>
				<div class="more-descr">
				<a href="<?php echo $product['href']; ?>" class="more">Подробнее...</a>
				<div class="price-obj">
					<?php if (!$product['special']) { ?>
					<h3>Цена: <i><?php echo $product['rub']; ?> руб.<?php if($product['square_meter'][0]["square_meter"] == '1'){ ?>/кв.м.<?php } ?></i></h3>
				 	<i><?php echo $product['price']; ?> у.е.<?php if($product['square_meter'][0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></i>
					<?php } else { ?>
					
					<?php if ($product['currency_id'] == 1){ ?>
					<h3>Цена: <i><strike><?php echo $product['rub']; ?> руб.<?php if($product['square_meter'][0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></strike></i></h3>
					<i><?php echo $product['special_rub']; ?> руб.<?php if($product['square_meter'][0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></i></i>
					
					<?php } else { ?>
					<h3>Цена: <i><strike><?php echo $product['price']; ?> у.е.<?php if($product['square_meter'][0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></strike></i></h3>
					<i><?php echo $product['special']; ?> у.е.<?php if($product['square_meter'][0]["square_meter"] == '1') { ?>/кв.м.<?php } ?></i></i>
					<?php } ?>
					<?php } ?>
				</div><!-- End price-obj -->
				</div>
			</li>
		<?php } ?>	
		</ul>
	<?php } ?>
		<div class="pagination">
			
				<?php echo $pagination; ?>
			
		</div><!-- End pagination -->
	</div><!-- End content-obj-page -->
	
    <?php if (!$categories && !$products) { ?>
    <div class="empty_object"> <?php echo $text_empty; ?></div>
    <?php } ?>
<?php echo $content_bottom; ?></div><!-- End object-page -->

<script type="text/javascript">
	$(function() {
	  var $to = $('#scroll-down');
	  $('html, body').animate({ 'scrollTop': $to.offset().top}, 500);
	}); 
</script>

<?php echo $footer; ?>