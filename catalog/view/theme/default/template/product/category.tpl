<?php echo $header; ?>

<div class="breadcrumb">
    <span class="here">Вы здесь:</span>

    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
</div>
<div class="clearfloat"></div>

<? include('_submenu.php'); ?>

<? include('_left_categories.php'); ?>

<div class="centered_">
  <!--<h1><?php echo $heading_title; ?></h1>-->
    <?php if ($thumb || $description) { ?>
    <!-- <div class="category-info"> -->
    <?php if ($thumb) { ?>
       <!--<div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>-->
    <?php } ?>

    <?php if ($description) { ?>
    <!--
     <div class="cdesc">
         <i><?php echo $description; ?></i>
     </div>
    -->
    <?php } ?>
    <!--</div> -->
    <?php } ?>

    <?php if ($products) { ?>

    <div class="product-list">

        <?php foreach ($products as $index => $product) { ?>
        <div class="product-item" <?if($index%3 == 0):?>style="clear:both;"<? endif; ?>>

            <div style="height: 52px;">
                <a href="<?php echo $product['href']; ?>"><img src="/images/ibg.png" style="z-index: 1; position: absolute;"></a>
                <div class="name" style="height: 52px;">
                    <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                </div>
            </div>

            <?php if ($product['thumb']) { ?>
            <div class="image first">
                <a href="<?=$this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $product['product_id']) ?>">
                    <div class="img_wrapper" style="display: inline-block; width: 150px; height: 100px; ">
                        <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" width="150px" height="100px"/>
                    </div>
                </a>
            </div>
            <?php } ?>


        </div>
        <?php } ?>
    </div>
    <?php } ?>

</div>

<? include('_left.php'); ?>

<div class="clearfloat"></div>

<?php echo $footer; ?>
