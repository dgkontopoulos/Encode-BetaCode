use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Encode::BetaCode',
    AUTHOR           => q{Dimitrios - Georgios Kontopoulos <dgkontopoulos@member.fsf.org>},
    VERSION_FROM     => 'lib/Encode/BetaCode.pm',
    ABSTRACT_FROM    => 'lib/Encode/BetaCode.pm',
    LICENSE          => 'perl',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Encode-BetaCode-*' },
);
