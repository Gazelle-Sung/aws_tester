class EtcController < ApplicationController
  def rank
    if !user_signed_in?
      redirect_to '/users/sign_in'
    else
      @level_ranks_medal = User.order('level DESC', 'current_exp DESC').limit(3)
      @level_ranks_other = User.order('level DESC', 'current_exp DESC').limit(20).offset(3)
      
      @pet_ranks_medal = Animal.select("user_id, count(*) as total").group("user_id").reverse_order.limit(3)
      @pet_ranks_other = Animal.select("user_id, count(*) as total").group("user_id").reverse_order.limit(20).offset(3)
      
      @custom_ranks_medal = CustomQuest.select("user_id, count(*) as total").group("user_id").order("total").reverse_order.limit(3)
      @custom_ranks_other = CustomQuest.select("user_id, count(*) as total").group("user_id").order("total").reverse_order.limit(20).offset(3)
      
      @coin_ranks_medal = User.order('coin DESC').limit(3)
      @coin_ranks_other = User.order('coin DESC').limit(20).offset(3)
    end
  end
  
  def friend
    if !user_signed_in?
      redirect_to '/users/sign_in'
    else
      @already_active_friends = Friend.where('sender_id = ? AND accept=?', current_user, true)
      @already_passive_friends = Friend.where('receiver_id = ? AND accept=?', current_user, true)
      @waiting_active_friends = Friend.where('sender_id = ? AND accept=?', current_user, false)
      @waiting_passive_friends = Friend.where('receiver_id = ? AND accept=?', current_user, false)
  
      @users = User.all
    end
    
  end
  
  def friend_request
    # friend/request로 submit(POST) 시 "receiver_id"로 친구 신청 받는 사람의 id 보내준다고 가정.
    @new_friend = Friend.new
    @new_friend.sender_id = current_user.id
    @new_friend.receiver_id = params[:receiver_id]
    @new_friend.accept = false
    @new_friend.save
    
    redirect_to '/friend'
  end
  
  def friend_accept
    # friend/accpet로 submit(POST) 시 "friend_id"로 friend의 id 보내준다고 가정.
    @new_friend = Friend.find(params[:friend_id])
    @new_friend.accept = true
    @new_friend.save
    
    redirect_to '/friend'
  end
end
