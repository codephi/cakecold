component
        extends="controller.controller"
{

    function index()
    {

        this.view.template.set(controller='login');
        this.view.template.render();
    }
}
