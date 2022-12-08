const cds = require('@sap/cds');
const _ = require('lodash');
module.exports = (srv) => {
    console.log(`Service name: ${srv.name} is served at ${srv.path}`);

    srv.after('READ', 'InventoryDocuments', (documents, req) => {
        // return documents.map(function(aDocument){
        //     aDocument.documentStatus = 5;
        // })
      })
}