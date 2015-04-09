component
        extends="model.model"
{

    function index()
    {
        sql = this.query.setSQL("SELECT * FROM #this.table#");
        this.setResult(sql.execute().getResult());
    }


}
