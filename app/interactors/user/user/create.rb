# frozen_string_literal: true

module User
  class User::Create
    include Interactor

    delegate :params, to: :context

    def call
      user = ::User::User.new(params)

      if user.save
        context.user = user
      else
        context.fail!(error: user.errors)
      end
    end
  end
end