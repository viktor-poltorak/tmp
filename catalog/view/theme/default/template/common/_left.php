<div class="right_info">
    <table width="190" colspan="2" rowspan="2" style="text-align: justify;">
        <tr>
            <td width="30%" align="left"><b><?=_t('Tel.') ?>:</b></td>
            <td class="redred" align="right"><?= $this->config->get('config_telephone'); ?></td>
        </tr>
        <tr>
            <td align="left"><b><?=_t('Fax') ?>:</b></td>
            <td class="redred" align="right"><?= $this->config->get('config_fax'); ?></td>
        </tr>
        <tr>
            <td align="left"><b>Skype:</b></td>
            <td align="right"><a style="text-decoration: none;" class="redred" href="callto://<?= $this->config->get('config_skype'); ?>"><?= $this->config->get('config_skype'); ?></a</td>
        </tr>
        <tr>
            <td align="left"><b>E-mail:</b></td>
            <td align="right">
                <a  class="redred" href="mailto:<?= $this->config->get('config_email'); ?>?Subject=Запрос с сайта www.s-m.su">
                    <?= $this->config->get('config_email'); ?>
                </a>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="left">
                <a class="mailed" href="/index.php?route=information/contact"><?=_t('Send_quick_query') ?></a>
            </td>
        </tr>
    </table>
</div>