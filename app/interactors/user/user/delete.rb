# frozen_string_literal: true

module User
  class User::Delete
    include Interactor

    def call
      user = ::User::User.find(context.id)

      if user.destroy
        context.user = user
      else
        context.fail!(error: 'error message')
      end
    end
  end
end