use strict;
use warnings;
use lib qw/lib/;
use GNTP::Growl;

binmode STDOUT, ':encoding(cp932)' if $^O eq 'MSWin32';

my $growl = GNTP::Growl->new(
    AppName  => "my perl app",
    Password => "secret",
    EncryptAlgorithm => 'DES',
    #Debug => 1,
);

$growl->register([
    { Name => "foo", },
    { Name => "bar", },
]);

$growl->notify(
    Event => "foo",
    Title => "おうっふー おうっふー1",
    Message => "大事な事なので\n2回言いました",
    Icon => "http://mattn.kaoriya.net/images/logo.png",
);
