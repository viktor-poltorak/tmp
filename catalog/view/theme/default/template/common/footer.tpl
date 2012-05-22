<div class="clearfloat"></div>
<div id="footer">
    <?php include '_currency.php' ?>
    <div class="footernav">
        <ul>
            <li class="contacts">
                <a href="index.php?route=information/contact"><?=_t('Contacts') ?></a>
            </li>
            <li class="sitemap">
                <a href="index.php?route=information/sitemap"><?=_t('Sitemap') ?></a>
            </li>
            <li class="share">
                <!-- AddThis Button BEGIN -->
                <a href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=ra-4e66aec71be5942f" class="addthis_button_compact">
                    <img src="/images/footer_ico_share.gif" width="0" height="0" alt="Bookmark and Share" style="border:0"/>
                    <?=_t('Share') ?>
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
                <a href="<?= @getenv('REQUEST_URI') ?>" onclick="javascript:window.print();">
                    <?=_t('Print'); ?>
                </a>
            </li>
        </ul>
    </div>
    <div class="copy">
        <?=_t('copyright') ?> <?=date('Y') ?>
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