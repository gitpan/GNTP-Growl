use strict;
use warnings;
use lib qw/lib/;
use GNTP::Growl;
use Encode;

binmode STDOUT, ':encoding(cp932)' if $^O eq 'MSWin32';

my $growl = GNTP::Growl->new(
    AppName => "my perl app",
    Password => 'secret',
    #Debug => 1,
);

$growl->subscribe(
    Port => 23054,
    CallbackFunction => sub {
        my ($Title, $Message) = @_;
        print decode_utf8($Title),",",decode_utf8($Message),"\n";
    },
);
