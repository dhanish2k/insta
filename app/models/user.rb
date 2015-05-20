class User < ActiveRecord::Base
   #has_many   :places, :class_name=>'Place', :foreign_key=>"uid", :primary_key=> "uid"
	def self.create_with_omniauth(auth)
  		create! do |user|
            user.uid = auth["uid"]
            user.name = auth["info"]["name"]
            user.picture= auth["info"]["image"]
            user.token= auth["credentials"]["token"]
            user.expires=auth["credentials"]["expires"]
            #user.expires_at=Time.at(auth["credentials"]["expires_at"])
  		end
	end
end