# -*- coding: utf-8 -*-

Plugin.create(:longtweet_KILL) do

  filter_show_filter do |msgs|
    msgs.each do |msg|
      val = msg[:message]
      if val.count("\n") >= 3 then
        val = val.gsub("\n", " ")
        msg[:message] = val
      end
    end
    [msgs]
  end

end
