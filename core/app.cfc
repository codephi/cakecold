component
        extends="core.components.useful"
{
    function init()
    {
        this.config = call('config', 'config', true);

        this.config.init();

        this.controller = this.config.controller;

        this.action = this.config.action;

        this.mvcInit();

        return this;
    }

    function mvcInit()
    {
        if (structKeyExists(this, 'componentType'))
            switch (this.componentType) {
                case 'controller':
                    this.initController();
                        break;
                case 'model':
                    this.initModel();
                        break;
                case 'view':
                    this.initView();
                        break;
            }
    }

    function initController()
    {
        this._init();
    }

    function initModel()
    {
        this._init();
    }

    function initView()
    {
        this._init();
    }

    function start()
    {
        this.currentController = loadComponent('controller', this.controller);
        if (structKeyExists(this.currentController, 'error'))
            debug(this.currentController.error, true);
    }

    /*
    * Ghosts methods
    */
    function _init()
    {}

    function before()
    {}

    function after()
    {}

    function beforeRender()
    {}

    function afterRender()
    {}
}
