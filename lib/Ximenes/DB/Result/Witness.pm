use utf8;
package Ximenes::DB::Result::Witness;

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->table("witness");

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "person",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "wedding",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

__PACKAGE__->set_primary_key("id");

__PACKAGE__->belongs_to(
  "person",
  "Ximenes::DB::Result::Person",
  { id => "person" }
);

__PACKAGE__->belongs_to(
  "wedding",
  "Ximenes::DB::Result::Wedding",
  { id => "wedding" }
);

1;
