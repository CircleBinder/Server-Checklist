use strict;
use warnings;
use utf8;
use JSON;
use CircleBinder::Server::RPC::Dispatcher;

my $app = sub {
    my $env = shift;
    CircleBinder::Server::RPC::Dispatcher->new->dispatch($env);
};

