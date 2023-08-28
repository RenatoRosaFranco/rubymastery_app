# frozen_string_literal: true

module User
  class User::Find
    include Interactor

    delegate :id, to: :context

    def call
      context.user = ::User::User.find(context.id)
    end
  end
end