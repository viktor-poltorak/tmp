<?php if (!isset($_REQUEST['print'])): ?>
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
<?php endif; ?>

<div class="clearfloat"></div>
<div id="footer">
    <div class="footernav">
        <ul>
            <li class="contacts">
                <a href="index.php?route=information/contact">Контакты</a>
            </li>
            <li class="sitemap">
                <a href="index.php?route=information/sitemap">Карта сайта</a>
            </li>
            <li class="share">
                <!-- AddThis Button BEGIN -->
                <a href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=ra-4e66aec71be5942f" class="addthis_button_compact">
                    <img src="/images/footer_ico_share.gif" width="0" height="0" alt="Bookmark and Share" style="border:0"/>
                    Поделиться
                </a>
                <script>
                    var addthis_config = {
                        ui_language: "ru",
                        data_track_clickback:true
                    }
                </script>
                <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4e66aec71be5942f"></script>
                <!-- AddThis Button END -->
            </li>
            <li class="print">
                <a href="<?= @getenv('REQUEST_URI') ?>" onclick="javascript:window.print();">Распечатать</a>
            </li>
        </ul>
    </div>
    <div class="copy">
        Все права защищены (С) «Специальные материалы»  2012
    </div>
    <div class="clearfloat"></div>
</div>

</div>
</div>
<!--- end of box border -->
</div></div></div></div>
</div></div></div></div>
<!-- -->
</div>
</div>

</body></html>