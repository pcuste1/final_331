#!/usr/bin/perl -w

$q = chr(39);
@codeBlock = (
                '#!/usr/bin/perl -w',
                '',
                '$q = chr(34);',
                '@codeBlock = (',
                '                );',
                '',
                '    for($i=0;$i<4;$i++) {',
                '        print "$codeBlock[$i]\n";',
                '    }',
                '    for($i=0;$i<15;$i++) {',
                '        print "                $q$codeBlock[$i]$q,\n";',
                '    }',
                '    for($i=4;$i<15;$i++) {',
                '        print "$codeBlock[$i]\n";',
                '    }',
                );

    for($i=0;$i<4;$i++) {
        print "$codeBlock[$i]\n";
    }
    for($i=0;$i<15;$i++) {
        print "                $q$codeBlock[$i]$q,\n";
    }
    for($i=4;$i<15;$i++) {
        print "$codeBlock[$i]\n";
    }
