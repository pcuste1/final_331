#!/usr/bin/perl -w

$q = chr(39);
@codeBlock = (
                '#!/usr/bin/perl -w',
                '',
                '$q = chr(39);',
                '@codeBlock = (',
                '                );',
                '',
                '    for($i=16;$i<19;$i++) {',
                '        print "$codeBlock[$i]\n";',
                '    }',
                '    for($i=0;$i<101;$i++) {',
                '        print "                $q$codeBlock[$i]$q,\n";',
                '    }',
                '    for($i=19;$i<32;$i++) {',
                '        print "$codeBlock[$i]\n";',
                '    }',
                "               ",
                "def main",
                "  q = 34.chr",
                "  codeBlock = [",
                "  ]",
                "  for i in 33..43",
                "    puts codeBlock[i]",
                "  end",
                "  for i in 0..99",
                "    puts '            ' + q + codeBlock[i] + q + ','",
                "  end",
                "  for i in 44..61",
                "    puts codeBlock[i]",
                "  end",
                "end",
                "",
                "main()",
                "using System;",
                "using System.Collections.Generic;",
                "using System.Linq;",
                "using System.Text;",
                " ",
                "namespace Quine",
                "{",
                "    class csharpQuine",
                "    {",
                "        static void Main(string[] args)",
              	"        {",
            	"            string[] codeBlock = {",
            	"            };",
            	"            for(int i = 64; i < 73; i++)",
            	"            {",
            	"                Console.WriteLine(codeBlock[i]);",
            	"            }",
            	"            for(int i = 0; i < 102; i++)",
            	"            {",
            	'                Console.WriteLine("                     " + "\"" + codeBlock[i] + "\"" + ",");',
            	"            }",
            	"            for(int i = 73; i < 89; i++)",
            	"            {",
            	"                Console.WriteLine(codeBlock[i]);",
            	"            }",
            	"            return;",
            	"        }",
            	"    }",
            	"}",
    		"    ",
    		"#include <iostream>",
    		"#include <string>",
    		" ",
    		"using namespace std;",
    		" ",
    		"int main(int argc, char*argv[])",
    		"{",
    		"  char q = 34;",
    		"  string codeBlock[] = {",
    		"  };",
    		"  for(int i = 90; i < 93; i++)",
    		"    {",
    		"      cout << codeBlock[i] << endl;",
    		"    }",
    		"  for(int i = 0; i < 102; i++)",
    		"    {",
    		"      cout << '        ' + q + codeBlock[i] + q + ',' << endl;",
    		"    }",
    		"  cout << codeBlock[0] + q + codeBlock[25] + q + ',' << endl;",
    		"  for(int i = 93; i < 102; i++)",
    		"    {",
    		"      cout << codeBlock[i] << endl;",
    		"    }",
    		"  return 0;",
        	"}",
        	"    ",
        	"def main():",
        	"    q = chr(34)",
        	"    codeBlock = [",
        	"        ]",
        	"    for x in range(0,4):",
        	"        print codeBlock[x]",
        	"    for x in range(0,131):",
        	"        print '                ' + q + codeBlock[x] + q + ','",
        	"    for x in range(4,15):",
        	"        print codeBlock[x]",
        	"",
        	"main()",
                );

    for($i=16;$i<19;$i++) {
        print "$codeBlock[$i]\n";
    }
    for($i=0;$i<100;$i++) {
        print "                $q$codeBlock[$i]$q,\n";
    }
    for($i=19;$i<32;$i++) {
        print "$codeBlock[$i]\n";
    }