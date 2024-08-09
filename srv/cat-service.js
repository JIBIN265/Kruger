const cds = require("@sap/cds");
const { SELECT, INSERT, UPDATE } = cds.ql;

class InvCatalogService extends cds.ApplicationService {
    async init() {
        const {
            Invoices,
            Items
        } = this.entities;

        const db = await cds.connect.to("db");
        const ecc = await cds.connect.to('ZSD_SRA021_SRV');
     
        this.on('READ', [Invoices,Items], async req => {
            return ecc.run(req.query);
        });
    


        return super.init();
    }
}

module.exports = InvCatalogService;