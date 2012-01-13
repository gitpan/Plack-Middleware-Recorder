
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "HTML::Tree" => 0,
    "HTTP::Request::Common" => 0,
    "Module::Build" => "0.3601",
    "Test::Exception" => 0,
    "Test::More" => 0,
    "Test::TCP" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Plack middleware that records your client-server interactions",
  "dist_author" => [
    "Rob Hoelz <rob\@hoelz.ro>"
  ],
  "dist_name" => "Plack-Middleware-Recorder",
  "dist_version" => "0.03",
  "license" => "perl",
  "module_name" => "Plack::Middleware::Recorder",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Carp" => 0,
    "Getopt::Long" => 0,
    "HTTP::Request" => 0,
    "IO::File" => 0,
    "IO::String" => 0,
    "Plack" => 0,
    "Plack::Client" => 0,
    "Plack::Middleware::Debug" => 0,
    "Pod::Usage" => 0,
    "Storable" => 0,
    "autodie" => 0,
    "namespace::clean" => 0,
    "perl" => "5.8.8"
  },
  "script_files" => [
    "bin/plack-replay",
    "bin/plack-record"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
