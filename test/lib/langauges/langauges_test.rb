describe Langauges::Base do
  subject { Langauges::Base }


  describe "retrieving Wiki page" do
    it "must have a get_document method" do
      subject.must_respond_to(:get_document)
    end
  end

  describe "retrieving the first column in the table" do
    it "must have 'class=wikitable sortable jquery-tablesorter'" do
      subject.must_respond_to(column.at(th[1]))
    end
  end

  describe "puts all the Langauges in an array" do
    it "must have over 20 langauges" do
      array.count > 50
    end
  end



end
