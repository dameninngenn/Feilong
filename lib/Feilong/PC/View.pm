package Feilong::PC::View;
use Ze::Class;
use Ze::View;
extends 'Ze::WAF::View';
use Feilong::Home;

sub _build_engine {
    my $self = shift;
    my $path = [ Feilong::Home->get()->subdir('view-pc') , Feilong::Home->get()->subdir('view-pc/include') ];

    return Ze::View->new(
        engines => [
            { engine => 'Ze::View::Xslate' , config => { path => $path , module => ['Text::Xslate::Bridge::Star' ] } }, 
            { engine => 'Ze::View::JSON', config  => {} } 
        ]
    );

}


EOC;
