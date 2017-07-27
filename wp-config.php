<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa user o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações
// com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'bd_defato');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', '');

/** Nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Charset do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para desvalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ',#hwCCXb_-}yX;OK3N[ K.P&fz3 ?dx{5:l`J;8NrEZHz`| H}W^%-1FP%AmHFD%');
define('SECURE_AUTH_KEY',  'OS=a5BBYzJ{bPj)_Q+YI{]KR=W$e`cSxor~{H+qH6 6Zsz-9||V%RTJ._FM]{gad');
define('LOGGED_IN_KEY',    'zRsM;1Aqv@k[7Z87fmur,b(1ZFcgCE76]Qf%O|}}wg[9$g$G6cZ))2W}!Bx;|4[G');
define('NONCE_KEY',        '4Knaih6?D4X$ecga83yFt2(lUWt35>eQ_+7m9B?l!7o !$n8^iV8-nUM2X<|NAoZ');
define('AUTH_SALT',        'y.f/b8jt}P$geQi2>4g|,,D<IA@}W,za;;_TC>w{tpE%Bu`?!0(3;:qc(9+8:9lh');
define('SECURE_AUTH_SALT', '$$&>3$[xMZhyX|)-x*Vl`X48MDQiSiMz>[}:{A~BH-Ud/fzD_W$5BZUwN7E-veJt');
define('LOGGED_IN_SALT',   '}m[LHK= :n  Cs*LHTX6:1Pf}E!W[z.m(NG<Qq@WiB!1HZE?>=L`vnOBzTn~v!YC');
define('NONCE_SALT',       'cSL5]q#cxt6f>#^N-g/%_qN9oO{lwtm<%rzjDc_P6zy2?&m|;#RL^@W-^){4pXdA');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * para cada um um único prefixo. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp_';

/**
 * Para desenvolvedores: Modo debugging WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
