<div class="content-top content-top-new">
<?php if($products){?>
	<ul>
	<?php foreach ($products as $product) { ?>
			<li><a href="<?php echo $product['href']; ?>">
			    <?php if ($product['thumb']) { ?>
                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
                <?php }else{ ?>
				<img src="<?php echo HTTP_IMAGE?>no_image_object.jpg" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="no-image" />
				<?php } ?>
				<p><?php echo $product['name']; ?></p>
				</a>
			</li>
	<?php } ?>
	</ul>
<?php } ?>
</div><!-- End content-top -->
