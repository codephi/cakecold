component
        extends="core.app"
{

    this.componentType = 'view';

    function _init()
    {
        this.template = call('template', 'core.view.components', true);

        this.template.action = this.action;

        this.template.controller = this.controller;
    }
}
