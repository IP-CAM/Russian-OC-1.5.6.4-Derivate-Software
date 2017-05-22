<div class="content-top">
<?php if (($setting['position'] == 'content_top') || ($setting['position'] == 'content_bottom')){ ?>
		<h1><?php echo $heading_title; ?></h1>
		<ul class="main-list-urgently">
		<?php foreach ($products as $product) { ?>
			<li><a href="<?php echo $product['href']; ?>">
				<?php if ($product['thumb']) { ?>
                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
		        <?php }else{ ?>
				<img src="<?php echo HTTP_IMAGE?>no_image_object.jpg" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="no-image" />
				<?php } ?>
				<p><?php echo $product['name']; ?></p>
				</a>
				<div class="new-sale">
					<span>срочно!</span>
				</div><!-- End new-sale -->
			</li>
		<?php } ?>
		</ul>
<?php } ?>
</div><!-- End content-top -->
