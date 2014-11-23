def main
  q = 34.chr
  codeBlock = [
               "               ",
               "def main",
               "  q = 34.chr",
               "  codeBlock = [",
               "  ]",
               "  for i in 1..3",
               "    puts codeBlock[i]",
               "  end",
               "  for i in 0..16",
               "    puts codeBlock[0] + q + codeBlock[i] + q + ','",
               "  end",
               "  for i in 4..16",
               "    puts codeBlock[i]",
               "  end",
               "end",
               "",
               "main()",
  ]
  for i in 1..3
    puts codeBlock[i]
  end
  for i in 0..16
    puts codeBlock[0] + q + codeBlock[i] + q + ','
  end
  for i in 4..16
    puts codeBlock[i]
  end
end

main()
