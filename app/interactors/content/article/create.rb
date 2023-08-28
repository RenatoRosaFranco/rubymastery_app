# frozen_string_literal: true

module Content
  class Article::Create
    include Interactor

    delegate :params, to: :context

    def call
    end
  end
end