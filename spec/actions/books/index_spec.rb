# frozen_string_literal: true

RSpec.describe Bookshelf::Actions::Books::Index do
  subject(:action) do
    Bookshelf::Actions::Books::Index.new
  end

  it "returns a successful response with empty params" do
    response = action.call({})
    expect(response).to be_successful
  end
end
