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
            <?=$address ?>
            </div>
            <br />
            
            <img src="/images/map.png" />
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
            
            <img src="/images/map.png" />
            <br />
            <br />
            <br />
            <b class="redred">Skype:</b>
            <div><?= $skype ?></div>
            <br />
            <b class="redred">e-mail:</b>
            <div><?= $info_email ?></div>
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