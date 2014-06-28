package CircleBinder::Server::RPC::Handler::Event;

use strict;
use warnings;
use JSON;
use CircleBinder::Model::Event;

sub new {
    my $class = shift;
    my $self = bless {}, $class;
    return $self;
}

sub get_event_list {
    my $self = shift;
    return JSON::to_json({
        event_list => [$self->get_event],
    });
}

sub get_event {
    my $self = shift;
    return JSON::to_json({
        event => CircleBinder::Model::Event::sample,
    });
}

1;
