require 'sensor'

# Alarm uses Sensor
# to receive a temperature and activate 
# itself if this temperature is not in a 
# predefined RANGE

class Alarm

  def initialize(sensor)
    @sensor = sensor
  end
  
  def detect_temperature
    @sensor.get_value > 60
  end

end