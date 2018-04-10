def jean_michel_data(corpus, dico)
  string = corpus.split;
  i = 0;

  dico.each do |key|
    string.each do |var|
      if var == key
        i = i + 1;
      end
    end
    print "'#{key}' == #{i}, ";
    i = 0;
  end
end

file = File.open("Shakespeare.txt", "rb")
contents = file.read;

dico = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"];
jean_michel_data(contents, dico)