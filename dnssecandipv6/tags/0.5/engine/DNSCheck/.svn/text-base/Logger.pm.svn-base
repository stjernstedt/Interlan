#!/usr/bin/perl
#
# $Id$
#
# Copyright (c) 2007 .SE (The Internet Infrastructure Foundation).
#                    All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
# GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
# IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
######################################################################

package DNSCheck::Logger;

require 5.8.0;
use warnings;
use strict;
use Time::HiRes qw(gettimeofday);
use DNSCheck::Locale;

######################################################################

sub new {
    my $proto = shift;
    my $class = ref($proto) || $proto;
    my $self  = {};

    my $config = shift;

    if ($config->{interactive}) {
        $self->{interactive} = 1;
    }

    if ($config->{locale}) {
        $self->{locale} = new DNSCheck::Locale($config->{locale});
    }

    $self->{logname}  = undef;
    $self->{messages} = ();

    @{ $self->{module_stack} } = (0);
    $self->{module_id} = 0;

    bless $self, $class;
}

sub clear {
    my $self = shift;
    $self->{messages} = ();
    @{ $self->{module_stack} } = (0);
    $self->{module_id} = 0;
}

sub logname {
    my $self = shift;
    my $arg  = shift;

    if ($arg) {
        $self->{logname} = $arg;
    }

    return $self->{logname};
}

sub add {
    my $self = shift;

    my @module_stack     = @{ $self->{module_stack} };
    my $module_id        = -1;
    my $parent_module_id = -1;

    if ($#module_stack > 0) {
        $module_id        = $module_stack[$#module_stack];
        $parent_module_id = $module_stack[$#module_stack - 1];
    }

    my $entry;
    $entry->{timestamp} = join(".", gettimeofday);
    $entry->{level}     = shift;
    $entry->{tag}       = shift;
    $entry->{module_id} = $module_id;    # Id of module that logged entry
    $entry->{parent_module_id} =
      $parent_module_id;                 # Id of module that called current one
    $entry->{arg} = [@_];

    push @{ $self->{messages} }, $entry;

    if ($self->{interactive}) {
        $self->print();
        $self->{messages} = ();
    }
}

sub info {
    my $self = shift;
    $self->add("INFO", @_);
}

sub notice {
    my $self = shift;
    $self->add("NOTICE", @_);
}

sub warning {
    my $self = shift;
    $self->add("WARNING", @_);
}

sub error {
    my $self = shift;
    $self->add("ERROR", @_);
}

sub debug {
    my $self = shift;
    $self->add("DEBUG", @_);
}

sub critical {
    my $self = shift;
    $self->add("CRITICAL", @_);
}

sub dump {
    my $self = shift;

    my $context = $self->{logname} ? sprintf("%s ", $self->{logname}) : "";

    foreach my $e (@{ $self->{messages} }) {
        printf STDERR (
            "%s:%s%s [%s] %s\n",
            $e->{timestamp}, $context, $e->{level}, $e->{tag},
            join(";", @{ $e->{arg} })
        );
    }
}

sub print {
    my $self   = shift;
    my $locale = shift;

    my $context = $self->{logname} ? sprintf("%s ", $self->{logname}) : "";

    foreach my $e (@{ $self->{messages} }) {
        if ($self->{locale}) {
            printf("%s:%s%s %s\n",
                $e->{timestamp}, $context, $e->{level},
                $self->{locale}->expand($e->{tag}, @{ $e->{arg} }));

        } else {
            printf("%s:%s%s [%s] %s\n",
                $e->{timestamp}, $context, $e->{level}, $e->{tag},
                join(";", @{ $e->{arg} }));
        }
    }
}

sub export {
    my $self = shift;

    my @buffer = ();
    my $context = $self->{logname} ? $self->{logname} : "";

    foreach my $e (@{ $self->{messages} }) {
        my @logentry = (
            $e->{timestamp}, $context, $e->{level}, $e->{tag}, $e->{module_id},
            $e->{parent_module_id},
            @{ $e->{arg} }
        );

        push @buffer, \@logentry;
    }

    return \@buffer;
}

# module_stack_push() creates a unique (autoincrement) identifier for the
# module that called the function, and saves it in module stack - an array
# of module ids
#
# module_stack_pop() removes one module id from the top of the stack
#
# This way, by calling module_stack_push when entering the module, and
# module_stack_pop when exiting, it is ensured that in module_stack there
# is a valid list of module ids that called the current module. On top of
# the stack is the current module id, and the next one is id of the parent
# module.

sub module_stack_push {
    my $self = shift;
    $self->{module_id}++;
    push @{ $self->{module_stack} }, $self->{module_id};
}

sub module_stack_pop {
    my $self = shift;
    pop @{ $self->{module_stack} };
}

1;

__END__


=head1 NAME

DNSCheck::Looger - Logger Subsystem

=head1 DESCRIPTION

Helper functions for logging support.

=head1 METHODS

new();

$logger->clear();

$logger->logname(I<string>);

$logger->add(I<level>, I<tag>, I<arg1>, I<arg2>, ..., I<argN>);

$logger->info(I<arg1>, I<arg2>, ..., I<argN>);

$logger->notice(I<arg1>, I<arg2>, ..., I<argN>);

$logger->warning(I<arg1>, I<arg2>, ..., I<argN>);

$logger->error(I<arg1>, I<arg2>, ..., I<argN>);

$logger->debug(I<arg1>, I<arg2>, ..., I<argN>);

$logger->critical(I<arg1>, I<arg2>, ..., I<argN>);

$logger->dump();

$logger->print();

$logger->export();

my @logmessages = $logger->export();

=head1 EXAMPLES

    use DNSCheck::Logger;

	my $logger = new DNSCheck::Logger;

	$logger->add("foo", 1, 2, 3);
	$logger->add("bar", 4, 5, 6);

	$logger->dump;

=cut
