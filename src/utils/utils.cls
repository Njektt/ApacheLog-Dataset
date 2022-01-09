Class utils.utils
{

ClassMethod LogGenerate(className, path) As %Status
{
    set infSchema = $REPLACE($piece(className, ".",0, *-1), ".","_")
    set tableName = infSchema_"."_$piece(className, ".", *)
    set query = "CREATE TABLE "_tableName_" (id int NOT NULL AUTO_INCREMENT, ip varchar(255), time_request datetime, method varchar(255), action varchar(255), http varchar(255), status_code int, size int, url varchar(255), platform varchar(255)) WITH %CLASSPARAMETER DEFAULTGLOBAL = '^"_className_"', %CLASSPARAMETER MANAGEDEXTENT 0"
    d ##class(%SQL.Statement).%ExecDirect(,query)
    set del = ","
    set fileName = $ZDATETIME($h,-2)_tableName_".txt"
    set stream = ##class(%Stream.FileCharacter).%New()
    set sc = stream.LinkToFile(path)
    Set file = ##class(%File).%New("/irisdev/app/src/data/"_fileName)
    Do file.Open("WSN")
    set iter = 0

    while 'stream.AtEnd {
        set str = stream.ReadLine()
        set ip = $piece(str, " - - ", 1)
        set dateAction = $system.SQL.TOTIMESTAMP($piece($piece(str, "] ", 1), "[", *), "DD/MON/YYYY:HH:MI:SS Z")
        set method = $replace($piece(str, " ", 6), $char(34), "")
        set action = $piece(str, " ", 7)
        set http = $replace($piece(str, " ", 8), $char(34), "")
        set statusCode = $piece(str, " ", 9)
        set size = $piece(str, " ", 10)
        set url = $replace($piece(str, " ", 11), $char(34), "")
        set platform = $piece(str, $char(34), 6)
        set iter = $INCREMENT(iter)

        Do file.WriteLine(ip_del_dateAction_del_method_del_action_del_http_del_statusCode_del_size_del_url_del_platform)
    }

    set loadQuery = "LOAD DATA FROM FILE '/irisdev/app/src/data/"_fileName_"' INTO " _tableName_ "(ip, time_request, method, action, http, status_code, size, url, platform)"
    Set qHandle = ##class(%SQL.Statement).%ExecDirect(,loadQuery)
    d ##class(%Library.File).Delete("/irisdev/app/src/data/"_fileName)
    d $System.OBJ.Compile(className,"cuk")
    write "Records imported : "_iter,!
    write "Class name : "_className,!
    write "Table name : "_tableName
}

ClassMethod import()
{
    set sc = $System.OBJ.Compile("dc.data.teccod.*","cuk")
}

}
