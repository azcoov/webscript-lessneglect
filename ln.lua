local HOST = 'https://api.lessneglect.com/%s'

local log_event = function (PROJECT_CODE, PROJECT_SECRET, name, email, event)
    local event = {
        ['person[name]'] = name,
        ['person[email]'] = email,
        ['event[name]'] = event,
        ['event[klass]'] = 'actionevent'
    }

    return  http.request({
        method = "post",
        url = string.format(HOST, 'events'),
        auth = {PROJECT_CODE, PROJECT_SECRET},
        data = event
    })
end

return { log_event = log_event }