class UserMailer < ActionMailer::Base
  default :from => "notifications@phonesalad.com"

   def order_confirmation(seller, buyer, order)
     @order = order
     @buyer = Profile.find_by_user_id(buyer.id)
     @seller = Profile.find_by_user_id(seller.user_id)
     mail(:to => "#{seller.paypalemail}", :subject => "Order placed on Phonesalad")
   end
   
   def listing_confirmation(listing)
     @listing = listing
     mail(:to => "#{listing.paypalemail}", :subject => "Your listing has been approved")
   
   end
   
   def listing_modification(listing)
      @listing = listing
      mail(:to => "#{listing.paypalemail}", :subject => "Modify your listing at phonesalad.com")

    end
     def new_comment(listing,user)
        @listing = listing
        @user = user
        mail(:to => "#{user.email}", :subject => "New comment on your listing on phonesalad.com")

      end
    
   
end
