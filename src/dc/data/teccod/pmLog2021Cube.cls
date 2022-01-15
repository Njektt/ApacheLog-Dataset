/// 
Class dc.data.teccod.pmLog2021Cube Extends %DeepSee.CubeDefinition [ DependsOn = dc.data.teccod.pmLog2021, ProcedureBlock ]
{

/// Cube definition from Architect.
XData Cube [ XMLNamespace = "http://www.intersystems.com/deepsee" ]
{
<cube xmlns="http://www.intersystems.com/deepsee" name="pmLog2021Cube" displayName="pmLog2021Cube" disabled="false" abstract="false" sourceClass="dc.data.teccod.pmLog2021" namedFactNums="true" countMeasureName="%COUNT" bucketSize="8" bitmapChunkInMemory="false" precompute="0" disableListingGroups="false" enableSqlRestrict="false">
  <dimension name="action" disabled="false" hasAll="false" allCaption="All action" allDisplayName="action" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="action" disabled="false" sourceProperty="action" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="2">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="http" disabled="false" hasAll="false" allCaption="All http" allDisplayName="http" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="http" disabled="false" sourceProperty="http" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="3">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="ip" disabled="false" hasAll="false" allCaption="All ip" allDisplayName="ip" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="ip" disabled="false" sourceProperty="ip" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="4">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="method" disabled="false" hasAll="false" allCaption="All method" allDisplayName="method" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="method" disabled="false" sourceProperty="method" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="5">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="platform" disabled="false" hasAll="false" allCaption="All platform" allDisplayName="platform" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="platform" disabled="false" sourceExpression="$piece($piece(%source.platform, &quot;(&quot;, 2), &quot;; &quot;, 1)" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="6">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="statuscode" disabled="false" hasAll="false" allCaption="All statuscode" allDisplayName="statuscode" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="statuscode" disabled="false" sourceProperty="statuscode" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="7">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="timerequest" disabled="false" hasAll="false" allCaption="All timerequest" allDisplayName="timerequest" sourceProperty="timerequest" type="time" calendar="gregorian" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="Year" displayName="Year" disabled="false" timeFunction="Year" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="8">
      </level>
      <level name="MonthYear" displayName="MonthYear" disabled="false" timeFunction="MonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="9">
      </level>
      <level name="DayMonthYear" displayName="DayMonthYear" disabled="false" timeFunction="DayMonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="10">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="url" disabled="false" hasAll="false" allCaption="All url" allDisplayName="url" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="url" disabled="false" sourceProperty="url" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="11">
      </level>
    </hierarchy>
  </dimension>
  <measure name="size" disabled="false" sourceExpression="%source.size / 1000000" aggregate="SUM" type="number" hidden="false" searchable="false" factNumber="1">
  </measure>
</cube>
}

Parameter DOMAIN;

}

