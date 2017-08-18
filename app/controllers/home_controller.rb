class HomeController < ApplicationController
  def login
    
  end
  
  
  def main
    if !user_signed_in?
      redirect_to '/users/sign_in'
    else
      @menus = Menu.all
      
      @titles = Title.all
      
      #current_time = Time.now + 60 * 60 * 9
      current_day = DateTime.now.beginning_of_day
    
      @custom_quests = CustomQuest.where('user_id = ? AND due_time >= ?', current_user, current_day)
    
      @daily_quests = DailyQuest.where('user_id = ? AND created_at > ?', current_user, current_day)
      if @daily_quests.empty?
        # 오늘 만들어진 데일리퀘스트가 없을 때 새로 만들어 디비에 넣고 띄워준다.
        @new_daily_quest = DailyQuest.new
        @new_daily_quest.user_id = current_user.id
        @new_daily_quest.content = "칭호를 눌러 선택하기"
        # 데일리퀘스트의 내용을 랜덤으로 넣어주는 부분 아직 안 함!!!!!
        @new_daily_quest.did = false
        @new_daily_quest.save
      end
      @party_partners = PartyPartner.where(:party_partners => { :user_id => current_user })
    end
  end
  
  def new_quest
    
    current_day = Date.today + params[:date].to_i + 1
    @new_custom_quest = CustomQuest.new
    @new_custom_quest.user_id = current_user.id
    @new_custom_quest.due_time = current_day
    @new_custom_quest.content = params[:Quest]
    @new_custom_quest.did = false
    @new_custom_quest.save
    
    redirect_to '/main'
    
  end
  
  def complete_custom_quest
    #@complete_custom_quest = CustomQuest.where(:custom_quests => { :id => params[:custom_id] })
    #@complete_custom_quest[0].did = true
    #@complete_custom_quest[0].save
 
    @complete_custom_quest = CustomQuest.find(params[:custom_id])
    @complete_custom_quest.did = true
    @complete_custom_quest.save
    
    current_user.current_exp += (10 + current_user.level*2)
    
    while(true)
      if current_user.current_exp >= current_user.need_exp
        current_user.level +=1
        current_user.current_exp = current_user.current_exp - current_user.need_exp
        current_user.need_exp = current_user.level * 2 + 18
      else
        break;
      end
    end
    
    current_user.coin += rand(5..7)*10
    current_user.save
    
    redirect_to '/main'
    
  end
  
  def complete_daily_quest
    @complete_daily_quest = DailyQuest.find(params[:daily_id])
    @complete_daily_quest.did = true
    @complete_daily_quest.save
    
    current_user.current_exp += (15 + current_user.level*3)
    
    while(true)
      if current_user.current_exp >= current_user.need_exp
        current_user.level +=1
        current_user.current_exp = current_user.current_exp - current_user.need_exp
        current_user.need_exp = current_user.level * 2 + 18
      else
        break;
      end
    end
    
    current_user.coin += rand(5..7)*10
    current_user.save

    
    redirect_to '/main'
    
  end
  
  def complete_party_quest
    @complete_party_quest = PartyPartner.find(params[:party_id])
    @complete_party_quest.did = true
    @complete_party_quest.save
    
    current_user.current_exp += (30 + current_user.level*4)
    
    while(true)
      if current_user.current_exp >= current_user.need_exp
        current_user.level +=1
        current_user.current_exp = current_user.current_exp - current_user.need_exp
        current_user.need_exp = current_user.level * 2 + 18
      else
        break;
      end
    end
    
    current_user.coin += rand(5..7)*10
    current_user.save
    
    redirect_to '/main'
  end
  

  
  def map
    if !user_signed_in?
      redirect_to '/users/sign_in'
    else
      
    end
    
  end
  
  def move_island
    #유저가 티켓 가지고 있는지 확인해야함
    
    current_user.island = params[:move_island]
    current_user.save
    
    sleep 5.1
    
    redirect_to '/main'
  end
  
  def bag_item
    if !user_signed_in?
      redirect_to '/users/sign_in'
    else
      @hats = Hat.where(:hats =>{ :user_id => current_user })
      @bags = Bag.where(:bags =>{ :user_id => current_user })
      @tickets = Ticket.where(:tickets =>{ :user_id => current_user })
      @dresses = Dress.where(:Dresses =>{ :user_id => current_user })
      @menus = Menu.all
    end
    
  end
  
  def wearing_item
    
    current_user.hat = params[:hat]
    current_user.dress = params[:clothes]
    current_user.bag = params[:bag]
    current_user.save
    
    redirect_to '/bag_item'
    
  end
  
  
  
  def pet
    if !user_signed_in?
      redirect_to '/users/sign_in'
    else
      @menus = Menu.all
      @animals = Animal.all
    end
  end
  
  #칭호 변경
  def change_title
    current_user.title_name = params[:title]
    current_user.save
    
    redirect_to '/main'
  end
  
  def selecting_pet
    current_user.pet = params[:pet]
    current_user.save
    
    redirect_to '/pet'
    
  end
  
  def shop
    if !user_signed_in?
      redirect_to '/users/sign_in'
    else
      
    end
    
  end
  
  def setting
    if !user_signed_in?
      redirect_to '/users/sign_in'
    else
    end
    
  end
end
