# Graph Explorer Puppet

Tested with Travis CI

[![Build Status](https://travis-ci.org/pauloconnor/pauloconnor-graph_explorer.png)](https://travis-ci.org/pauloconnor/pauloconnor-graph_explorer)

## Installation

    $ puppet module install pauloconnor-graph_explorer

## Prerequisites
- One or more working Graphite installations
- An ElasticSearch cluster of one or more nodes

### Dependencies
- puppetlabs/stdlib

See `Modulefile` for details.

## Basic example

### Graph Explorer server

    node 'graph_explorer.foo.com' {
      class { 'graph_explorer':
      }
    }

## License

See LICENSE file.