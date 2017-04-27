##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Pricing
      class V1 < Version
        ##
        # Initialize the V1 version of Pricing
        def initialize(domain)
          super
          @version = 'v1'
          @messaging = nil
          @phone_numbers = nil
          @voice = nil
        end

        def messaging(sid=:unset)
          if sid == :unset
            @messaging ||= MessagingList.new self
          else
            MessagingContext.new(self, sid)
          end
        end

        def phone_numbers(sid=:unset)
          if sid == :unset
            @phone_numbers ||= PhoneNumberList.new self
          else
            PhoneNumberContext.new(self, sid)
          end
        end

        def voice(sid=:unset)
          if sid == :unset
            @voice ||= VoiceList.new self
          else
            VoiceContext.new(self, sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::Pricing::V1>'
        end
      end
    end
  end
end