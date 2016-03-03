require "metric/version"

os = RUBY_PLATFORM
text =  "Unsupported OS! If you are using a Operating System that is not Linux, please try out the Gem metric_ext by nishanth" 

if os.include? "linux"
  require "metric/linux"
else
   puts text
end
