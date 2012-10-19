use utf8;
package Ximenes::DB::Result::BaptismSponsor;

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->table("baptismsponsor");

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "sponsor",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "baptism",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

__PACKAGE__->set_primary_key("id");

__PACKAGE__->belongs_to(
  "sponsor",
  "Ximenes::DB::Result::Person",
  { id => "sponsor" }
);

__PACKAGE__->belongs_to(
  "baptism",
  "Ximenes::DB::Result::Baptism",
  { id => "baptism" }
);

1;
