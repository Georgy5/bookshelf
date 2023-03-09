# frozen_string_literal: true

module Bookshelf
  module Actions
    module Books
      class Index < Bookshelf::Action
        def handle(*, response)
          books = [
            { title: "Test Driven Development" },
            { title: "Practical Object-Oriented Desin in Ruby" }
          ]

          response.format = :json
          response.body = books.to_json
        end
      end
    end
  end
end
