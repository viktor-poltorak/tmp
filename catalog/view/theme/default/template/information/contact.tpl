<?php echo $header; ?>
<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
</div>
<? include('_submenu.php'); ?>
<? include('_left_categories.php'); ?>
<div class="centered_">
    <h1><?php echo $heading_title; ?></h1>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">
        <h2><?php echo $text_location; ?></h2>
        <div class="contact-info">
            <div class="content">
                <div class="left">
                    <b><?php echo $text_address; ?></b> <?php echo $address; ?>
                </div>
                <div class="right">
                    <?php if ($telephone) { ?>
                        <b><?php echo $text_telephone; ?></b>
                        <?php echo $telephone; ?><br />
                    <?php } ?>
                    <?php if ($fax) { ?>
                        <b><?php echo $text_fax; ?></b>
                        <?php echo $fax; ?>
                    <?php } ?>
                </div>
            </div>
        </div>
        <h2><?php echo $text_contact; ?></h2>
        <div class="content">
            <div class="form-label"><?php echo $entry_name; ?></div>
            <input type="text" name="name" value="<?php echo $name; ?>" />
            <br />
            <?php if ($error_name) { ?>
                <span class="error"><?php echo $error_name; ?></span>
            <?php } ?>
            <br />
            <div class="form-label"><?php echo $entry_email; ?></div>
            <input type="text" name="email" value="<?php echo $email; ?>" />
            <br />
            <?php if ($error_email) { ?>
                <span class="error"><?php echo $error_email; ?></span>
            <?php } ?>
            <br />
            <b><?php echo $entry_enquiry; ?></b><br />
            <textarea name="enquiry" cols="40" rows="10" style="width: 99%; height: 100px"><?php echo $enquiry; ?></textarea>
            <br />
            <?php if ($error_enquiry) { ?>
                <span class="error"><?php echo $error_enquiry; ?></span>
            <?php } ?>
            <br />
            <b><?php echo $entry_captcha; ?></b><br />
            <div class="form-captcha"><input type="text" name="captcha" value="<?php echo $captcha; ?>" /></div>
            <img src="index.php?route=information/contact/captcha" alt="" />
            <?php if ($error_captcha) { ?>
                <span class="error"><?php echo $error_captcha; ?></span>
            <?php } ?>
        </div>
        <div class="buttons">
            <div class="right">
                <a onclick="$('#contact').submit();" class="button"><span><?php echo $button_continue; ?></span></a>
            </div>
        </div>
    </form>
</div>



<? include('_left.php') ?>
<div class="clearfloat"></div>


<?php echo $footer; ?>