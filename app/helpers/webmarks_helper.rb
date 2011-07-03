module WebmarksHelper
  
  def find_my_webmarks(category)
    return Webmark.find_all_by_category_and_user_id(category, current_user.id)
  end
  
  def find_all_webmarks(category)
    return Webmark.find_all_by_category_and_public(category, true)
  end
  
  def getUserName(user_id)
    return User.find_by_id(user_id).login
  end
  
end
