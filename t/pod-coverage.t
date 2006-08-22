#!perl -T

use Test::More;
eval "use Test::Pod::Coverage 1.08";
plan skip_all => "Test::Pod::Coverage 1.08 required for testing POD coverage"
  if $@;

all_pod_coverage_ok({
  coverage_class => 'Pod::Coverage::CountParents',
  trustme        => [
    qw(as_string construct get_body get_header set_body set_header target)
  ],
});