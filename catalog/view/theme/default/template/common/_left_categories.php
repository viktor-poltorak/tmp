<?
		$this->load->model('catalog/category');
		$this->data['main_categories'] = array();
					
		$this->data['categories'] = $this->model_catalog_category->getCategories();
?>

<div class="home_categories">
<ul>
<? foreach($this->data['categories'] as $category):?>
	<li>
		
<a href="<?= $this->url->link('product/category', 'path=' . $category['category_id'])?>" rel="/images/<?php echo $category['image']; ?>" id="c_<?= $category['category_id']?>" class="left_menu_link <? if(isset($_GET['path'])):?><?if($category['category_id'] == (int)$_GET['path']):?>current<?endif?><?endif?>">
	<div><?= $category['name']?></div>
</a>
	</li>
<? endforeach; ?>
</ul>	
</div>