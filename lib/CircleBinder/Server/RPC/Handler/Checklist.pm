package CircleBinder::Server::RPC::Handler::Checklist;

use strict;
use warnings;
use utf8;
use JSON;
use CircleBinder::Model::Circle;

sub new {
    my $class = shift;
    my $self = bless {@_}, $class;
}

sub get_checklist {
    my $self = shift;
    return JSON::to_json({
        circles => [
            CircleBinder::Model::Circle::sample,
        ],
    });
}

sub create_checklist {
    my $self = shift;
    return $self->get_checklist;
}

sub update_checklist {
    my $self = shift;
    return $self->get_checklist;
}

sub delete_checklist {
    my $self = shift;
    return JSON::to_json({});
}

1;
