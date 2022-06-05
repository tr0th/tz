package Task1::App::Model::Array_sorter;
use Moose;
use namespace::autoclean;

extends 'Catalyst::Model';

=head1 NAME

Task1::App::Model::Array_sorter - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.


=encoding utf8

=head1 AUTHOR

tr0th,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

sub bubble_sort {
    my ($self, @array) = @_;

    foreach my $i (0..$#array) {
        foreach my $j (0..$#array - $i - 1) {
            if($array[$j] > $array[$j + 1]) {
                my $temp = $array[$j];
                $array[$j] = $array[$j + 1];
                $array[$j + 1] = $temp;
            }
        }
    }

    return @array;
}

sub binary_search {

    my ($self, $element, @arr) = @_;

    my $min = 0;
    my $max = $#arr;

    while($min <= $max) {
        my $middle = int(($max + $min) / 2);

        if($element < $arr[$middle]) {
            $max = $middle - 1;
            next;
        }
        if($element > $arr[$middle]) {
            $min = $middle + 1;
            next;
        }
        return 1;
    }

    return 0;
}

__PACKAGE__->meta->make_immutable;

1;
