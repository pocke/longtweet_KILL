# -*- coding: utf-8 -*-

# Copyright 2013, pocket
# Licensed MIT
# http://opensource.org/licenses/mit-license.php

class Message
  def to_show
    buf_str = body.gsub(/&(gt|lt|quot|amp);/){|m| {'gt' => '>', 'lt' => '<'    , 'quot' => '"', 'amp' => '&'}[$1] }
    buf_str = buf_str.tr("\n", ' ') if buf_str.count("\n") >= 3
    @to_show ||= buf_str.freeze
  end
end
