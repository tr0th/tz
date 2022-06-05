package Task1::App::View::Web;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
);

=head1 NAME

Task1::App::View::Web - TT View for Task1::App

=head1 DESCRIPTION

TT View for Task1::App.

=head1 SEE ALSO

L<Task1::App>

=head1 AUTHOR

tr0th,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
