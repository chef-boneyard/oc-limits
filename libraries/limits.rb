#
# Cookbook Name:: oc-limits
# Libraries:: limits
#
# Author: Paul Mooring <paul@getchef.com>
# Copyright (c) 2014, Chef Software, Inc <legal@getchef.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

class Chef::Recipe::LimitsHelpers
  # upstart pukes if you give it a limit it doesn't know, so it needs to be filtered
  @upstart_limits = [
    'as',
    'core',
    'cpu',
    'data',
    'fsize',
    'memlock',
    'msgqueue',
    'nice',
    'nofile',
    'nproc',
    'rss',
    'rtprio',
    'sigpending',
    'stack'
  ]

  def self.filter_limits(limits)
    limits.select do |k, v|
      @upstart_limits.include?(k)
    end
  end
end
