use strict;
use warnings;
use Test::More;

use_ok $_ for qw(
    CircleBinder::Server::RPC::Dispatcher
    CircleBinder::Server::RPC::Handler::Event
    CircleBinder::Server::RPC::Handler::Circle
    CircleBinder::Server::RPC::Handler::Checklist
);

done_testing;
