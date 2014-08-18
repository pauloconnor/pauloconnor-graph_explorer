## Class: graph_explorer::params()
#
#
class graph_explorer::params() {
  $package_version                      = 'latest'
  $listen_host                          = '0.0.0.0'
  $listen_port                          = 8080
  $filename_metrics                     = 'metrics.json'
  $log_directory                        = '/var/log/graph_explorer'

  $graphite_url_server                  = 'http://localhost'
  $graphite_url_client                  = "http://${::fqdn}"
  $graphite_username                    = ''
  $graphite_password                    = ''

  $anthracite_host                      = ''
  $anthracite_port                      = 9200
  $anthracite_index                     = 'anthracite'
  $anthracite_add_url                   = ''

  $locations_plugins_structured_metrics = '**builtins**'
  $locations_dashboards                 = '**builtins**'

  $elasticsearch_host                   = 'localhost'
  $elasticsearch_port                   = 9200
  $elasticsearch_index                  = 'graphite_metrics2'
  $elasticsearch_limit_es_metrics       = 10000

  $process_native_proto2                = true

  $alerting                             = true
  $alerting_db_dir                      = '/var/lib/graph_explorer'
  $alerting_smtp                        = 'your-smtp-server'
  $alerting_from                        = 'Graph Explorer <graph-explorer@example.com>'
  $alerting_backoff                     = 1800
  $alerting_base_uri                    = 'http://graph-explorer:8080'

  $collectd_StoreRates                  = true
  $collectd_prefix                      = '^collectd\.'
}