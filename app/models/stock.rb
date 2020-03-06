class Stock < ApplicationRecord
	def self.new_lookup(ticker_symbol)
		client = IEX::Api::Client.new(publishable_token: 'Tpk_0afc48f949b74aabba3a146c1d70694e',
			secret_token: 'Tsk_9ee7470d068645d389d1ab8ffd75a723',
	        endpoint: 'https://sandbox.iexapis.com/v1')
		client.price(ticker_symbol)
    end
end
