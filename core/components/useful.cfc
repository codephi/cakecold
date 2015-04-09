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

    function loadComponent(type,name){
        path = expandPath('/' & type & '/' & name.replace('.','/') & '.cfc');

        if(fileExists(path) is 'YES')
            return createObject('component', type & '.' & name).init();
        else{

            if(type is 'controller')
                return {'error' = 404};

            return createObject('component', type & '.' & type).init();
        }

    }
}