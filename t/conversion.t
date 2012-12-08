#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 2;

use Encode::BetaCode qw(:all);

{
    #Testing beta_decode.#
    my $input_text = << 'END';
*ma/qe su\ o( mona/zwn kai\ pisto\s a)/nqrwpos, kai\ th=s eu)sebei/as e)rga/ths, kai\
dida/xqhti eu)aggelikh\n politei/an, sw/matos doulagwgi/an, fro/nhma tapeino/n,
e)nnoi/as kaqaro/thta, o)rgh=s a)fanismo/n. a)ggareuo/menos, prosti/qei dia\ to\n
*ku/rion: a)posterou/menos, mh\ dika/zou: misou/menos, a)ga/pa: diwko/menos,
a)ne/xou: blasfhmou/menos, paraka/lei. nekrw/qhti th=| a(marti/a|, staurw/qhti tw=|
*qew=|: o(/lhn th\n me/rimnan meta/qes e)pi\ to\n *ku/rion, i(/na eu(reqh=|s o(/pou a)gge/lwn
muria/des, prwtoto/kwn panhgu/reis, a)posto/lwn qro/noi, profhtw=n proedri/ai,
skh=ptra patriarxw=n, martu/rwn ste/fanoi, dikai/wn e)/painoi.
END

    my $should_be_output = << 'END';
Μάθε σὺ ὁ μονάζων καὶ πιστὸς ἄνθρωπος, καὶ τῆς εὐσεβείας ἐργάτης, καὶ
διδάχθητι εὐαγγελικὴν πολιτείαν, σώματος δουλαγωγίαν, φρόνημα ταπεινόν,
ἐννοίας καθαρότητα, ὀργῆς ἀφανισμόν. ἀγγαρευόμενος, προστίθει διὰ τὸν
Κύριον: ἀποστερούμενος, μὴ δικάζου: μισούμενος, ἀγάπα: διωκόμενος,
ἀνέχου: βλασφημούμενος, παρακάλει. νεκρώθητι τῇ ἁμαρτίᾳ, σταυρώθητι τῷ
Θεῷ: ὅλην τὴν μέριμναν μετάθες ἐπὶ τὸν Κύριον, ἵνα εὑρεθῇς ὅπου ἀγγέλων
μυριάδες, πρωτοτόκων πανηγύρεις, ἀποστόλων θρόνοι, προφητῶν προεδρίαι,
σκῆπτρα πατριαρχῶν, μαρτύρων στέφανοι, δικαίων ἔπαινοι.
END
    is( beta_decode( 'greek', $input_text ),
        $should_be_output, 'beta code decoding works correctly' );

}

{
    #Testing beta_encode.#
    my $input_text = << 'END';
Ἐὰν ταῖς γλώσσαις τῶν ἀνθρώπων λαλῶ καὶ τῶν ἀγγέλων, ἀγάπην δὲ μὴ ἔχω,
γέγονα χαλκὸς ἠχῶν ἢ κύμβαλον ἀλαλάζον. καὶ ἐὰν ἔχω προφητείαν καὶ εἰδῶ
τὰ μυστήρια πάντα καὶ πᾶσαν τὴν γνῶσιν, καὶ ἐὰν ἔχω πᾶσαν τὴν πίστιν,
ὥστε ὄρη μεθιστάνειν, ἀγάπην δὲ μὴ ἔχω, οὐδέν εἰμι.
END

    my $should_be_output = << 'END';
*)ea\n tai=s glw/ssais tw=n a)nqrw/pwn lalw= kai\ tw=n a)gge/lwn, a)ga/phn de\ mh\ e)/xw,
ge/gona xalko\s h)xw=n h)\ ku/mbalon a)lala/zon. kai\ e)a\n e)/xw profhtei/an kai\ ei)dw=
ta\ musth/ria pa/nta kai\ pa=san th\n gnw=sin, kai\ e)a\n e)/xw pa=san th\n pi/stin,
w(/ste o)/rh meqista/nein, a)ga/phn de\ mh\ e)/xw, ou)de/n ei)mi.
END
    is( beta_encode( 'greek', 'Perseus', $input_text ),
        $should_be_output, 'beta code encoding works correctly' );
}
