using zkruger as my from '../db/data-model';
using {ZSD_SRA021_SRV as external} from './external/ZSD_SRA021_SRV';

service InvCatalogService {

    entity Invoices      as
        projection on external.Invoices {
            *,
            Items         : redirected to Items,
            DetailInvoice : redirected to DetailInvoices,
            Contacts      : redirected to Contacts
        };

    entity Items         as
        projection on external.Items {
            *
        };

    entity DetailInvoices as
        projection on external.DetailInvoices {
            *
        };

    entity Contacts      as
        projection on external.Contacts {
            *
        };


}
