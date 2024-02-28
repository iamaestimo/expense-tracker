require 'httparty'
require 'httplog'

class FetchRates < ApplicationJob
  self.queue_adapter = :good_job

  def perform
    # fetch rates
    response = HTTParty.get('https://open.er-api.com/v6/latest/USD')

    if response['result'] == "success"
      Rate.create(
        base_rate_name: response['base_code'],
        eur: response['rates']['EUR'],
        cad: response['rates']['CAD'],
        aud: response['rates']['AUD'],
        gbp: response['rates']['GBP']
        )
    end
  end
end
