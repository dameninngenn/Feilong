package Feilong::PC::Dispatcher;
use Ze::Class;
extends 'Feilong::WAF::Dispatcher';


sub _build_config_file {
    my $self = shift;
    $self->home->file('etc/router-pc.pl');
}

EOC;
