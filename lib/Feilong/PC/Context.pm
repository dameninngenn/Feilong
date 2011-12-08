package Feilong::PC::Context;
use Ze::Class;
extends 'Feilong::WAF::Context';

__PACKAGE__->load_plugins( 'Ze::WAF::Plugin::Encode' );

EOC;
