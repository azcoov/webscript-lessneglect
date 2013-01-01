local HOST = 'https://lessneglect.com/api/v2/%s'

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

local register_event = function (PROJECT_CODE, PROJECT_SECRET, name, email, event, id)
    local event = {
        ['person[name]'] = name,
        ['person[email]'] = email,
        ['person[external_identifier]'] = id,
        ['person[properties][created_at]'] = os.time()
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

return { log_event = log_event, register_event = register_event }