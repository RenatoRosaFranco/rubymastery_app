 # frozen_string_literal: true

module Dashboard
  class ProfilesController < HomeController
    before_action :set_profile, only: [:edit, :update]

    def edit
    end

    def update
    end

    private

    def set_profile
    end

    def profile_params
      params.require(:profile)
        .permit()
    end
  end
end