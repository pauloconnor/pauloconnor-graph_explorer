# == Class: graph_explorer
#
# Full description of class graph_explorer here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { graph_explorer:
#  }
#
# === Authors
#
# Paul O'Connor <paul@poconnor.me>
#
# === Copyright
#
# Copyright 2014 Paul O'Connor
#
class graph_explorer (
  $package_version                      = $graph_explorer::params::package_version,
  $listen_host                          = $graph_explorer::params::listen_host,
  $listen_port                          = $graph_explorer::params::listen_port,
  $filename_metrics                     = $graph_explorer::params::filename_metrics,
  $log_directory                        = $graph_explorer::params::log_directory,
  $graphite_url_server                  = $graph_explorer::params::graphite_url_server,
  $graphite_url_client                  = $graph_explorer::params::graphite_url_client,
  $graphite_username                    = $graph_explorer::params::graphite_username,
  $graphite_password                    = $graph_explorer::params::graphite_password,
  $anthracite_host                      = $graph_explorer::params::anthracite_host,
  $anthracite_port                      = $graph_explorer::params::anthracite_port,
  $anthracite_index                     = $graph_explorer::params::anthracite_index,
  $anthracite_add_url                   = $graph_explorer::params::anthracite_add_url,
  $locations_plugins_structured_metrics = $graph_explorer::params::locations_plugins_structured_metrics,
  $locations_dashboards                 = $graph_explorer::params::locations_dashboards,
  $elasticsearch_host                   = $graph_explorer::params::elasticsearch_host,
  $elasticsearch_port                   = $graph_explorer::params::elasticsearch_port,
  $elasticsearch_index                  = $graph_explorer::params::elasticsearch_index,
  $elasticsearch_limit_es_metrics       = $graph_explorer::params::elasticsearch_limit_es_metrics,
  $process_native_proto2                = $graph_explorer::params::process_native_proto2,
  $alerting                             = $graph_explorer::params::alerting,
  $alerting_db_dir                      = $graph_explorer::params::alerting_db_dir,
  $alerting_smtp                        = $graph_explorer::params::alerting_smtp,
  $alerting_from                        = $graph_explorer::params::alerting_from,
  $alerting_backoff                     = $graph_explorer::params::alerting_backoff,
  $alerting_base_uri                    = $graph_explorer::params::alerting_base_uri,
  $collectd_StoreRates                  = $graph_explorer::params::collectd_StoreRates,
  $collectd_prefix                      = $graph_explorer::params::collectd_prefix,
) inherits graph_explorer::params {

  validate_re($listen_host, '^[a-zA-Z0-9_\- .]*$')
  validate_string($listen_port)
  validate_string($filename_metrics)
  validate_string($log_directory)
  validate_string($graphite_url_server)
  validate_string($graphite_url_client)
  validate_string($graphite_username)
  validate_string($graphite_password)
  validate_string($anthracite_host)
  validate_string($anthracite_port)
  validate_string($anthracite_index)
  validate_string($anthracite_add_url)
  validate_string($locations_plugins_structured_metrics)
  validate_string($locations_dashboards)
  validate_string($elasticsearch_host)
  validate_string($elasticsearch_port)
  validate_string($elasticsearch_index)
  validate_string($elasticsearch_limit_es_metrics)
  validate_bool($process_native_proto2)
  validate_bool($alerting)
  validate_string($alerting_db)
  validate_string($alerting_smtp)
  validate_string($alerting_from)
  validate_string($alerting_backoff)
  validate_string($alerting_base_uri)
  validate_bool($collectd_StoreRates)
  validate_string($collectd_prefix)

  class { 'graph_explorer::install':}->
  class { 'graph_explorer::config':}->
  class { 'graph_explorer::service':}

}
