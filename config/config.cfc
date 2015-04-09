component{

    this.path = {
        webroot = ExpandPath( "./" ) & 'webroot',
        controller = ExpandPath( "./" ) & 'controller',
        view = ExpandPath( "./" ) & 'view'
    };

    this.controller = 'index';

    this.action = 'index';

    this.database = {
        'datasource' = '[yourDataSource]',
        'prefix' = '[tablePrefix]',
        'uppercase' = true
    };

    this.table = '';

    function init(){
        this.controller = structKeyExists(url, 'controller') ? url.controller : this.controller;

        this.action = structKeyExists(url, 'action') ? url.action : this.action;

        this.table = this.database.uppercase ? ucase(this.database.prefix & this.controller) : this.database.prefix & this.controller;

        this.datasource = this.database.datasource;
    }
}