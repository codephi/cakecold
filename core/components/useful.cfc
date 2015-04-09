component
{
    function call(call, type, return_ = false)
    {
        if (return_)
            return createObject('component', type & '.' & call);

        variables[call] = createObject('component', type & '.' & call);
    }

    function debug(obj, $abort = false)
    {
        writeDump(obj);
        if ($abort)
                abort;
    }

    function extract(obj)
    {
        for(key in obj)
        variables[key] = obj[key];
    }
}