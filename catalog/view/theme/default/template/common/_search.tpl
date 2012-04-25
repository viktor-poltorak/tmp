<form action="/">
    <input type="hidden" name="route" value="product/search" />
    <?php if ($filter_name) { ?>
        <input type="text" value="<?php echo $filter_name; ?>" name="filter_name" class="search_box">
    <?php } else { ?>
        <input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" class="search_box"/>
    <?php } ?>
    <input type="submit" value="search" style="display: none"/>
    <button class="button-search">
        <img id="button-search" src="/images/button-search-0.png" width="26" height="24">
    </button>
</form>
<script type="text/javascript">

    $('.button-search').click(function () {        
        $('#button-search').attr('src', '/images/button-search-1.png');
    })

    $('.button-search').mouseover(function() {
        $('#button-search').attr('src', '/images/button-search-2.png');
    });

    $('.button-search').mouseout(function() {
        $('#button-search').attr('src', '/images/button-search-0.png');
    });

</script>
