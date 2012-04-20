<? include('_left_categories.php'); ?>

<div class="slideshow">
  <div id="slideshow0" class="nivoSlider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
    <?php foreach ($categories as $banner) { ?>
	    <a href="<?= $this->url->link('product/category', 'path=' . $banner['category_id'])?>">
	    	<img src="/images/<?php echo $banner['image']; ?>" alt="<?php echo $banner['name']; ?>" id="<?= $banner['category_id']?>"/>
	    </a>
    <?php } ?>
  </div>
</div>

<script type="text/javascript"><!--
$(document).ready(function() 
{
	$('#slideshow0').nivoSlider(
		{
			'effect': 'fade',
			'animSpeed': 5,
			'directionNav': false,
			'controlNav': false,
			'borderRadius': 8,
			'pauseOnHover': true,
			'afterChange': function()
			{

				$('#c_' + $('#slideshow0').data('nivo:vars').currentImage.attr('id')).addClass('current');
			},
			'beforeChange': function()
			{
				$('#c_' + $('#slideshow0').data('nivo:vars').currentImage.attr('id')).removeClass('current');
			}
		}
	);
});
--></script>