class EmailapiController < ApplicationController

	def index
	end

	def subscribe

    @list_id = ENV["mailchimp_list_id"]
    gb = Gibbon::API.new

    gb.lists.subscribe({
      :id => @list_id,
      :email => {:email => params[:email][:address]}
      })

	end

end
