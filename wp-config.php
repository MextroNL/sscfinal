<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'sscfinal');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         's1(w%gt_}YSYYQ@zMw=*2TCJ,r38m}nh-hqJ`bAHw)C]AcTXz# 2)ry;ZDFOh^Jm');
define('SECURE_AUTH_KEY',  '0(G/NWO*Le:,[e|)weh{!~9|uj5{wE8C/tD#u0sESZ=OtlOVc.KpCOIOTcI%I>;A');
define('LOGGED_IN_KEY',    'Q#X05cSVJT}XJgu[<0+;Twzk=F$;%bwdR*(St$jljMS,aW^&]#QF.EPJ&6,v-Ctn');
define('NONCE_KEY',        '1ZwO{%+]8Kd^Se>E*oc%jUzVJGB7D7?ll|gaA-)tRO1w@!}e$vI.=J$v=Wo]yxFb');
define('AUTH_SALT',        '9=]f:C3T~YIgS]?U|;-N+*aW|!=Gq*6b+i[TO:cl;`uMYhbRarNBb{e~46<](i4y');
define('SECURE_AUTH_SALT', '|yy]VSNDyReKT{E-HRx)HETk.<I_Mw2Pi~Fo3TTgo3L.5{+|4=A}{]b&j|0@_-;l');
define('LOGGED_IN_SALT',   '@IiPH%^7:<?{*y4Nrjs4Zi2KDQEU]8QQM]mn~x1OGJvNCJp}`Hb% 0_)w@oM^v~J');
define('NONCE_SALT',       'vRK52FRT)8rY1PoT9}S#nC3~K[6z=pkV(lMQN(@m)2SN_u^W3b9vi/{CZ]T_D&3k');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
