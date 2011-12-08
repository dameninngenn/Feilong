package Feilong::WAF::Controller;
use Ze::Class;
use Try::Tiny;
extends 'Ze::WAF::Controller';

sub EXCECUTE {
    my( $self, $c, $action ) = @_;

    try {
        $self->$action( $c );
    }
    catch {
        die $_; 
    };

    return 1;
}

EOC;
