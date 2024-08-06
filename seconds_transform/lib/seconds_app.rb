def seconds_transform(s)
  return "1 minute" if s == 60
  year_in_secs = 365 * 24 * 60 * 60
  day_in_sec = 24 * 60 * 60
  hour_in_sec = 60 * 60
  minute_in_sec = 60
  days = s / (24 * 60 * 60) # 1 day = 24 hours, 1 hour = 60 minutes, 1 minute = 60 sec
  rest_sec = s % (24 * 3600)

  if s < 60 #seconds
    return "#{s} seconds"
  elsif s > minute_in_sec && s < hour_in_sec #minutes
    minute = s / minute_in_sec
    sec_rest = s % minute_in_sec
    return "#{minute} minutes and #{sec_rest} seconds"
  elsif s < day_in_sec && s > hour_in_sec # hours
    hour = s / hour_in_sec
    minute = (s % hour_in_sec) / 60
    remainder_sec = s % 60
    return "#{hour} hour, #{minute} minutes and #{remainder_sec} seconds"
  elsif s < year_in_secs && s > day_in_sec
    day = s / day_in_sec
    hour =  (s % day_in_sec) / hour_in_sec
    minute = ((s % day_in_sec) % hour_in_sec) / 60
    remainder_sec = s % 60
    return "#{day} days, #{hour} hour, #{minute} minutes and #{remainder_sec} seconds"

  end
end

# 365 days == 31_536_000 s
# 1 min == 60 s
# 60 min == 3600 s
#   1 hour == 60 min
# 1440 min == 86400 s
#   1 day == 24 hour
#   24 hour == 1440 min
# 1 year == 365 days
