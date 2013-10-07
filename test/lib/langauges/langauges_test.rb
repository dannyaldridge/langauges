describe langauges::Base do
  subject { langauges::Base }


  describe "Gets langauges page" do
    it "must have open "http://en.wikipedia.org/wiki/List_of_languages_by_number_of_native_speakers" " do
      Nokogiri.must_open("http://en.wikipedia.org/wiki/List_of_languages_by_number_of_native_speakers")
    end
  end

    describe "Gets the langauge table" do
    it "must have open the table with the class "wikitable sortable jquery-tablesorter" " do
      Nokogiri.must_open("http://en.wikipedia.org/wiki/List_of_languages_by_number_of_native_speakers")
    end
  end