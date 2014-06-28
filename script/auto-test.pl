#!/usr/bin/env perl

# ref: http://ka2u.hatenablog.com/entry/2012/02/28/034010
{
    package Autot;

    use strict;
    use 5.008_005;
    our $VERSION = '0.01';

    use File::Next;
    use Filesys::Notify::Simple;

    sub new {
        my ($class, $path) = @_;

        my $file_list;
        my $files = File::Next::files($path);
        while (defined(my $file = $files->())) {
            push (@{$file_list}, $file);
        }
        die "Files Not Found." unless (scalar(@{$file_list}) > 0);
        my $self = bless { file_list => $file_list }, $class;
        return $self;
    }

    sub start {
        my $class = shift;

        my $count = 1;
        while (1) {

            print "[ test ($count) ] --" . "\n >> ";
            my $watcher_path = &_watcher($class->{file_list});
            my $prove_result;

            if ($watcher_path =~ /(.*)\.t$/) {
                $prove_result = `carton exec -- prove -Ilib $watcher_path`;
            } elsif ($watcher_path =~ /((.*)\.pl$)|((.*)\.pm$)/) {
                $prove_result = `carton exec -- prove -Ilib`;
            }

            print $prove_result unless (!defined($prove_result));
            $count++;

        }
    }

    sub _watcher {
        my ($file_list) = shift;
        my $watcher = Filesys::Notify::Simple->new($file_list);
        $watcher->wait(sub {
                for my $event (@_) {
                return $event->{path};
                }
                });
    }

}

my $autot = Autot->new('./');
$autot->start;

