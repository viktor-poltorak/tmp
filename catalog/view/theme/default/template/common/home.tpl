


<?php echo $header; ?>


  <div id="breadcrumbs">
   <span class="here">Вы здесь:</span> 
   <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>

<!--
<?php echo $column_left; ?>
<?php echo $column_right; ?>
-->

            <div id="info_and_news">
            	<div id="info">
				<?= $about['description']?>
				</div>
            	
            	<div id="news">
				<?=$news?>
             	</div>
            	
            	<div class="clearfloat"></div>
            </div>
            
<? include('_submenu.php'); ?>

<div id="splash">
	<?php echo $content_top; ?>
	<div style="padding-left: 20px;float: left;">
	<? include('_left.php'); ?>
	<div class="clearfloat"></div></div>
	<div class="clearfloat"></div>
</div>


<!--<?php echo $heading_title; ?>-->
<?php $content_bottom; ?>


<?= $footer?>