<?php
if (preg_match('/information\/contact/', $_SERVER['REQUEST_URI'])) {
    return;
}
$content = file_get_contents('http://metal4u.ru/lme_utf8.js');
$content = preg_replace(array(
    '/document\.write\(\'/',
    '/<table([\s\w\d\=]+)>/',
    '/<tr([\s\w\d\=]+)>/',
    '/valign=middle width=60 height=20/',
    '/height=20 width=20/',
    '/height=20 valign=middle align=left width=53/',
    '/height=20 valign=middle align=right width=47/',
    '/<div([\s\w\d\=]+)>/',
    '/<\/div>/',
    '/<font([\s\w\d\=]+)>/',
    '/<\/font>/',
    '/<img src=http:\/\/metal4u.ru\/files\/down.gif width=20 height=20>/',
    '/<img src=http:\/\/metal4u.ru\/files\/up.gif width=20 height=20>/',
    '/<img src=http:\/\/metal4u.ru\/files\/dot_lme.gif width=175 height=1>/',
    '/\'\)/',
), array (
    '',
    '<table class="currency">',
    '<tr>',
    'class="metal"',
    'class="change"',
    'class="rate"',
    'class="diff"',
    '', '', '', '', '<img src="/images/down.png" />', '<img src="/images/up.png" />', '', ''
), $content);

?>
    <div class="lme metal-currency" align="center">
        <span class="title">
            <?=_t('Course_of_sales_of_non_ferrous_metals') ?>
        </span>
        <?= $content ?>
    </div>