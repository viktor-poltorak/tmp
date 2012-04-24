<?php echo $header; ?>
<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
</div>

<? include('_submenu.php') ?>

<? include('_left_categories.php') ?>

<div class="centered_ sitemap">
    <h1>Категории</h1>
    <ul>
        <?php foreach ($categories as $category_1) { ?>
            <li><a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
                <?php if ($category_1['children']) { ?>
                    <ul>
                        <?php foreach ($category_1['children'] as $category_2) { ?>
                            <li><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
                                <?php if ($category_2['children']) { ?>
                                    <ul>
                                        <?php foreach ($category_2['children'] as $category_3) { ?>
                                            <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
                                        <?php } ?>
                                    </ul>
                                <?php } ?>
                            </li>
                        <?php } ?>
                    </ul>
                <?php } ?>
            </li>
        <?php } ?>
    </ul>
    <br>
    <h1>Материалы для отрасли</h1>
    <ul>
        <? foreach ($this->data['h_categories'] as $o): ?>
            <li>
                <a href="<?= $o['href'] ?>">
                    <?= $o['name'] ?>
                </a>
            </li>
        <? endforeach; ?>
    </ul>
</div>

<? include('_left.php'); ?>
<?php echo $footer; ?>