using InvCatalogService as service from '../../srv/cat-service';

annotate service.Invoices with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>InvoiceNumber}',
                Value: INVOICENUMBER,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Due Date',
                Value: DueDate,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Amount}',
                Value: Amount,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Currency}',
                Value: Currency,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Status}',
                Value: Status,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>SoNumber}',
                Value: SONumber,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Type}',
                Value: Type,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>TypeText}',
                Value: TypeText,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>ReferenceInvoice}',
                Value: ReferenceInvoice,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>SoCount}',
                Value: SOCount,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>PoCount}',
                Value: POCount,
            },
        ],
    },
    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : '{i18n>HeaderDetails}',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>BillingAmount}',
            ID    : 'AdditionalDetails',
            Target: 'DetailInvoice/@UI.FieldGroup#AdditionalDetails1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Billing Address',
            ID : 'BillingAddress',
            Target : '@UI.FieldGroup#BillingAddress',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Items',
            ID    : 'Items',
            Target: 'Items/@UI.LineItem#Items',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Additionals}',
            ID : 'Additionals',
            Target : '@UI.FieldGroup#Additionals',
        },
    ],
    UI.LineItem                  : [
        {
            $Type            : 'UI.DataField',
            Label            : 'Invoice Number',
            Value            : INVOICENUMBER,
            ![@UI.Importance]: #High,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Invoice Date',
            Value: InvoiceDate,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Due Date',
            Value: DueDate,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Amount',
            Value: Amount,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Currency',
            Value: Currency,
        },
    ],
    UI.HeaderFacets              : [{
        $Type : 'UI.ReferenceFacet',
        Label : 'Admin Details',
        ID    : 'AdminDetails',
        Target: '@UI.FieldGroup#AdminDetails',
    }, ],
    UI.FieldGroup #AdminDetails  : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: PONumber,
                Label: 'PO Number',
            },
            {
                $Type: 'UI.DataField',
                Value: InvoiceDate,
                Label: 'Invoice Date',
            },
            {
                $Type: 'UI.DataField',
                Value: BillToParty,
                Label: 'Bill To Party',
            },
        ],
    },
    UI.FieldGroup #BillingAddress : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : DetailInvoice.BillingAdressName1,
                Label : '{i18n>FirstName}',
            },
            {
                $Type : 'UI.DataField',
                Value : DetailInvoice.BillingAdressName2,
                Label : '{i18n>LastName}',
            },
            {
                $Type : 'UI.DataField',
                Value : DetailInvoice.BillingAdressStras,
                Label : '{i18n>Street}',
            },
            {
                $Type : 'UI.DataField',
                Value : DetailInvoice.BillingAdressCity,
                Label : '{i18n>City}',
            },
            {
                $Type : 'UI.DataField',
                Value : DetailInvoice.BillingAdressCountryKey,
                Label : '{i18n>Country}',
            },
            {
                $Type : 'UI.DataField',
                Value : DetailInvoice.BillingAdressPostalCode,
                Label : '{i18n>PostalCode}',
            },
        ],
    },
    UI.FieldGroup #Additionals : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : DetailInvoice.Incoterms,
                Label : '{i18n>Incoterms}',
            },
            {
                $Type : 'UI.DataField',
                Value : DetailInvoice.PaymentTerms,
                Label : '{i18n>PaymentTerms}',
            },
            {
                $Type : 'UI.DataField',
                Value : DetailInvoice.Carrier,
                Label : '{i18n>Carrier}',
            },
            {
                $Type : 'UI.DataField',
                Value : DetailInvoice.ContentType,
                Label : '{i18n>ContentType}',
            },
            {
                $Type : 'UI.DataField',
                Value : DetailInvoice.ReferenceInvoice,
                Label : '{i18n>ReferenceInvoice}',
            },
        ],
    },
    UI.SelectionFields : [
        INVOICENUMBER,
        PONumber,
        BillToParty,
        Status,
        InvoiceDate,
    ],
);

annotate service.DetailInvoices with @(UI.FieldGroup #AdditionalDetails1: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type : 'UI.DataField',
            Value : TotalAmount,
            Label : '{i18n>TotalAmount}',
        },
        {
            $Type : 'UI.DataField',
            Value : Currency,
            Label : '{i18n>Currency}',
        },
        {
            $Type : 'UI.DataField',
            Value : TotalItemAmount,
            Label : '{i18n>TotalItemAmount}',
        },
        {
            $Type : 'UI.DataField',
            Value : TotalFreightAmount,
            Label : 'Total Freight Amount',
        },
        {
            $Type : 'UI.DataField',
            Value : TotalTax,
            Label : '{i18n>TotalTax}',
        },
        {
            $Type : 'UI.DataField',
            Value : Balance,
            Label : '{i18n>Balance}',
        }, ],
}, );


annotate service.Items with @(UI.LineItem #Items: [
    {
        $Type: 'UI.DataField',
        Value: ID,
        Label: 'ID',
    },
    {
        $Type: 'UI.DataField',
        Value: Currency,
        Label: 'Currency',
    },
    {
        $Type: 'UI.DataField',
        Value: INVOICENUMBER,
        Label: 'Invoice Number',
    },
    {
        $Type: 'UI.DataField',
        Value: Name,
        Label: 'Name',
    },
    {
        $Type: 'UI.DataField',
        Value: Quantity,
        Label: 'Quantity',
    },
    {
        $Type: 'UI.DataField',
        Value: Status,
        Label: 'Status',
    },
    {
        $Type: 'UI.DataField',
        Value: TotalPrice,
        Label: 'Total  Price',
    },
    {
        $Type: 'UI.DataField',
        Value: Unit,
        Label: 'Unit',
    },
    {
        $Type: 'UI.DataField',
        Value: UnitPrice,
        Label: 'Unit Price',
    },
]);
annotate service.Invoices with {
    INVOICENUMBER @Common.Label : '{i18n>InvoiceNumber}'
};

annotate service.Invoices with {
    PONumber @Common.Label : '{i18n>PoNumber}'
};

annotate service.Invoices with {
    BillToParty @Common.Label : '{i18n>BillToParty}'
};

annotate service.Invoices with {
    Status @Common.Label : '{i18n>Status}'
};

annotate service.Invoices with {
    InvoiceDate @Common.Label : '{i18n>InvoiceDate}'
};

