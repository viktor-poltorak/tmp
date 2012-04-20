<div class="home_categories">
<ul>
<? foreach($categories as $category):?>
	<li>
<a href="<?= $this->url->link('product/category', 'path=' . $category['category_id'])?>" id="<?= $category['category_id']?>" class="left_menu_link <? if($category['category_id'] == $category_id):?>current<? endif ?>">
	<div><?= $category['name']?></div>
</a>
	</li>
<? endforeach; ?>
</ul>	
</div>
