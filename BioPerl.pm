package Bundle::BioPerl;

$VERSION = '2.00';

1;

__END__

=head1 NAME

Bundle::BioPerl - A bundle to install external CPAN modules used by BioPerl

=head1 SYNOPSIS

  
Perl one liner using CPAN.pm:

  perl -MCPAN -e 'install Bundle::BioPerl'

Use of CPAN.pm in interactive mode:

  $> perl -MCPAN -e shell
  cpan> install Bundle::BioPerl
  cpan> quit

Just like the manual installation of perl modules, the user may
need root access during this process to insure write permission 
is allowed within the intstallation directory.


=head1 CONTENTS

Bundle::LWP		- recommended, used for network access

File::Temp		- Already present in modern versions of perl

File::Spec		- Already present in modern versions of perl

IO::Scalar		- optional, used only in Bio::Tools::Blast::Run::WebBlast.pm

IO::String		- recommended, used by Bio::DB:WebDBSeqI

HTTP::Request::Common   - recommended, used for web access

HTTP::Status            - recommended, used for web access

LWP::UserAgent          - recommended, used for web access

URI::Escape             - recommended, used for web access

XML::Parser		- recommended for all bioperl releases after 0.6.2

XML::Parser::PerlSAX	- recommended for all bioperl releases after 0.6.2

XML::Writer		- recommended for all bioperl releases after 0.6.2

XML::Node		- recommended for all bioperl releases after 0.6.2

XML::Twig		- recommended for all bioperl releases after 0.6.2

SOAP::Lite		- Used for bibliographic queries & XEMBLService modules

GD		- Used only for drawing things within the Bio::Graphics modules


=head1 DESCRIPTION

The BioPerl distribution from http://bioperl.org contains code and
modules that may use or require additional 'external' perl modules 
for advanced functionality. Many of the external modules are not
contained within the standard Perl distribution. These external 
modules can be obtained from the Comprehensive Perl Archive 
Network (CPAN) located at http://www.cpan.org. 

MARCH 2002 NOTE: The latest release of this bundle includes all of the
external CPAN modules that are listed as dependencies of the
official BioPerl 1.0 codebase release. The only exceptions are the DBD::
DBI:: modules which are really best off installed on their own if you
have a need to load and query relational databases.

A webpage listing all known dependencies is maintained at
http://bioperl.org/Core/external.shtml

These modules are not required - they simply extend the functionality
of bioperl in various ways. To get the best use of bioperl, particularly
after the release of BioPerl 1.0 we recommend at least having the
LWP:: network access and the XML:: related modules installed. 

This perl module (Bundle::BioPerl) contains NO functionality
or real code at all. It is essentially a special perl module
meant to be used by the CPAN.pm module to simplify the task of
automatically installing multiple modules in one easy step.

Essentially users can tell CPAN.pm to 'install Bundle::BioPerl' and
CPAN.pm will download, install and configure all of the modules listed
in the BioPerl Bundle module. See the SYNOPSIS section or do
C<perldoc CPAN> to learn about how to use the CPAN.pm module to install
bundles.

NOTE: This process is complicated by the fact that some BioPerl
external modules themselves have their own dependencies and
prerequisites. In particular the XML::Parser module requires
the prior installation of the 'xpat' package which resides
outside of CPAN at http://sourceforge.net/projects/expat/.

The C<install Bundle::BioPerl> process may need to be repeated
several times to complete the full installation of all listed
modules. Some external modules are complicated or may themselves
have dependencies. Wherever possible we attempt to track this
online at http://bioperl.org/Core/external.shtml

NOTE: This Bundle does not install BioPerl :) Just the additional
modules that BioPerl code ocasionally makes use of. You will still
need to get the BioPerl distribution from CPAN or http://bioperl.org
and install it the usual way:

  perl Makefile.PL
  make
  make test
  make install

CPAN.pm has many features - including the ability to download
but not install the modules listed in the BioPerl bundle. 

C<perldoc CPAN> is your friend :)

=head1 AUTHOR

Chris Dagdigian E<lt>F<dag@sonsorol.org>E<gt>
(Author only of this bundle, not any the modules it lists)

=cut




