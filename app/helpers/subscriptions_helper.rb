module SubscriptionsHelper

def all_members
  Member.find(:all).collect{|h| [h.id]}
end


def all_subscriptiontype
  SubscriptionSetting.find(:all).collect{|h| [h.subscription_type, h.id]}
end

end
