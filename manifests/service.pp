# # Class: graph_explorer::service()
#
#
class graph_explorer::service() {
  service { 'graph_explorer':
    ensure     => 'running',
    hasstatus  => true,
    require    => File['/etc/init.d/graph_explorer'],
  }
}