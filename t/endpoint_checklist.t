use strict;
use warnings;
use utf8;
use HTTP::Request::Common;
use JSON;
use Plack::Test;
use Plack::Util;
use Test::More;
use Test::JsonAPI::Autodoc;

my $app = Plack::Util::load_psgi('app.psgi');
my $test_app = Plack::Test->create($app);

subtest '200 OK' => sub {
    describe 'Create checklist' => sub {
        my $json = JSON::to_json({
            jsonrpc => '2.0',
            method  => 'create_checklist',
            params  => {
                event_id     => 'awesome_event',
                circle_id_list => [1],
            },
            id      => 1,
        });
        my $req = POST '/';
        $req->header('Content-Type' => 'application/json');
        $req->header('Content-Length', length $json);
        $req->content($json);
        plack_ok($test_app, $req, 200, "create checklist");
    };

    describe 'Get checklist list in event' => sub {
        my $json = JSON::to_json({
            jsonrpc => '2.0',
            method  => 'get_checklist_list',
            params => {
                event_id => 'awesome_event',
            },
            id      => 1,
        });
        my $req = POST '/';
        $req->header('Content-Type' => 'application/json');
        $req->header('Content-Length', length $json);
        $req->content($json);
        plack_ok($test_app, $req, 200, "get checklist in event");
    };

    describe 'Get checklist' => sub {
        my $json = JSON::to_json({
            jsonrpc => '2.0',
            method  => 'get_checklist',
            params => {
                checklist_id => 1,
            },
            id      => 1,
        });
        my $req = POST '/';
        $req->header('Content-Type' => 'application/json');
        $req->header('Content-Length', length $json);
        $req->content($json);
        plack_ok($test_app, $req, 200, "get checklist");
    };

    describe 'Update checklist' => sub {
        my $json = JSON::to_json({
            jsonrpc => '2.0',
            method  => 'update_checklist',
            params => {
                checklist_id => 1,
                circle_id_list => [1],
            },
            id      => 1,
        });
        my $req = POST '/';
        $req->header('Content-Type' => 'application/json');
        $req->header('Content-Length', length $json);
        $req->content($json);
        plack_ok($test_app, $req, 200, "update checklist");
    };

    describe 'Delete checklist' => sub {
        my $json = JSON::to_json({
            jsonrpc => '2.0',
            method  => 'delete_checklist',
            params => {
                checklist_id => 1,
            },
            id      => 1,
        });
        my $req = POST '/';
        $req->header('Content-Type' => 'application/json');
        $req->header('Content-Length', length $json);
        $req->content($json);
        plack_ok($test_app, $req, 200, "delete checklist");
    };

};

done_testing;
