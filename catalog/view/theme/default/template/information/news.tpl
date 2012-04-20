<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ampliacao/css/jqzoom.css" />
<script src="catalog/view/javascript/jquery/ampliacao/jqzoom.pack.1.0.1.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/ampliacao/jquery.jqzoom1.0.1.js" type="text/javascript"></script>
<script type="text/javascript"><!--
$(document).ready(function(){
var options =
{
showEffect:'show',
hideEffect:'fadeout',
fadeoutSpeed: 'slow',
title :true,
lens:true,
zoomWidth: 350,
zoomHeight: 350
}
$(".jqzoom").jqzoom(options);
});


//--></script>

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
 
  <?php if (isset($news_info)) { ?>
    <div class="box-news" <?php if ($image) { echo 'style="min-height: ' . $min_height . 'px;"'; } ?>>
      <?php if ($image) { ?>
        <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="thickbox jqzoom" rel="fancybox"><img align="right" style="border: none; margin-left: 10px;" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
      <?php } ?>
      <?php echo $description; ?>
    </div>
    
  <?php } elseif (isset($news_data)) { ?>
    <?php foreach ($news_data as $news) { ?>
      <div class="box-news">
        <div style="margin-top: 5px; font-weight: bold;"><span class="date"><?php echo $news['date_added']; ?> / </span><?php echo $news['title']; ?></div>
        <?php echo $news['description']; ?> 
        <div align="right">
        <a href="<?php echo $news['href']; ?>"><?php echo $text_read_more; ?></a>
        </div>
       <!-- <p><b><?php echo $text_date_added; ?></b>&nbsp;<?php echo $news['date_added']; ?></p> -->
      </div>
    <?php } ?>
  <?php } ?>
  </div>

<? include('_left.php'); ?>

  <div class="clearfloat"></div>
  
<?php echo $footer; ?>
