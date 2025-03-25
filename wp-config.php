<?php
// ** MySQL settings ** //
define('DB_NAME', 'login');
define('DB_USER', 'admin');
define('DB_PASSWORD', 'Calvin17');
define('DB_HOST', 'mywebdb.cujue22kskdi.us-east-1.rds.amazonaws.com');

define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

// ** Authentication Unique Keys and Salts ** //
define('AUTH_KEY',         'dDLu8^D0)>5>%$AnjB~_!K-fTW,yzSPe|ZCuwb%Y_e|%I0qNG_+(/.KJeY&3x.Q~');
define('SECURE_AUTH_KEY',  'p3&j[na45RXg&|y7FRp;ImZx;&%{I|skH((4_+t#MB22FxASXciCwzKXM@gD-1#b');
define('LOGGED_IN_KEY',    '*e3w6Y{du%9KL?1fbn-:30.0eyy*J7lTeUK)3f4WZ7Kj^PP$J>_8Y3D3]j8DZJ<<');
define('NONCE_KEY',        'zV`S=zn&K7uMv_N8sgn#DW;7I2>J#6UtB1>UsUQ|0?Me1Y8L%?WXDd:37H9i}&r+');
define('AUTH_SALT',        '8?=r%oEEgk6G.Gez(1tz)V$7t%Ql^KcmJ8P|eGoHPGFGF$A{)CcoLHEFJ$NwC);h');
define('SECURE_AUTH_SALT', 'cHd^ZxI_KhD8>nE:UjBo#5o(x8Rz>F6fZD>z?=6nGmEBC@wY$8Mkn&tCnrskONX+');
define('LOGGED_IN_SALT',   '4hZgA^.<0aM>U&NsBzMd(NN&B+hOf:G0nrTzTyCHM-a-1[4s_v&FTvN)>%h#Z(Gr');
define('NONCE_SALT',       'eFfS+j<VN:eJ0e@Ke)d=WR:Thx@c|8DSSvv@C1JIB[+ZH4>7T&H_aLM`X|y~HQUF');

// ** Table prefix ** //
$table_prefix = 'wp_';

// ** Debugging mode ** //
define('WP_DEBUG', false);

/* That's all, stop editing! Happy publishing. */

if (!defined('ABSPATH')) {
    define('ABSPATH', __DIR__ . '/');
}

require_once ABSPATH . 'wp-settings.php';
?>