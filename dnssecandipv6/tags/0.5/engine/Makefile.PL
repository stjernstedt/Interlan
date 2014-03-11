# $Id: Makefile.PL,v 1.4 2005/03/04 14:17:46 jakob Exp $

use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'         => 'DNSCheck',
    'AUTHOR'       => '.SE (The Internet Infrastructure Foundation) <dnscheck@iis.se>',
    'ABSTRACT'     => 'DNS Quality and Integrity Checker',
    'VERSION_FROM' => 'DNSCheck.pm',
    'PREREQ_PM'    => {
        Crypt::OpenSSL::Random => 0,
        Data::Dumper           => 0,
        Date::Format           => 0,
        Date::Parse            => 0,
        Digest::BubbleBabble   => 0,
        Digest::SHA1           => 0,
        File::Basename         => 0,
        List::Util             => 0,
        Net::DNS               => 0.59,
        Net::DNS::SEC          => 0.14,
        Net::IP                => 1.25,
        Net::SMTP              => 2.29,
        POSIX                  => 0,
        Sys::Syslog            => 0,
        Time::HiRes            => 0,
        YAML                   => 0,
    },
    'EXE_FILES' => ['apps/dnscheck', 'apps/dnscheck-qrun'],
    'NO_META'   => 1,
    'SIGN'      => 0,
    clean       => { FILES           => "*~ apps/dnscheck apps/dnscheck-qrun" },
);

sub MY::install {

    package MY;
    my $self      = shift;
    my $inherited = $self->SUPER::install(@_);

    $inherited =~ s/^(install :: .*)$/$1 install_locale/gm;
    $inherited;
}

sub MY::postamble {

    package MY;
    my $self = shift;

    my $instprefix = $self->{PREFIX};

    return qq#

LOCALE_DIR = $instprefix/share/dnscheck/locale

# . q#

FIXVARS = \
	-Mvars \
	-DLOCALE_DIR="$(LOCALE_DIR)"

apps/dnscheck: apps/dnscheck.pl
	$(PERL) build/preprocessor.pl $(FIXVARS) -Msharpbang <$? >$@

apps/dnscheck-qrun: apps/dnscheck-qrun.pl
	$(PERL) build/preprocessor.pl $(FIXVARS) -Msharpbang <$? >$@

install_locale:
	install -d ${LOCALE_DIR}
	install -m 444 locale/*.yaml ${LOCALE_DIR}
#
}
