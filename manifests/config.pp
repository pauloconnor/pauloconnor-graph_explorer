# Graph Explorer Config
#
#
class graph_explorer::config() {

  file { [
    '/etc/graph_explorer',
    $graph_explorer::log_directory,
    $graph_explorer::alerting_db_dir,
    ]:
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
  }

  file { '/etc/graph_explorer/config.cfg':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template('graph_explorer/etc/graph_explorer/config.cfg.erb'),
    require => File['/etc/graph_explorer'],
    notify  => Service['graph_explorer'],
  }

  file { '/etc/default/graph_explorer':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    source  => 'puppet:///modules/graph_explorer/etc/default/graph_explorer',
  }

  file { '/etc/init.d/graph_explorer':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    source  => 'puppet:///modules/graph_explorer/etc/init.d/graph_explorer.erb',
  }

  cron { 'metrics':
    command => '/usr/local/bin/update_metrics.py /etc/graph_explorer/config.cfg &>/dev/null',
    user    => root,
    hour    => '*',
    minute  => '*/20',
  }
}