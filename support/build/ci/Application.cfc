component output=false {
	this.name = "Preside CI Test runner";

	this.mappings['/mxunit' ]       = ExpandPath( "../../../../mxunit" );
	this.mappings['/tests']         = ExpandPath( "../../tests" );
	this.mappings['/app']           = ExpandPath( "../../tests/resources/testSite" );
	this.mappings['/preside']       = ExpandPath( "../../../" );
	this.mappings['/coldbox']       = ExpandPath( "../../../system/externals/coldbox" );
	this.mappings['/org/cfstatic']  = ExpandPath( "../../../system/externals/cfstatic/org/cfstatic" );

	this.datasources.preside_test_suite = {
		  class            = 'org.gjt.mm.mysql.Driver'
		, connectionString = 'jdbc:mysql://localhost:3306/preside_test?characterEncoding=UTF-8&useUnicode=true'
		, username         = 'root'
		, password         = ''
	};

	application.dsn = "preside_test_suite";

	setting requesttimeout="600";
}