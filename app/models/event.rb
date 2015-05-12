class Event < ActiveRecord::Base

  validates :event_name, :presence => true, 
  					:length => { :maximum => 100 }

  validates :event_summary, :presence => true, 
  					:length => { :maximum => 500 }

  validates :event_band_info, :presence => true, 
  					:length => { :maximum => 500 }

  validates :event_info, :presence => true, 
  					:length => { :maximum => 500 }

  validates :event_address, :presence => true, 
            :length => { :maximum => 100}          

 	validates	:event_venue, :presence => true, 
            :length => { :maximum => 100}   

  validates :event_city, :event_state, :event_country, :event_date, :event_contact_name, 
        		:event_contact_email,:company_name, :company_city, :event_description, 
        		:compensation_details, :number_of_bands_needed, :event_time, presence: true

  validates :event_contact_phone,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }

  geocoded_by :event_address
  after_validation :geocode, :if => :event_address_changed?


end
