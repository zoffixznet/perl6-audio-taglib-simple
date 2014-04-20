use v6;

use Test;
use Audio::Taglib::Simple;

plan 2;

dies_ok({
	Audio::Taglib::Simple.new('non-existent-file.invalid');
}, 'non-existent file');

dies_ok({
	Audio::Taglib::Simple.new('t/error.t');
}, 'non-music file');
