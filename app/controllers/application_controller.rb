class ApplicationController < ActionController::Base
  protect_from_forgery

  def invite_id_matches_user
    uid = session[:uid]
    iid = params[:invite_id]
    invt = Invite.find_by_id(iid)
    guest_id = invt.user.id
    if uid == guest_id
      return true
    else
      redirect_to :action=>'show_invites', :notice=>'You can not access that invite.'
      return false
    end
  end

  def cal_id_matches_user
    cid = params[:cal_id]
    cal = Calendar.find_by_id(cid)
    owner_id = cal.user.id
    if owner_id == session[:uid]
      return true
    else
      redirect_to :action=>'show_calendars', :notice=>'You can not access that item.'
      return false
    end
  end

  def login_required
    if session[:uid] #if there is a logged in user
      return true
    end #Otherwise redirect to login page
    redirect_to :controller => "bear_planner", :action=> "login", :notice=>"Please log in to view this page"
    return false 
  end
end
