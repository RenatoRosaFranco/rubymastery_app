# frozen_string_literal: true

module Company
  class Social::Update
    include Interactor

    delegate :params, to: :context

    def call
    end
  end
end