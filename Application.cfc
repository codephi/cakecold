component {

    this.name = "myApplication";
    this.applicationTimeout = CreateTimeSpan(0, 0, 0, 1); //10 days
    this.datasource = "intranetsss";

    this.sessionManagement = true;
    this.sessionTimeout = CreateTimeSpan(0, 0, 30, 0); //30 minutes
    this.customTagPaths = [ expandPath('/myAppCustomTags') ];
    this.mappings = {
        "/core" = expandPath('/desenvolvimento/_PROGRAMACAO/assis/core'),
        "/controller" = expandPath('/desenvolvimento/_PROGRAMACAO/assis/controller'),
        "/model" = expandPath('/desenvolvimento/_PROGRAMACAO/assis/model'),
        "/view" = expandPath('/desenvolvimento/_PROGRAMACAO/assis/view'),
        "/webroot" = expandPath('/desenvolvimento/_PROGRAMACAO/assis/webroot'),
        "/config" = expandPath('/desenvolvimento/_PROGRAMACAO/assis/config')
    };

    // see also: http://help.adobe.com/en_US/ColdFusion/10.0/CFMLRef/WSc3ff6d0ea77859461172e0811cbec22c24-750b.html
    // see also: http://help.adobe.com/en_US/ColdFusion/10.0/Developing/WSED380324-6CBE-47cb-9E5E-26B66ACA9E81.html

    function onApplicationStart() {
        application.dsn = 'intranet';        
        return true;
    }

    function onSessionStart() {}

    // the target page is passed in for reference, 
    // but you are not required to include it
    function onRequestStart( string targetPage ) {
        if( structKeyExists(url,'reinicia')){
            onApplicationStart();
        }
        
        new core.app().start();
    }

    function onRequest( string targetPage ) {
        include arguments.targetPage;
    }
		
    function onRequestEnd() {}

    function onSessionEnd( struct SessionScope, struct ApplicationScope ) {}

    function onApplicationEnd( struct ApplicationScope ) {}

//    function onError( any Exception, string EventName ) {
//        writeDump(Exception);
//        writeDump(EventName);
//        abort;
//    }

}	