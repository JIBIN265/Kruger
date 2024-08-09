using zkruger as my from '../db/data-model';
using {ZSD_SRA021_SRV as external} from './external/ZSD_SRA021_SRV';

service InvCatalogService {
    @readonly
    entity Books    as projection on my.Books;

    entity Invoices as
        projection on external.Invoices {
            *,
            Items : redirected to Items,
            DetailInvoice,
            Contacts
        };

    entity Items    as
        projection on external.Items {
            *
        };

}
