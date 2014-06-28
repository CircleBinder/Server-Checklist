package CircleBinder::Server::RPC::Handler::Circle;

use strict;
use warnings;
use CircleBinder::Model::Circle;

sub new {
    my $class = shift;
    my $self = bless {@_}, $class;
}

sub get_circle_list {
    my $self = shift;
    return JSON::to_json({
        circles => [
            CircleBinder::Model::Circle::sample,
        ],
    });
}

sub get_circle {
    my $self = shift;
    return JSON::to_json({
        circle => CircleBinder::Model::Circle::sample,
    });
}


1;
