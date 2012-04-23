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
    <div class="categories">
        <? if (!empty($a2)) { ?>
            <? foreach ($a2 as $k => $v) { ?>
                <? if (!empty($v['products'])) { ?>
                    <div class="cat-line">
                        <? foreach ($v['products'] as $i => $p) { ?>
                            <div class="cat-item">
                                <a href="/index.php?route=product/product&path=<?= $v['category_id'] ?>&product_id=<?= $p['product_id'] ?>"><?= $p['name'] ?></a>
                            </div>
                        <? } ?>
                    </div>
                <? } ?>
            <? } ?>
        <? } ?>
    </div>
</div>

<? include('_left.php'); ?>
<div class="clearfloat"></div>
<?php echo $footer; ?>