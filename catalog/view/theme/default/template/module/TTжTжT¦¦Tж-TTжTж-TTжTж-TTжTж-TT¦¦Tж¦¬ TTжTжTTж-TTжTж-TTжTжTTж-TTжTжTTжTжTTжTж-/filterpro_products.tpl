<?php foreach ($products as $product) { ?>
<div class="pr_left">
  <?php if ($product['thumb']) { ?>
  <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
  <?php } ?>
    <div class="pr_center">
        <?php if($product['badge'] && trim($product['badge'])!='sold'){
                echo '<i class="'.$product['badge'].'"></i>';
        } else if($product['badge'] && trim($product['badge'])=='sold'){
            echo '<a href="'.$product['href'].'" class="'.$product['badge'].'"></a>';
        }
        ?>
        <?php if (!empty($product['model'])) { ?>
            <!--<div class="p_model">№&nbsp;<?php echo $product['model'] ?></div>-->
        <?php } ?>

    <?php if(isset($product['badge'])){ ?><i class="<?php echo $product['badge']; ?>"></i><?php } ?>
  <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
  <div class="description"><?php echo $product['description']; ?></div>
    <div class="bottom_info">
        <div class="read_more">
            <a href="<?php echo $product['href']; ?>">Подробнее</a>
        </div>
        <?php if ($product['price']) { ?>
        <div class="price">

            <span>Цена </span><span><?php echo $product['rub']; ?> руб.</span><br>
            <span><?php echo $product['price']; ?> $</span>
        </div>
        <?php } ?>
    </div>
    </div><!-- center -->
</div>
<?php } ?>