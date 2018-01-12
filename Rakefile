#!/usr/bin/env rake

# -*- coding: utf-8 -*-
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'bundler/setup'
require 'rubygems'
require 'rubocop/rake_task'
require 'English'

$stdout.sync = true
$stderr.sync = true

def abort_on_failure(command, message = '')
  `#{command}`
  abort(message) unless $CHILD_STATUS.exitstatus.zero?
end

RuboCop::RakeTask.new(:ruby) do |task|
  task.fail_on_error = false
  task.requires = ['rubocop/formatter/checkstyle_formatter']
  task.formatters = ['RuboCop::Formatter::CheckstyleFormatter']
end

task :serve do
  desc 'run the HTTP endpoint'
  # TODO: start endpoint.rb
end

task test: ['ruby']
task default: ['serve']
