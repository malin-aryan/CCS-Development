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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'ccsmechanical' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'SWH2&y&cyl-l!KiEbZ2[y,>}&~OHZ(|mci|:rE+o2eAWRv8$^,cc_8fMSuWmTB|0' );
define( 'SECURE_AUTH_KEY',  ':ly6ZA$^^)e<80,33^}vH|v|.b3Ue/_>Vd#:VU 0>qC5q,N^ZE3COp],J;1e=(y*' );
define( 'LOGGED_IN_KEY',    '&#xpR*_~7J;=[/$um{|)=t/put]_#q5iRb>YD>~B&tH<a3BF?|iKis%fS@{H~?M1' );
define( 'NONCE_KEY',        'smu^N:cb^MFw|$yR:d|(@dZCyk&q0U^b|,Ic2}Tm*ivbp9@(po00 K:KLn+|^EAX' );
define( 'AUTH_SALT',        'j:C8J>-G%r8#_kdcG eycD(<YPd-9xjA%-<}9~}_4-Ug}7<G>SHl N14~m;KF5gO' );
define( 'SECURE_AUTH_SALT', 'z5Hy@(,Y%h8t(}u_0`N@U2.pm}qcr0c<]lousL,(Kt9z5{>VzD%1SIl4}wO,lp&i' );
define( 'LOGGED_IN_SALT',   's!|v-6$zN)~m|e(]VXB;eU52>/MRhQko:Ycfp/y#bet&H^|e%_lIy?$)-Lg;,lB8' );
define( 'NONCE_SALT',       '2;IrIlZhKXp[23Dx^F+z;?2SI]vm=v/;k}dz1S~ul@:[`4zY}LZAfTz=VH+]y[@9' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
