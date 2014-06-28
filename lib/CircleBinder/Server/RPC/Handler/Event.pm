package CircleBinder::Server::RPC::Handler::Event;

use strict;
use warnings;
use JSON;

sub new {
    my $class = shift;
    my $self = bless {}, $class;
    return $self;
}

sub get_events {
    my $self = shift;
    return JSON::to_json([
        {
            event_id          => "awesome_event",
            event_name        => "Awesome Event",
            start_epoch_time  => 1403402400,
            end_epoch_time    => 1403418600,
            catalog_fields    => "circle_name\tpen_name\thomepage_url",
        },
    ]);
}

1;
