package CircleBinder::Model::Event;

use strict;
use warnings;

sub sample {
    return {
        event_id          => "awesome_event",
        event_name        => "Awesome Event",
        start_epoch_time  => 1403402400,
        end_epoch_time    => 1403418600,
        catalog_fields    => "circle_name\tpen_name\thomepage_url",
    };
}

1;
