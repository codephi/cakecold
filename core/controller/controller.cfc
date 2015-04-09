component
        extends="core.app"
{
    this.componentType = 'controller';

    function _init()
    {

        this.model = loadComponent('model',this.controller).init();

        this.view = loadComponent('view',this.controller).init();

        if(this.model.existResult() is true)
            this.result = this.model.getResult();

        this.before();

        if (structKeyExists(this, this.action))
            invoke(this, this.action);

        this.after();
    }

}
