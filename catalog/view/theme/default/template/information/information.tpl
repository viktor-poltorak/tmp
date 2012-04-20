<?php echo $header; ?>

<!--<?php echo $column_left; ?><?php echo $column_right; ?>-->



  
  <div id="breadcrumbs">
   <span class="here">Вы здесь:</span> <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  
<? include('_submenu.php'); ?> 

<? include('_left_categories.php'); ?> 
<div class="centered_">
  <h1><?php echo $heading_title; ?></h1>
  <?php echo $description; ?>
</div>

<? include('_left.php');?>  


<?php echo $footer; ?>