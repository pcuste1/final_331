public class jquine
{
    public static void main(String [] args)
    {
        char q = 34;
        String[] list = {
            "            ",
            "public class jquine",
            "{",
            "    public static void main(String [] args)",
            "    {",
            "        char q = 34;",
            "        String[] list = {",
            "        };",
            "        for(int i = 1; i < 7; i++)",
            "            {",
            "                System.out.println(list[i]);",
            "            }",
            "        for(int i = 0; i < 22; i++)",
            "            {",
            "                System.out.println(list[0] + q + list[i] + q + ',');",
            "            }",
            "        for(int i = 7; i < 22; i++)",
            "            {",
            "                System.out.println(list[i]);",
            "            }",
            "    }",
            "}",
        };
        for(int i = 1; i < 7; i++)
            {
                System.out.println(list[i]);
            }
        for(int i = 0; i < 22; i++)
            {
                System.out.println(list[0] + q + list[i] + q + ',');
            }
        for(int i = 7; i < 22; i++)
            {
                System.out.println(list[i]);
            }
    }
}
