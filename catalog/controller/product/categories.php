<?php 
class ControllerProductCategories extends Controller {
		
	function get($id=0, $s = false)
	{
		$this->data['h_categories'] = array();
		$this->data['products'] = array();	
		$results = "";		
		$categories = $this->model_catalog_category->getCategories($id, $s);
		
		foreach ($categories as $category) 
		{
				$children_data = array();
				$children = $this->model_catalog_category->getCategories($category['category_id'], true);
				foreach ($children as $child) 
				{
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true	
					);		
					$children_data[] = array(
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	
					);					
				}

			$results = $this->model_catalog_product->getProducts(array('filter_category_id' => $category['category_id']));		

				$this->data['h_categories'][] = array(
					'category_id' => $category['category_id'],
					'name'     => $category['name'],
					'products' => $results,
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
				$results = false;
		}
		return $this->data['h_categories'];						
	}	
		  
	public function index() { 
		$this->language->load('product/category');		
		$this->load->model('catalog/category');		
		$this->load->model('catalog/product');		
		$this->load->model('tool/image'); 	

		$a1 = $this->get(63, true);
		$a2 = $this->get(0, false);
		
		$this->data['a1'] = $a1;
		$this->data['a2'] = $a2;
		
		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
       		'separator' => false
   		);

  			$this->document->setTitle('Каталог');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/categories.tpl')) 
			{
				$this->template = $this->config->get('config_template') . '/template/product/categories.tpl';
			} 
			else 
			{
				$this->template = 'default/template/product/categories.tpl';
			}
  			
			$this->data['heading_title'] = 'Каталог';
						
			$this->children = array(
				'common/column_left',
				'common/column_right',
				'common/content_top',
				'common/content_bottom',
				'common/footer',
				'common/header'
			);
				
			$this->response->setOutput($this->render());	
  	}
}
?>