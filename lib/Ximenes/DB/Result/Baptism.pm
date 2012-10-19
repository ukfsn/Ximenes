use utf8;
package Ximenes::DB::Result::Baptism;

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->table("baptism");

__PACKAGE__->load_components(qw/InflateColumn::DateTime/);

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "person",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "date",
  { data_type => "date", is_nullable => 0 },
  "minister",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },

);

__PACKAGE__->set_primary_key("id");

__PACKAGE__->belongs_to(
  "person",
  "Ximenes::DB::Result::Person",
  { id => "person" }
);

__PACKAGE__->belongs_to(
  "minister",
  "Ximenes::DB::Result::Person",
  { id => "minister" }
);  

__PACKAGE__->has_many(
  "sponsors",
  "Ximenes::DB::Result::Sponsor",
  { "foreign.sponsored" => "self.id" }
);


1;
