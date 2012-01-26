package all::your::base::are::belong::to;
use 5.006;
use version;
BEGIN {
  $all::your::base::are::belong::to::AUTHORITY = 'cpan:TOBYINK';
  $all::your::base::are::belong::to::VERSION   = qv('v85.83');
  require parent and *import = \&parent::import
}
__PACKAGE__
__END__

=head1 NAME

all::your::base::are::belong::to - perform multiple inheritance in Perl!

=head1 SYNOPSIS

 package My::Cat;
 use all::your::base::are::belong::to 'My::Mammal', 'My::WhiskeredThing';

=head1 DESCRIPTION

OK, that abstract ("perform multiple inheritance in Perl!") makes this module
sound really clever, but Perl supports multiple inheritance out of the box.
So really this is just some silly syntactic sugar for setting up a module's
inheritance chain. The example in the SYNOPSIS section is exactly equivalent
to:

 package My::Cat;
 use parent 'My::Mammal', 'My::WhiskeredThing';

which is roughly equivalent to:

 package My::Cat;
 BEGIN {
   require My::Mammal;
	require My::WhiskeredThing;
	push @My::Cat::ISA, 'My::Mammal', 'My::WhiskeredThing';
 }

=head1 SEE ALSO

L<parent>, L<perlboot>.

=head1 AUTHOR

Toby Inkster E<lt>tobyink@cpan.orgE<gt>.

=head1 COPYRIGHT AND LICENCE

This software is copyright (c) 2012 by Toby Inkster.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 DISCLAIMER OF WARRANTIES

THIS PACKAGE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
