<?php echo $header; ?>
<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
</div>

<div class="clearfloat"></div>

<? include('_submenu.php'); ?>

<? include('_left_categories.php'); ?>

<div class="centered_">
    <h1><?php echo $heading_title; ?></h1>
    <div class="content">
        <div class="search-form">
            <div class="search-form-field">
                <?php if ($filter_name) { ?>
                    <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
                <?php } else { ?>
                    <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
                <?php } ?>
                <input type="hidden" name="filter_category_id" value="0" id="filter_category_id" />
                <?php if ($filter_sub_category) { ?>
                    <input type="hidden" name="filter_sub_category" value="1" id="sub_category" />
                <?php } else { ?>
                    <input type="hidden" name="filter_sub_category" value="1" id="sub_category" />
                <?php } ?>
            </div>
            <div class="right">
                <a id="button-search" class="button"><span><?php echo $button_search; ?></span></a>
            </div>
        </div>
        <?php if ($filter_description) { ?>
            <input type="hidden" name="filter_description" value="1" id="description" />
        <?php } else { ?>
            <input type="hidden" name="filter_description" value="1" id="description" />
        <?php } ?>
    </div>
    <?php if ($products) { ?>
        <div class="product-list">
            <?php foreach ($products as $product) { ?>
                <div class="product-item">
                    <div style="height: 52px;">
                        <a href="<?php echo $product['href']; ?>">
                            <img src="/images/ibg.png" style="z-index: 1; position: absolute;">
                        </a>
                        <div class="name" style="height: 52px;">
                            <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                        </div>
                    </div>
                    <div class="image first">
                        <a href="<?php echo $product['href']; ?>">
                            <div class="img_wrapper" style="display: inline-block; width: 150px; height: 100px; ">
                                <?php if ($product['thumb']) { ?>
                                <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
                                <?php } ?>
                            </div>
                        </a>
                    </div>
                </div>
            <?php } ?>
        </div>
        <div class="pagination"><?php echo $pagination; ?></div>
    <?php } else { ?>
        <div class="content"><?php echo $text_empty; ?></div>
    <?php } ?>
    <?php echo $content_bottom; ?>
</div>

<? include('_left.php'); ?>
<div class="clearfloat"></div>
<?php echo $footer; ?>
