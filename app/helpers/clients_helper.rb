module ClientsHelper

  def add_message(content, client_id)
    ClientMessage.create :content => content, :client_id => client_id
  end

  def destroy_mesage
  end

  

end
