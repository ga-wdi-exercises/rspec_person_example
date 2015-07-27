require_relative '../models/person'  # a reference to our code

describe Person do
  describe "Constructor" do
    before(:each) do
      @matt = Person.new("Matt")
    end

    it "should create a new instance of class Person" do
      expect(@matt).to be_an_instance_of(Person)
    end

    it "should have a name" do
      expect(@matt.name).to_not be_nil
    end

    it "should default #language to 'English'" do
      expect(@matt.language).to eq("English")
    end
  end

  describe "#greeting" do
    context "for default language (English)" do
      subject(:bob) { Person.new("Bob") }

      it "should offer a greeting in English" do
        expect(bob.greeting).to eql("Hello, my name is Bob.")
      end
    end

    context "when language is 'Italian'" do
      subject(:tony) { Person.new("Tony", "Italian") }

      it "should offer a greeting in Italian" do
        expect(tony.greeting).to eql("Ciao, mi chiamo Tony.")
      end
    end
  end
end
