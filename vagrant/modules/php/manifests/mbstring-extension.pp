class php::mbstring-extension
{
    require php::config, repo_ius

    package {
        'php-ext-mbstring':
            name => "${php::config::php_prefix}-mbstring-${php::config::php_version}",
            ensure => installed,
            provider => 'yum',
            require => $php::config::extension_dependencies;

    }
}