
fs = require 'fs'
path = require 'path'

cirruHtml = require 'cirru-html'

cirruHtml.setResolver (basePath, child, scope) ->
  dest = path.join (path.dirname basePath), child
  scope?['@filename'] = dest
  fs.readFileSync dest, 'utf8'

main = ->
  script = fs.readFileSync (path.join __dirname, '../index.cirru'), 'utf8'
  # index.cirru shoud base PWD, i.e. project root
  html = cirruHtml.render script, {'@filename': 'index.cirru'}
  fs.writeFileSync (path.join __dirname, '../build/index.html'), html
  console.log 'Wrote to build/index.html'

main()


jsWithkotlin = ->
  script = fs.readFileSync (path.join __dirname, '../js-kotlin.cirru'), 'utf8'
  # index.cirru shoud base PWD, i.e. project root
  html = cirruHtml.render script, {'@filename': 'js-kotlin.cirru'}
  fs.writeFileSync (path.join __dirname, '../build/js-kotlin.html'), html
  console.log 'Wrote to build/js-kotlin.html'

jsWithkotlin()


jsWithswift = ->
  script = fs.readFileSync (path.join __dirname, '../js-swift.cirru'), 'utf8'
  # index.cirru shoud base PWD, i.e. project root
  html = cirruHtml.render script, {'@filename': 'js-swift.cirru'}
  fs.writeFileSync (path.join __dirname, '../build/js-swift.html'), html
  console.log 'Wrote to build/js-swift.html'

jsWithswift()


kotlinWithswift = ->
  script = fs.readFileSync (path.join __dirname, '../kotlin-swift.cirru'), 'utf8'
  # index.cirru shoud base PWD, i.e. project root
  html = cirruHtml.render script, {'@filename': 'kotlin-swift.cirru'}
  fs.writeFileSync (path.join __dirname, '../build/kotlin-swift.html'), html
  console.log 'Wrote to build/kotlin-swift.html'

kotlinWithswift()