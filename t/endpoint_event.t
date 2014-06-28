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

    describe 'Get event list' => sub {
        my $json = JSON::to_json({
            jsonrpc => '2.0',
            method  => 'get_event_list',
            id      => 1,
        });
        my $req = POST '/';
        $req->header('Content-Type' => 'application/json');
        $req->header('Content-Length', length $json);
        $req->content($json);
        plack_ok($test_app, $req, 200, "get events");
    };

    describe 'Get event' => sub {
        my $json = JSON::to_json({
            jsonrpc => '2.0',
            method  => 'get_event',
            parqams => {
                event_id => 'awesome_event',
            },
            id      => 1,
        });
        my $req = POST '/';
        $req->header('Content-Type' => 'application/json');
        $req->header('Content-Length', length $json);
        $req->content($json);
        plack_ok($test_app, $req, 200, "get events");
    };

};

done_testing;
