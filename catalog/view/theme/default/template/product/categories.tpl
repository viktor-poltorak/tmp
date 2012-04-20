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

<table width="100%">
<tr>
	<td valign="top">
<h1 style="color: #000000;">По категориям:</h1>
<? if(!empty($a2)):?>
<? foreach($a2 as $k => $v):?>
<h3><a href="<?= $v['href']?>"><?= $v['name']?></a></h3>
<? if(!empty($v['products'])): ?>
	<ul class="ccc">
	<? foreach($v['products'] as $i => $p):?>
	<li>
<a href="/index.php?route=product/product&path=<?= $v['category_id']?>&product_id=<?= $p['product_id'] ?>"><?= $p['name']?></a>
	</li>
	<? endforeach; ?>
	</ul>
<? endif ?>
<? endforeach; ?>
<? endif ?>		
		
	</td>
<td valign="top" style="padding-left: 25px;">	
	<h1 style="color: #000000;">Для отрасли:</h1>
<? if(!empty($a1)):?>
<? foreach($a1 as $k => $v):?>
<h3><a href="<?= $v['href']?>"><?= $v['name']?></a></h3>
<? if(!empty($v['products'])): ?>
	<ul class="ccc">
	<? foreach($v['products'] as $i => $p):?>
	<li>
<a href="/index.php?route=product/product&path=<?= $v['category_id']?>&product_id=<?= $p['product_id'] ?>"><?= $p['name']?></a>
	</li>
	<? endforeach; ?>
	</ul>
<? endif ?>
<? endforeach; ?>
<? endif ?>
</td></tr>
</table>


</div>

<? include('_left.php'); ?>

  <div class="clearfloat"></div>
  
<?php echo $footer; ?>