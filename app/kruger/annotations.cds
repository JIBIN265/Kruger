using InvCatalogService as service from '../../srv/cat-service';
annotate service.Invoices with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'INVOICENUMBER',
                Value : INVOICENUMBER,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InvoiceDate',
                Value : InvoiceDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DueDate',
                Value : DueDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Amount',
                Value : Amount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Currency',
                Value : Currency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PONumber',
                Value : PONumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SONumber',
                Value : SONumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Type',
                Value : Type,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TypeText',
                Value : TypeText,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ReferenceInvoice',
                Value : ReferenceInvoice,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SOCount',
                Value : SOCount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BillToParty',
                Value : BillToParty,
            },
            {
                $Type : 'UI.DataField',
                Label : 'POCount',
                Value : POCount,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'INVOICENUMBER',
            Value : INVOICENUMBER,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'InvoiceDate',
            Value : InvoiceDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'DueDate',
            Value : DueDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Amount',
            Value : Amount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Currency',
            Value : Currency,
        },
    ],
);

