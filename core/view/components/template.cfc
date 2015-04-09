component
        extends="core.app"
{

    this.basicArgs = {};

    function set(action = this.action, controller = this.controller)
    {
        this.action = action;
        this.controller = controller;
    }

    function render($args = {})
    {
        extract($args);

        this.localTemplate = '/view/templates/' & this.controller & '/' & this.action & '.cfm';

        savecontent variable='content' {
            include '#this.localTemplate#';
        }

        writeOutput(content);

        this.afterRender();
    }


}
