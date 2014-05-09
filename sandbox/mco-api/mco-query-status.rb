#!/usr/bin/env ruby
# vim: autoindent tabstop=2 shiftwidth=2 expandtab softtabstop=2 filetype=ruby
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed

# This example is the same as mco cli command:
# mco service status atd --with-identity openbus-nn1
 
require "mcollective"
  
include MCollective::RPC
   
mc = rpcclient "service"
mc.progress = false

mc.identity_filter "openbus-nn1"
    
printrpc mc.status :service => "atd"
