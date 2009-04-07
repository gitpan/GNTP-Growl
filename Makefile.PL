use inc::Module::Install;
name 'GNTP-Growl';
all_from 'lib/GNTP/Growl.pm';

requires 'Data::UUID'   => 0.149;
requires 'Crypt::CBC'   => 2.29;
requires 'Digest::MD5'  => 2.36;
requires 'Digest::SHA1' => 2.11;

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
