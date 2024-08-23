class ApidemoController < ApplicationController
    def index
        @datosapi = EasyBrokerApiService.fetch_properties
        # puts @properties.inspect
    end
  end