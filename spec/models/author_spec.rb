require "rails_helper"

RSpec.describe Author, :type => :model do
  let(:author_last_name_only) { Fabricate.build(:author, first_name: nil) }
  let(:author_first_name_only) { Fabricate.build(:author, last_name: nil) }
  let(:author) { Fabricate.build(:author) }

  it "requires a first name" do
    expect(author_last_name_only).not_to be_valid
    expect(author_last_name_only.errors[:first_name].any?).to be_truthy
  end

  it "requires a last name" do
    expect(author_first_name_only).not_to be_valid
    expect(author_first_name_only.errors[:last_name].any?).to be_truthy
  end

  describe "#full_name" do
    it "returns the full name of the author" do
      expect(author.full_name).to eq(author.first_name + " " + author.last_name)
    end
  end
end
