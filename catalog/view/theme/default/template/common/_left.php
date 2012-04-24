<div class="right_info">
    <table width="190" colspan="2" rowspan="2" style="text-align: justify;">
        <tr>
            <td width="36%" align="left"><b>Тел.:</b></td>
            <td class="redred" align="right"><?= $this->config->get('config_telephone'); ?></td>
        </tr>
        <tr>
            <td align="left"><b>Факс:</b></td>
            <td class="redred" align="right"><?= $this->config->get('config_fax'); ?></td>
        </tr>
        <tr>
            <td align="left"><b>Skype:</b></td>
            <td class="redred" align="right"><?= $this->config->get('config_skype'); ?></td>
        </tr>
        <tr>
            <td colspan="2" align="left">
                <a  class="redred" href="mailto:<?= $this->config->get('config_email'); ?>">
                    <?= $this->config->get('config_email'); ?>
                </a>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="left">
                <a class="mailed" href="/index.php?route=information/contact">Отправить быстрый запрос</a>
            </td>
        </tr>
    </table>
<?php
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
        <span class="title">Курс продаж цветных металлов</span>
        <?= $content ?>
    </div>

</div>