module Spree
  module Api
    class SlidesController < Spree::Api::BaseController
      skip_before_filter :check_for_user_or_api_key
      skip_before_filter :authenticate_user

      def index
        lang = I18n.locale || 'en'
        @slides = Spree::Slide.where(language: lang)
        respond_with(@slides)
      end

    end
  end
end