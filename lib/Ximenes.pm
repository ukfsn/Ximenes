package Ximenes;
use Dancer ':syntax';
use Dancer::Plugin::DBIC;
use Dancer::Plugin::Auth::RBAC;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

true;
