# -*- encoding : utf-8 -*-
# Load the rails application
Time::DATE_FORMATS[:ru_datetime] = "%Y.%m.%d в %k:%M:%S"
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Rts2Diplom::Application.initialize!
