require_relative 'lexiconomitron'

describe Lexiconomitron do 
	before :each do 
		@lexi = Lexiconomitron.new
	end

  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scoTt!")).to eq("grea sco!")
    end
  end

    describe "#shazam" do
    # it "reverses the letters within the words given an array of words" do
    #   expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sihT", "si", "a", "gnirob", "tset"])
    # end


    # it "reverses the letters within the words given an array of words and returns only the first and last" do
    #   expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sihT", "tset"])
    # end

    it "reverses the letters within the words given an array of words and returns only the first and last with t removed" do
      expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
    end

  end

    describe "#oompa_loompa" do
    it "removes from a given array all the words with more than 3 characters." do
      expect(@lexi.oompa_loompa(["if","you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
    end

    it "removes from a given array all the words with more than 3 characters.It also deletes the t." do
      expect(@lexi.oompa_loompa(["if","you", "wanna", "be", "my", "lover","Tet"])).to eq(["if", "you", "be", "my","e"])
    end

  end

end

