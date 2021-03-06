# version.coffee
# Copyright 2014,2015 9165584 Canada Corporation <legal@fuzzy.io>
# All rights reserved.

fs = require 'fs'
path = require 'path'

getVersion = ->
  pkg = fs.readFileSync path.join(__dirname, '..', 'package.json')
  data = JSON.parse pkg
  data.version

module.exports = getVersion()
