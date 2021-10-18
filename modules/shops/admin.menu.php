<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Fri, 10 Jan 2014 04:47:14 GMT
 */

if (! defined('NV_ADMIN')) {
    die('Stop!!!');
}

// Menu dọc
global $nv_Cache;
$shop_module_config = array();
$sql = "SELECT module, config_name, config_value FROM " . NV_CONFIG_GLOBALTABLE . " WHERE lang='" . NV_LANG_DATA . "' and module='" . $module_name . "'";
$list = $nv_Cache->db($sql, '', $module_name);
foreach ($list as $row) {
    $shop_module_config[$row['config_name']] = $row['config_value'];
}

$submenu['order'] = $lang_module['order_title'];

if ($shop_module_config['use_shipping'] == '1') {
    $submenu['shipping'] = $lang_module['shipping'];
}

$submenu['order_seller'] = $lang_module['order_seller'];

if ($shop_module_config['review_active'] == '1') {
    $submenu['review'] = $lang_module['review'];
}

if ($shop_module_config['active_warehouse']) {
    $submenu['warehouse_logs'] = $lang_module['warehouse_logs'];
}
$submenu_price=array();
$submenu_price['updateprice'] = $lang_module['updateprice'];
$submenu['items'] = array( 'title' => $lang_module['content_add_items'], 'submenu' => $submenu_price );

//$submenu['items'] = $lang_module['content_add_items'];
$submenu['content'] = $lang_module['content_add'];
$submenu['discounts'] = $lang_module['discounts'];

if ($shop_module_config['use_coupons']) {
    $submenu['coupons'] = $lang_module['coupons'];
}

if ($shop_module_config['point_active']) {
    $submenu['point'] = $lang_module['point'];
}

if ($shop_module_config['download_active']) {
    $submenu['download'] = $lang_module['download'];
}

$submenu['tags'] = $lang_module['tags'];

$submenu['cat'] = $lang_module['categories'];
$submenu['group'] = $lang_module['group'];
$submenu['blockcat'] = $lang_module['block'];
$submenu['prounit'] = $lang_module['prounit'];
$submenu['money'] = $lang_module['money'];
$submenu['weight'] = $lang_module['weight_unit'];
if (defined('NV_IS_SPADMIN')) {
    if ($shop_module_config['template_active']) {
        $submenu['template'] = $lang_module['fields'];
    }
    $submenu['tabs'] = $lang_module['tabs'];
}
if ($shop_module_config['active_payment']) {
    $submenu['payport'] = $lang_module['setup_payment'];
    $submenu['docpay'] = $lang_module['document_payment'];
}
$submenu['setting'] = $lang_module['setting'];