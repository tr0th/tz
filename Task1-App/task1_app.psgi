use strict;
use warnings;

use Task1::App;

my $app = Task1::App->apply_default_middlewares(Task1::App->psgi_app);
$app;

