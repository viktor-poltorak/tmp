<?php if ($news) { ?>

<div class="box">
  <div class="box-heading"><h3><?php echo $heading_title; ?></h3></div>
  <div class="box-content">
    <ul>
    <?php foreach ($news as $news_story) { ?>
      <li>
      <div class="box-news">
        <a href="<?php echo $news_story['href']; ?>"><?php echo $news_story['title']; ?></a>
       <!-- <?php echo $news_story['description']; ?> <a href="<?php echo $news_story['href']; ?>"><?php echo $text_read_more; ?></a></p>-->
        <!--<div><b><?php echo $text_date_added; ?></b> <?php echo $news_story['date_added']; ?></div>-->
      </div>
      </li>
    <?php } ?>
    </ul>
  </div>
</div>
<?php } ?>
