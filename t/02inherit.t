package Local::Test::t_02inherit;
use Test::More tests => 6;
use all::your::base::are::belong::to
	qw/
		File::Spec
		Data::Dumper
		/;

isa_ok __PACKAGE__, 'File::Spec';
isa_ok __PACKAGE__, 'Data::Dumper';
ok(!__PACKAGE__->isa('File::Basename'), 'The class isn\'ta File:Basename');
can_ok __PACKAGE__, 'catfile';
can_ok __PACKAGE__, 'Dumper';
ok(!__PACKAGE__->can('fileparse_set_fstype'), __PACKAGE__."->cannot('fileparse_set_fstype')");
