# SAP CAP oData Mashups! Northwind Product Carbon Emissions Example

Did you know that you could use CAP to combine and transform data from an external oData service and other data sources into another extended oData?

This app demonstrates an example of this by adding carbon emissions data to the Northwind products master.

Draws some comparisons to how solutions and SAP S/4 HANA and carbon accounting systems exist together in a hybrid set up through CAP and SAP BTP

Uses this version of the Northwind service: https://services.odata.org/v2/northwind/northwind.svc/$metadata

File or Folder | Purpose
---------|----------
`app/` | Sample frontend data
`db/` | Mock data for emissions footprint
`srv/` | Contains extension to mashup Northwind oData with emissions data
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.
