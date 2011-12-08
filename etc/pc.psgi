use strict;
use File::Spec;
#use File::Basename;
our @LIBS;
BEGIN {
    my $base = '.'; # XXX
    @LIBS = (
        File::Spec->catdir($base, 'lib'),
    );
}
use lib @LIBS;

use Plack::Builder;
use Feilong::PC;
use Feilong::Home;

my $home = Feilong::Home->get;
my $webapp = Feilong::PC->new;
my $app = $webapp->to_app;

builder {
    enable 'Plack::Middleware::Static',
        path => qr{^/static/}, root => $home->file('htdocs');

    enable_if { $_[0]->{REMOTE_ADDR} eq '127.0.0.1' } 
    "Plack::Middleware::ReverseProxy";

    $app;
};

