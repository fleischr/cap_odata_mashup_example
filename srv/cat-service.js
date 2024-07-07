const cds = require('@sap/cds')

module.exports = async (srv) => {
    const NorthwindOdata = await cds.connect.to('northwind')
    const northwindEntities = ['Categories','CustomerDemographics','Customers']

    srv.on(['READ','QUERY'],northwindEntities, async(req) => {
        console.log('re-exposing typical northwind data...')
    })
    srv.on(['READ','QUERY'],'ProductsWithCO2e', async(req) => {
        console.log('Exposing product data with carbon emissions')
        //let northindQuery = req.query
        let northindQuery = SELECT.from('Products');
        //northindQuery.from.ref = ["Products"]
        //console.log(JSON.stringify(northindQuery))
        let products = await NorthwindOdata.run(northindQuery)
        let productsCO2eQuery = SELECT.from('CO2eByProduct').where({ ID : products.ProductID })
        const tx = cds.transaction(req);
        //TODO join this data
        //let productsCO2eData = tx.run(productsCO2eQuery);
        //console.log(productsCO2eData)
        return products
    })
    srv.on(['READ','QUERY'],'OrdersDetailsWithCO2e', async(req) => {
        console.log('Exposing order data with carbon emissions')
    })
}
