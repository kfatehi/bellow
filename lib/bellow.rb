require "bellow/version"

require 'prowl'
require 'ruby-notify-my-android'

module Bellow
  def self.notify(users, app_name, message)
    users.each do |user, services|
      if key = services[:prowl]
        prowl = Prowl.new(:apikey => key, :application => app_name)
        prowl.add(:event => message)
      end
      if key = services[:nma]
        NMA.notify do |n|
          n.apikey = key
          n.priority = NMA::Priority::MODERATE
          n.application = app_name
          n.event = "Notification"
          n.description = message
        end
      end
    end
  end
end