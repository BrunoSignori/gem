require "spec_helper"

RSpec.describe Stringer do
  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end
  it "shortens strings" do
    expect(Stringer.minify("carryin a lot",6)).to eq("carryin...")
  end
  it "replaces strings" do
    expect(Stringer.replacify("I am the one","the","just")).to eq("I am just one")
  end
  it "insert words into an array" do
    expect(Stringer.tokenize("He who in the name")).to eq(["He","who","in","the","name"])
  end
  it "removes words" do
    expect(Stringer.removify("I am the one","the")).to eq("I am one")
  end

end

