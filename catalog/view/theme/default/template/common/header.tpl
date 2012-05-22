<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>' . "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
    <head>
        <title><?php echo $title; ?></title>
        <base href="<?php echo $base; ?>" />
        <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
        <?php if ($description) { ?>
            <meta name="description" content="<?php echo $description; ?>" />
        <?php } ?>
        <?php if ($keywords) { ?>
            <meta name="keywords" content="<?php echo $keywords; ?>" />
        <?php } ?>
        <?php if ($icon) { ?>
            <link href="<?php echo $icon; ?>" rel="icon" />
        <?php } ?>
        <?php foreach ($links as $link) { ?>
            <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
        <?php } ?>

        <?php foreach ($styles as $style) { ?>
            <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
        <?php } ?>
        <link rel="stylesheet" href="/css/index.css" media="screen">
            <link rel="stylesheet" href="/css/print.css" media="print" />
            <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
            <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
            <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
            <script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
            <script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
            <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
            <!--[if IE]>
            <script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4-iefix.js"></script>
            <![endif]-->
            <script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
            <script type="text/javascript" src="catalog/view/javascript/common.js"></script>
            <?php foreach ($scripts as $script) { ?>
                <script type="text/javascript" src="<?php echo $script; ?>"></script>
            <?php } ?>
            <!--[if IE 7]>
            <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
            <![endif]-->
            <!--[if lt IE 7]>
            <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
            <script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
            <script type="text/javascript">
            DD_belatedPNG.fix('#logo img');
            </script>
            <![endif]-->
            <?php echo $google_analytics; ?>
    </head>
    <body>

        <!--
        <?php if (count($languages) > 1) { ?>

                              <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                <div id="language"><?php echo $text_language; ?><br />
            <?php foreach ($languages as $language) { ?>
                                                      &nbsp;<img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>').submit(); $(this).parent().parent().submit();" />
            <?php } ?>

                                </div>
                              </form>
        <?php } ?>
        -->


        <div class="container">
            <div class="content">
                <!--- box border -->
                <div id="main_lb">
                    <div id="main_rb">
                        <div id="main_bb">
                            <div id="main_blc">
                                <div id="main_brc">
                                    <div id="main_tb">
                                        <div id="main_tlc">
                                            <div id="main_trc">
                                                <div id="main_content">
                                                    <div class="logo">
                                                        <a href="<?php echo $home; ?>">
                                                            <? if ($_SESSION['language'] == 'en') { ?>
                                                                <img src="/images/logo-en.jpg" width="178" height="86" title="<?php echo $name; ?>" alt="<?php echo $name; ?>">
                                                                <? } else { ?>
                                                                    <img src="/images/logo.gif" width="178" height="86" title="<?php echo $name; ?>" alt="<?php echo $name; ?>">
                                                                    <? } ?>
                                                                    </a>
                                                                    </div>
                                                                    <div class="clearfloat"></div>
                                                                    <div id="main_menu">
                                                                        <?php if (count($languages) > 1) { ?>
                                                                            <?php $languages = array_reverse($languages); ?>
                                                                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                                                                <input type="hidden" name="language_code" value="" />
                                                                                <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                                                                                <div id="lang">
                                                                                    <?php foreach ($languages as $language) { ?>
                                                                                        &nbsp;<img width="18" height="12" src="images/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>').submit(); $(this).parent().parent().submit();" />
                                                                                    <?php } ?>
                                                                                </div>
                                                                            </form>
                                                                        <?php } ?>
                                                                        <!--<div id="lang"><?= $_SESSION['language'] ?></div>-->
                                                                        <div class="menu">
                                                                            <ul>
                                                                                <li>
                                                                                    <a href="index.php?route=common/home" <? if (preg_match("/home/", @getenv('REQUEST_URI')) || (@getenv('REQUEST_URI') == "/index.php") || (@getenv('REQUEST_URI') == "/")): ?>class="current"<? endif ?>>
                                                                                       <?=_t('Home') ?>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="<?php echo $about; ?>"  <? if (preg_match("/information_id\=4/", @getenv('REQUEST_URI'))): ?>class="current"<? endif ?>>
                                                                                        <?=_t('about_us') ?>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="/index.php?route=product/categories" <? if (preg_match("/categories/", @getenv('REQUEST_URI')) || preg_match("/product/", @getenv('REQUEST_URI'))): ?>class="current"<? endif ?>>
                                                                                        <?=_t('Catalog') ?>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="<?php echo $offers; ?>" <? if (preg_match("/information_id\=5/", @getenv('REQUEST_URI'))): ?>class="current"<? endif ?>>
                                                                                        <?=_t('Services') ?>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="index.php?route=information/news" <? if (preg_match("/news/", @getenv('REQUEST_URI'))): ?>class="current"<? endif ?>>
                                                                                        <?=_t('News') ?>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="<?php echo $contact; ?>" <? if (preg_match("/contact/", @getenv('REQUEST_URI'))): ?>class="current"<? endif ?>>
                                                                                        <?=_t('Contacts') ?>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="search">
                                                                            <?php include('_search.tpl'); ?>
                                                                        </div>
                                                                        <div class="clearfloat"></div>
                                                                    </div>
                                                                    <div id="centered">
