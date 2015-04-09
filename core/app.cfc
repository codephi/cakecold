component
    extends="core.components.useful"
{
    this.ini = false;

    function init()
    {
        this.config = call('config', 'config', true);

        this.controller = structKeyExists(url, 'controller') ? url.controller : this.config.controller;

        this.action = structKeyExists(url, 'action') ? url.action : this.config.action;

        this.template = call('template', 'core.view.components', true);

        this.template.action = this.action;

        this.template.controller = this.controller;

        return this;
    }

    function before(){}

    function after(){}

    function beforeRender(){}

    function afterRender(){}

    package function _controller(){
        $component = createObject('component', 'controller.' & this.controller).init();

        $component.before();

        if (structKeyExists($component, this.action))
            invoke($component, this.action);

        $component.after();
    }

    package function _model(){
        $component = createObject('component', 'model.' & this.controller).init();

        $component.before();

        if (structKeyExists($component, this.action))
            invoke($component, this.action);

        $component.after();
    }

     function start(){
         _controller();
         _model();
    }
}
