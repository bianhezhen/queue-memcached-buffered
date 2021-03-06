use strict;
use lib '.';
use inc::Module::Install;

name                ('Queue-Memcached-Buffered');
license             ('perl');
author              ('Agent Zhang <agentzh@yahoo.cn>');
perl_version        ('5.006001');
all_from            ('lib/Queue/Memcached/Buffered.pm');

install_script            ('bin/createqueue.pl');
install_script            ('bin/deletequeue.pl');
install_script            ('bin/readqueue.pl');
install_script            ('bin/writequeue.pl');

requires            ('FindBin');
requires            ('JSON::XS');
requires            ('Memcached::libmemcached' => '0.2101');

build_requires            ('Test::More');
build_requires            ('Test::MockObject');

#install_script('bin/cluster-prefetcher.pl');

no_index( directory => qw< t inc doc share demo > );

auto_install();
WriteAll();

