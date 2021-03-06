class php::pspell-extension
{
    require php::config, repo_ius

    package {
        'php-ext-pspell':
            name => "${php::config::php_prefix}-pspell-${php::config::php_version}",
            ensure => installed,
            provider => 'yum',
            require => $php::config::extension_dependencies;
    }
}