# frozen_string_literal: true

module User
  class User::Update
    include Interactor

    def call
      user = ::User::User.find(params[:id])

      if user.update(context.params)
        context.user = user
      else
        context.fail!(error: '')
      end
    end
  end
end