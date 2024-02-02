const cds = require('@sap/cds');
const {Books} = cds.entities;
const db = cds.connect.to('db');


module.exports = cds.service.impl(srv => {
        srv.after('READ','Books',capitalizename);
        //  srv.before('READ','Order_Items',capitalizeitem);
     });

     async function capitalizename (req){
      console.log("hello");
      let db_data = "SELECT * " +
      "FROM MY_BOOKSHOP_BOOKS as header " +
      "WHERE header.ID = '" + 1 + "'";
       let content = await cds.run(db_data);
       console.log(content);
        
     }