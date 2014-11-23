def main():
    q = chr(34)
    codeBlock = [
        "    ",
        "def main():",
        "    q = chr(34)",
        "    codeBlock = [",
        "        ]",
        "    for x in range(1,4):",
        "        print codeBlock[x]",
        "    for x in range(0,13):",
        "        print codeBlock[0] + q + codeBlock[x] + q + ','",
        "    for x in range(4,13):",
        "        print codeBlock[x]",
        "",
        "main()",
        ]
    for x in range(1,4):
        print codeBlock[x]
    for x in range(0,13):
        print codeBlock[0] + q + codeBlock[x] + q + ','
    for x in range(4,13):
        print codeBlock[x]

main()
