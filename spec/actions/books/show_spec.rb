# frozen_string_literal: true

RSpec.describe Bookshelf::Actions::Books::Show do
  subject(:action) do
    Bookshelf::Actions::Books::Index.new
  end

  it "returns a successful JSON response" do
    response = subject.call(id: "23", "HTTP_ACCEPT" => "application/json")

    expect(response).to be_successful
    expect(response.headers["Content-Type"]).to eq("application/json; charset=utf-8")
  end
end
