require 'client'

class ConnectionDiagnostic
  # perform_diagnostic
  # disconnects the client
  # tries to connect the client 3 times
  # if unsuccessful raise Error
  # if successful sends 'AT#UD' to client (diagnostic message)
  #   and receives from the client the diagnostic info
  #   this info should be accesible on the attribute info

  def initialize(client)
    @client = client
  end

  def perform_diagnostic
    @client.disconnect
    connect_to_client
    raise Exception, "Connection failed" unless @client.online_status
  end


  private

  def connect_to_client
    connection_tries = 0
    while @client.online_status == false && connection_tries < 3
      @client.connect '#morralla'
      connection_tries += 1
    end
  end

end