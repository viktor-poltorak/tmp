<?php echo $header; ?>
<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
</div>
<? include('_submenu.php'); ?>
<? include('_left_categories.php'); ?>
<div class="centered_ contact">
    <div class="redred">
        <p><?= $text_infobox ?></p>
    </div>
    <div class="clearfix">
        <div class="left">
            <b class="redred"><?= $text_address ?>:</b>
            <div>
                <?= $address ?>
            </div>
            <br />
            <a href="http://maps.yandex.ru/?text=%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D1%8F%2C%20%D0%A1%D0%BC%D0%BE%D0%BB%D0%B5%D0%BD%D1%81%D0%BA%D0%B0%D1%8F%20%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C%2C%20%D0%A1%D0%BC%D0%BE%D0%BB%D0%B5%D0%BD%D1%81%D0%BA%2C%20%D0%A0%D0%BE%D1%81%D0%BB%D0%B0%D0%B2%D0%BB%D1%8C%D1%81%D0%BA%D0%BE%D0%B5%20%D1%88%D0%BE%D1%81%D1%81%D0%B5&sll=32.074455%2C54.753336&ll=32.077515%2C54.755257&spn=0.040340%2C0.014024&z=15&l=map">
                <img src="/images/map1.png" />
            </a>
            <br />
            <br />
            <br />
            <?php if ($telephone) { ?>
                <b class="redred"><?php echo $text_telephone; ?>:</b>
                <div>
                    <?php echo $telephone; ?><br />
                </div>
            <?php } ?>
            <br />
            <?php if ($fax) { ?>
                <b class="redred"><?php echo $text_fax; ?></b>
                <div><?php echo $fax; ?></div>
            <?php } ?>
        </div>
        <div class="right">
            <b class="redred"><?= $text_sklad_address ?>:</b>
            <div>
                <?= $address2 ?>
            </div>
            <br />

            <a href="http://maps.yandex.ru/?text=%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D1%8F%2C%20%D0%9C%D0%BE%D1%81%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F%20%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C%2C%20%D0%9F%D1%83%D1%88%D0%BA%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9%20%D1%80%D0%B0%D0%B9%D0%BE%D0%BD%2C%20%D0%9F%D1%83%D1%88%D0%BA%D0%B8%D0%BD%D0%BE%2C%20%D0%BC%D0%B8%D0%BA%D1%80%D0%BE%D1%80%D0%B0%D0%B9%D0%BE%D0%BD%20%D0%9F%D1%83%D1%88%D0%BA%D0%B8%D0%BD%D1%81%D0%BA%D0%BE%D0%B5%20%D0%BF%D0%BE%D0%BB%D0%B5%2C%20%D0%B2%D0%BB10%D1%811&sll=37.87158%2C55.979188&ll=37.871962%2C55.978767&spn=0.010085%2C0.003399&z=17&l=map">
                <img src="/images/map2.png" />
            </a>
            <br />
            <br />
            <br />
            <b class="redred">Skype:</b>
            <div>
                <a style="text-decoration: none;" class="redred" href="callto://<?= $skype ?>"><?= $skype ?></a>
            </div>
            <br />
            <b class="redred">e-mail:</b>
            <div>
                <a class="redred" href="mailto:<?= $info_email ?>?Subject=Запрос с сайта www.s-m.su">
                    <?= $info_email ?>
                </a>
            </div>
            <br />
        </div>
    </div>
</div>
<div class="right_info">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">
        <b class="redred"><?= $text_quick_contact ?>:</b>
        <div class="content">
            <div><?= $text_fio ?></div>
            <input type="text" name="name" value="<?php echo $name; ?>" />
            <br />
            <?php if ($error_name) { ?>
                <span class="error"><?php echo $error_name; ?></span>
            <?php } ?>
            <br />
            <div><?= $text_email_and_telephone ?></div>
            <input type="text" name="email" value="<?php echo $email; ?>" />
            <br />
            <?php if ($error_email) { ?>
                <span class="error"><?php echo $error_email; ?></span>
            <?php } ?>
            <br />
            <?= $text_textmessage ?><br />
            <textarea name="enquiry" cols="40" rows="10" style="width: 99%; height: 100px"><?php echo $enquiry; ?></textarea>
            <br />
            <?php if ($error_enquiry) { ?>
                <span class="error"><?php echo $error_enquiry; ?></span>
            <?php } ?>
            <br />
            <?php echo $entry_captcha; ?><br />
            <div class="form-captcha"><input type="text" name="captcha" value="<?php echo $captcha; ?>" /></div>
            <img src="index.php?route=information/contact/captcha" alt="" />
            <?php if ($error_captcha) { ?>
                <span class="error"><?php echo $error_captcha; ?></span>
            <?php } ?>
        </div>
        <div class="buttons">
            <div class="right">
                <a id="submit-contacts" onclick="$('#contact').submit();" class="button"><?php echo $button_send; ?></a>
            </div>
        </div>
    </form>
</div>
<div class="clearfloat"></div>
<?php echo $footer; ?>