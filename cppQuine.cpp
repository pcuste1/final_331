// Most of this code was written by myself, but was improved using the example given here
// http://en.wikipedia.org/wiki/Quine_%28computing%29

#include <iostream>
#include <string>

using namespace std;

int main(int argc, char*argv[])
{
  char q = 34;
  string codeBlock[] = {
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
    "  for(int i = 1; i < 10; i++)",
    "    {",
    "      cout << codeBlock[i] << endl;",
    "    }",
    "  for(int i = 0; i < 25; i++)",
    "    {",
    "      cout << codeBlock[0] + q + codeBlock[i] + q + ',' << endl;",
    "    }",
    "  cout << codeBlock[0] + q + codeBlock[25] + q + ',' << endl;",
    "  for(int i = 10; i < 26; i++)",
    "    {",
    "      cout << codeBlock[i] << endl;",
    "    }",
    "  return 0;",
        "}"
  };
  for(int i = 1; i < 10; i++)
    {
      cout << codeBlock[i] << endl;
    }
  for(int i = 0; i < 25; i++)
    {
      cout << codeBlock[0] + q + codeBlock[i] + q + ',' << endl;
    }

  cout << codeBlock[0] + q + codeBlock[25] + q + ',' << endl;
  for(int i = 10; i < 26; i++)
    {
      cout << codeBlock[i] << endl;
    }
  return 0;
}
