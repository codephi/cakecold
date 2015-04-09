component
        extends="core.app"
{
    this.componentType = 'model';

    function _init()
    {
        this.db = call('db', 'core.model.components', true);

        if (!structKeyExists(this, 'datasource'))
            this.datasource = this.config.datasource;

        this.db.datasource = this.datasource;

        if (!structKeyExists(this, 'table'))
            this.table = this.config.table;

        this.db.table = this.table;

        this.uppercase = this.config.database.uppercase;

        this.query = this.db.init();

        this.before();

        if (structKeyExists(this, this.action))
            invoke(this, this.action);

        this.after();

    }

    function setResult($result){
        this.result = $result;
    }

    function getResult($result){
        if(structKeyExists(this,'result'))
            return this.result;
    }

    function existResult(){
        if(structKeyExists(this,'result'))
            return true;

        return false;
    }

}
