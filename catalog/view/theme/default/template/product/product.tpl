<?php echo $header; ?>


<div class="breadcrumb">
    <span class="here">Вы здесь:</span> <?php foreach ($breadcrumbs as $index => $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>" <? if ($index + 1 == count($breadcrumbs)): ?>class="last"<? endif ?>><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
</div>

<? include('_submenu.php'); ?>

<? include('_left_categories.php'); ?>

<div class="centered_ product">
    <div class="product-info">
        <table width="100%" cellpadding="12">
            <tr>
                <td valign="top">
                    <h1><?php echo $heading_title; ?></h1>
                    <div class="description">
                        <?= $description ?>
                    </div>
                </td>
                <td valign="top" align="right">
                    <?php if ($thumb) { ?>
                        <div class="product-image"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="fancybox" rel="fancybox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a></div>
                    <?php } ?>
                </td>
            </tr>
            <? if (!empty($attachments)): ?>
                <tr class="download">
                    <? foreach ($attachments as $index => $o): ?>
                        <?
                        $file = DIR_DOWNLOAD . $o['filename'];
                        $mask = DIR_DOWNLOAD . $o['mask'];
                        if (file_exists($file) && !file_exists($mask)) {
                            copy($file, $mask);
                        }
                        ?>
                        <td colspan="2">
                            <a href="/download/<?= $o['mask']?>" class="d">Скачать каталог <?= $o['name']?></a>
                        </td>
                    <? endforeach; ?>
                </tr>
            <? endif; ?>
        </table>
        <div class="sepline"></div>
        <table class="product-info-attr" width="100%" cellpadding="12">
            <tr>
                <td valign="top">
                    <? foreach ($attribute_groups as $index => $attr): ?>
                        <? foreach ($attr['attribute'] as $index => $attr): ?>
                            <h4><?= $attr['name'] ?>:</h4>
                            <p>
                                <?= html_entity_decode($attr['text']); ?>
                            </p>
                        <? endforeach ?>
                    <? endforeach ?>
                </td>
                <td valign="top" align="right">
                <?php if ($images) { ?>
                    <?php foreach ($images as $image) { ?>
                        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="fancybox" rel="fancybox">
                            <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                        </a>
                    <?php } ?>
                <?php } ?>
                </td>
            </tr>
        </table>
    </div>

    <script type="text/javascript"><!--
        $('.fancybox').fancybox({cyclic: true});
        //--></script>
    <script type="text/javascript"><!--
        $('#button-cart').bind('click', function() {
            $.ajax({
                url: 'index.php?route=checkout/cart/update',
                type: 'post',
                data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
                dataType: 'json',
                success: function(json) {
                    $('.success, .warning, .attention, information, .error').remove();

                    if (json['error']) {
                        if (json['error']['warning']) {
                            $('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');

                            $('.warning').fadeIn('slow');
                        }

                        for (i in json['error']) {
                            $('#option-' + i).after('<span class="error">' + json['error'][i] + '</span>');
                        }
                    }

                    if (json['success']) {
                        $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');

                        $('.success').fadeIn('slow');

                        $('#cart_total').html(json['total']);

                        $('html, body').animate({ scrollTop: 0 }, 'slow');
                    }
                }
            });
        });
        //--></script>
    <?php if ($options) { ?>
        <script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
        <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'file') { ?>
                <script type="text/javascript"><!--
                    new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
                        action: 'index.php?route=product/product/upload',
                        name: 'file',
                        autoSubmit: true,
                        responseType: 'json',
                        onSubmit: function(file, extension) {
                            $('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
                        },
                        onComplete: function(file, json) {
                            $('.error').remove();

                            if (json.success) {
                                alert(json.success);

                                $('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json.file);
                            }

                            if (json.error) {
                                $('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json.error + '</span>');
                            }

                            $('.loading').remove();
                        }
                    });
                    //--></script>
            <?php } ?>
        <?php } ?>
    <?php } ?>
    <script type="text/javascript"><!--
        $('#review .pagination a').live('click', function() {
            $('#review').slideUp('slow');

            $('#review').load(this.href);

            $('#review').slideDown('slow');

            return false;
        });

        $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

        $('#button-review').bind('click', function() {
            $.ajax({
                type: 'POST',
                url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
                dataType: 'json',
                data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
                beforeSend: function() {
                    $('.success, .warning').remove();
                    $('#button-review').attr('disabled', true);
                    $('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
                },
                complete: function() {
                    $('#button-review').attr('disabled', false);
                    $('.attention').remove();
                },
                success: function(data) {
                    if (data.error) {
                        $('#review-title').after('<div class="warning">' + data.error + '</div>');
                    }

                    if (data.success) {
                        $('#review-title').after('<div class="success">' + data.success + '</div>');

                        $('input[name=\'name\']').val('');
                        $('textarea[name=\'text\']').val('');
                        $('input[name=\'rating\']:checked').attr('checked', '');
                        $('input[name=\'captcha\']').val('');
                    }
                }
            });
        });
        //--></script>
    <script type="text/javascript"><!--
        $('#tabs a').tabs();
        //--></script>
    <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script>
    <script type="text/javascript"><!--
        if ($.browser.msie && $.browser.version == 6) {
            $('.date, .datetime, .time').bgIframe();
        }

        $('.date').datepicker({dateFormat: 'yy-mm-dd'});
        $('.datetime').datetimepicker({
            dateFormat: 'yy-mm-dd',
            timeFormat: 'h:m'
        });
        $('.time').timepicker({timeFormat: 'h:m'});
        //--></script>


</div>

<? include('_left.php'); ?>

<div class="clearfloat"></div>

<?php echo $footer; ?>