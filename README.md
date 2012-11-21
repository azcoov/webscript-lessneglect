##LessNeglect Module for Webscript.io

###Integration Example

    local ln = require('azcoov/webscript-lessneglect/ln.lua')
    local PROJECT_CODE = '<YOUR LESS NEGLECT PROJECT CODE>'
    local PROJECT_SECRET = '<YOUR LESS NEGLECT PROJECT SECRET>'

    ln.log_event(PROJECT_CODE, PROJECT_SECRET, 'name@example.com', 'John Sample', 'updated-profile');