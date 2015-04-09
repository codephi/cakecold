component {

    this.datasource = '';
    this.table = '';

    function init()
    {
        this.queryService = new Query();

        this.queryService.setDatasource(this.datasource);

        return this.queryService;
    }

    function result(){
        result = this.execute();
        return result;
    }


}
