using InvCatalogService as service from '../../srv/cat-service';

annotate service.Invoices with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Invoice Number',
                Value: INVOICENUMBER,
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
            {
                $Type: 'UI.DataField',
                Label: 'Status',
                Value: Status,
            },
            {
                $Type: 'UI.DataField',
                Label: 'SO Number',
                Value: SONumber,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Type',
                Value: Type,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Type Text',
                Value: TypeText,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Reference Invoice',
                Value: ReferenceInvoice,
            },
            {
                $Type: 'UI.DataField',
                Label: 'SO Count',
                Value: SOCount,
            },
            {
                $Type: 'UI.DataField',
                Label: 'PO Count',
                Value: POCount,
            },
        ],
    },
    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Additional Details',
            ID    : 'AdditionalDetails',
            Target: 'DetailInvoice/@UI.FieldGroup#AdditionalDetails1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Items',
            ID    : 'Items',
            Target: 'Items/@UI.LineItem#Items',
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
);

annotate service.DetailInvoices with @(UI.FieldGroup #AdditionalDetails1: {
    $Type: 'UI.FieldGroupType',
    Data : [{
        $Type: 'UI.DataField',
        Value: ReferenceInvoice,
        Label: 'Reference Invoice',
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
