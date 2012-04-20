<?

	$this->load->model('catalog/category');
		
		$this->data['h_categories'] = array();
					
		$hcategories = $this->model_catalog_category->getCategories(63, true);

		foreach ($hcategories as $category) 
		{
			//if ($category['top']) {
				$children_data = array();
				
				$children = $this->model_catalog_category->getCategories($category['category_id'], true);
		
				foreach ($children as $child) {
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true	
					);		
						
					//$product_total = $this->model_catalog_product->getTotalProducts($data);
									
					$children_data[] = array(
						'name'  => $child['name'] . ' (' . $product_total . ')',
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	
					);					
				}
				
				// Level 1
				$this->data['h_categories'][] = array(
					'name'     => $category['name'],
					'category_id'     => $category['category_id'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			//}
		}						

?>

            <div id="submenu">
            	<span class="black">Материалы для отрасли:</span> 
            	<ul>
            	<? foreach($this->data['h_categories'] as $o):?>	
            		<li <?if(isset($_GET['path'])):?><?if($o['category_id'] == (int)$_GET['path']):?>id="sleft"<?endif?><?endif?>>
            			<a href="<?= $o['href']?>" <?if(isset($_GET['path'])):?><?if($o['category_id'] == (int)$_GET['path']):?>class="current""<?endif?><?endif?> class="submenu-item" <?if(isset($_GET['path'])):?><?if($o['category_id'] == (int)$_GET['path']):?>id="sright"<?endif?><?endif?>>
            					<div class="sitem <?if(isset($_GET['path'])):?><?if($o['category_id'] == (int)$_GET['path']):?>sitemhover<?endif?><?endif?>">
            					&nbsp; <?= $o['name']?> &nbsp;
            				</div>
            		</a>
            		</li>
            	<? endforeach; ?>
            	</ul>
            	<div class="clearfloat"></div>
            </div>