# Graph Explorer Install class
# Relies on the Pip to install everything
class graph_explorer::install () {
  package { 'bottle':
    ensure   => '0.11.6',
    provider => 'pip',
  }

  package { 'urllib3':
    ensure   => '1.7.1',
    provider => 'pip',
  }

  package { 'paste':
    ensure   => '1.7.5.1',
    provider => 'pip',
  }

  package { 'wtforms':
    ensure   => 'installed',
    provider => 'pip',
  }

  package { 'argparse':
    ensure   => 'installed',
    provider => 'pip',
  }

  package { 'gunicorn':
    ensure => 'latest',
  }

  package{ 'graph-explorer':
    ensure   => 'latest',
    provider => 'pip',
  }
}