#write your code here
ay = "ay"
def translate do (str)

  if str[0].count "aeiou"
    str = str + ay
  elsif str[1].count "aeiou"
    str = str[1..] + str[0] + ay
  elsif str[2].count "aeiou"
    str = str[2..] + str[0,1] + ay
  end

end



describe "#translate" do



  it "translates two words" do
    s = translate("eat pie")
    expect(s).to eq("eatay iepay")
  end

  it "translates a word beginning with three consonants" do
    expect(translate("three")).to eq("eethray")
  end

  it "counts 'sch' as a single phoneme" do
    s = translate("school")
    expect(s).to eq("oolschay")
  end

  it "counts 'qu' as a single phoneme" do
    s = translate("quiet")
    expect(s).to eq("ietquay")
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    s = translate("square")
    expect(s).to eq("aresquay")
  end

  it "translates many words" do
    s = translate("the quick brown fox")
    expect(s).to eq("ethay ickquay ownbray oxfay")
  end

  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
  # * retain the punctuation from the original phrase

end
