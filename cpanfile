requires 'JSON';
requires 'Plack';
requires 'JSON::RPC::Dispatch';
requires 'Router::Simple::Declare';
requires 'perl', '5.008005';

# For script/auto-test.pl
requires 'File::Next';

on test => sub {
    requires 'Test::More', '0.98';
    requires 'Test::JsonAPI::Autodoc';
}

