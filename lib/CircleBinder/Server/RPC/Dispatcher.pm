package CircleBinder::Server::RPC::Dispatcher;

use strict;
use warnings;
use JSON::RPC::Dispatch;
use Router::Simple::Declare;

sub new {
    my $class = shift;
    my $self = bless {@_}, $class;
}

sub dispatch {
    my ($self, $env) = @_;
    my $dispatch = JSON::RPC::Dispatch->new(
        prefix => "CircleBinder::Server::RPC::Handler",
        router => $self->make_router,
    );
    return $dispatch->handle_psgi($env);
}

sub make_router {
    return router {
        connect 'get_event_list' => {
            handler => 'Event',
            action  => 'get_event_list',
        };
        connect 'get_event' => {
            handler => 'Event',
            action  => 'get_event',
        };

        connect 'get_checklist_list' => {
            handler => 'Checklist',
            action  => 'get_checklist_list',
        };
        connect 'get_checklist' => {
            handler => 'Checklist',
            action  => 'get_checklist',
        };

        connect 'create_checklist' => {
            handler => 'Checklist',
            action  => 'create_checklist',
        };
        connect 'update_checklist' => {
            handler => 'Checklist',
            action  => 'update_checklist',
        };
        connect 'delete_checklist' => {
            handler => 'Checklist',
            action  => 'delete_checklist',
        };

        connect 'get_circle' => {
            handler => 'Circle',
            action  => 'get_circle',
        };
        connect 'get_circle_list' => {
            handler => 'Circle',
            action  => 'get_circle_list',
        };
    };
}

1;
