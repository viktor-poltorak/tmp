<form action="/">
    <input type="hidden" name="route" value="product/search" />
    <?php if ($filter_name) { ?>
    <input type="text" value="<?php echo $filter_name; ?>" name="filter_name" class="search_box">
    <?php } else { ?>
    <input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" class="search_box"/>
    <?php } ?>   	
    <input type="submit" value="search" style="display: none"/>
    <button class="button-search">
        <img src="/images/search_button.gif" width="26" height="24">
    </button>
</form>
