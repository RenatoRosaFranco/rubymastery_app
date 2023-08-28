# frozen_string_literal: true

module Dashboard
  class AccountsController < HomeController
    before_action :set_account, only: [:edit, :update, :destroy]

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def set_account
    end

    def account_params
      params.require(:account)
        .permit()
    end
  end
end