module StoreCounter

  def update(session)
    if session[:store_counter].nil?
      session[:store_counter] = 0
    else
      session[:store_counter] += 1
    end
  end

  def reset(session)
    session[:store_counter] = 0
  end

end