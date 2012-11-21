local HOST = 'https://api.lessneglect.com/%s'

local log_event = function (PROJECT_CODE, PROJECT_SECRET, name, email, event)
    local event = {
        ['person[name]'] = name,
        ['person[email]'] = email,
        ['event[name]'] = event,
        ['event[klass]'] = 'actionevent'
    }
    local post_message = json.stringify(payload)
    return  http.request({
        method = "post",
        url = string.format(HOST, 'events'),
        headers = {
            ['Content-Type'] = "application/json"
        },
        auth = {PROJECT_CODE, PROJECT_SECRET},
        data = post_message
    })
end

return { log_event = log_event }