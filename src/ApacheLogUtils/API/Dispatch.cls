Class ApacheLogUtils.API.Dispatch Extends %CSP.REST
{

Parameter CHARSET = "utf-8";

// Parameter CONTENTTYPE = "application/json";

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
  <Route Url="/import" Method="post" Call="Import" />
</Routes>
}

ClassMethod Import() As %Status
{
	#dim %request As %CSP.Request

	set className = %request.Get("classname")
	set stream = %request.GetMimeData("file")
	set stream.LineTerminator = $char(10)
	$$$ThrowOnError(##class(ApacheLogUtils.utils.utils).LogGenerateURL(className, stream))
	return $$$OK
}

}
