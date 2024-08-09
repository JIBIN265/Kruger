/* checksum : ea6718b81599090964ab0bd76feb6b52 */
@cds.external              : true
@m.IsDefaultEntityContainer: 'true'
@sap.supported.formats     : 'atom json xlsx'
service ZSD_SRA021_SRV {};

@cds.external        : true
@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity ZSD_SRA021_SRV.Descriptor {
      @sap.unicode       : 'false'
      @sap.label         : 'Key'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
  key ![key]     : Integer not null;

      @sap.unicode       : 'false'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
      number     : Integer;

      @sap.unicode       : 'false'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
      numberUnit : LargeString;

      @sap.unicode       : 'false'
      @sap.label         : 'Info'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
      info       : LargeString;

      @m.FC_TargetPath   : 'SyndicationTitle'
      @m.FC_KeepInContent: 'true'
      @sap.unicode       : 'false'
      @sap.label         : 'InfoStatus'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
      infoStatus : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.searchable      : 'true'
@sap.pageable        : 'false'
@sap.content.version : '1'
entity ZSD_SRA021_SRV.Customers {
      @sap.unicode       : 'false'
      @sap.label         : 'Customer Id'
  key CustomerID   : String(10) not null;

      @m.FC_TargetPath   : 'SyndicationTitle'
      @m.FC_KeepInContent: 'true'
      @sap.unicode       : 'false'
      @sap.label         : 'CustomerName'
      @sap.creatable     : 'false'
      CustomerName : String(35);

      @cds.ambiguous     : 'missing on condition?'
      Invoices     : Association to many ZSD_SRA021_SRV.Invoices {};
};

@cds.external        : true
@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.searchable      : 'true'
@sap.content.version : '1'
entity ZSD_SRA021_SRV.Invoices {
      @sap.unicode       : 'false'
      @sap.label         : 'INVOICENUMBER'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
  key INVOICENUMBER    : String(10) not null;

      @odata.Type        : 'Edm.DateTime'
      @odata.Precision   : 7
      @sap.unicode       : 'false'
      @sap.label         : 'InvoiceDate'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      InvoiceDate      : Timestamp;

      @odata.Type        : 'Edm.DateTime'
      @odata.Precision   : 7
      @sap.unicode       : 'false'
      @sap.label         : 'DueDate'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      DueDate          : Timestamp;

      @sap.unicode       : 'false'
      @sap.unit          : 'Currency'
      @sap.label         : 'Amount'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      Amount           : Decimal(23, 4);

      @sap.unicode       : 'false'
      @sap.label         : 'Currency'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.semantics     : 'currency-code'
      Currency         : String(5);

      @sap.unicode       : 'false'
      @sap.label         : 'Status'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      Status           : LargeString;

      @sap.unicode       : 'false'
      @sap.label         : 'PONumber'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      PONumber         : String(35);

      @sap.unicode       : 'false'
      @sap.label         : 'SONumber'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      SONumber         : String(10);

      @sap.unicode       : 'false'
      @sap.label         : 'Type'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      Type             : LargeString;

      @sap.unicode       : 'false'
      @sap.label         : 'TypeText'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      TypeText         : String(20);

      @sap.unicode       : 'false'
      @sap.label         : 'ReferenceInvoice'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      ReferenceInvoice : String(16);

      @sap.unicode       : 'false'
      @sap.label         : 'SOCount'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      SOCount          : Integer;

      @m.FC_TargetPath   : 'SyndicationTitle'
      @m.FC_KeepInContent: 'true'
      @sap.unicode       : 'false'
      @sap.label         : 'BillToParty'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      BillToParty      : LargeString;

      @sap.unicode       : 'false'
      @sap.label         : 'POCount'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      POCount          : Integer;

      @cds.ambiguous     : 'missing on condition?'
      Contacts         : Association to many ZSD_SRA021_SRV.Contacts
                           on Contacts.AddressString = BillToParty;

      @cds.ambiguous     : 'missing on condition?'
      Items            : Association to many ZSD_SRA021_SRV.Items
                           on Items.INVOICENUMBER = INVOICENUMBER;

      @cds.ambiguous     : 'missing on condition?'
      DetailInvoice    : Association to ZSD_SRA021_SRV.DetailInvoices
                           on DetailInvoice.INVOICENUMBER = INVOICENUMBER;
};

@cds.external        : true
@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity ZSD_SRA021_SRV.DetailInvoices {
      @sap.unicode   : 'false'
      @sap.label     : 'INVOICENUMBER'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key INVOICENUMBER           : String(10) not null;

      @sap.unicode   : 'false'
      @sap.label     : 'ContentType'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ContentType             : String(1);

      @sap.unicode   : 'false'
      @sap.unit      : 'Currency'
      @sap.label     : 'TotalItemAmount'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TotalItemAmount         : Decimal(15, 14);

      @sap.unicode   : 'false'
      @sap.unit      : 'Currency'
      @sap.label     : 'TotalFreightAmount'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TotalFreightAmount      : Decimal(13, 13);

      @sap.unicode   : 'false'
      @sap.unit      : 'Currency'
      @sap.label     : 'TotalTax'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TotalTax                : Decimal(13, 13);

      @sap.unicode   : 'false'
      @sap.unit      : 'Currency'
      @sap.label     : 'TotalAmount'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TotalAmount             : Decimal(15, 14);

      @sap.unicode   : 'false'
      @sap.unit      : 'Currency'
      @sap.label     : 'Balance'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Balance                 : Decimal(15, 14);

      @sap.unicode   : 'false'
      @sap.label     : 'ReferenceInvoice'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ReferenceInvoice        : String(16);

      @sap.unicode   : 'false'
      @sap.label     : 'PaymentTerms'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PaymentTerms            : String(30);

      @sap.unicode   : 'false'
      @sap.label     : 'Carrier'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Carrier                 : String(35);

      @sap.unicode   : 'false'
      @sap.label     : 'Incoterms'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Incoterms               : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'BillingAdressName1'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      BillingAdressName1      : String(35);

      @sap.unicode   : 'false'
      @sap.label     : 'BillingAdressName2'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      BillingAdressName2      : String(35);

      @sap.unicode   : 'false'
      @sap.label     : 'BillingAdressCity'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      BillingAdressCity       : String(35);

      @sap.unicode   : 'false'
      @sap.label     : 'BillingAdressCountryKey'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      BillingAdressCountryKey : String(3);

      @sap.unicode   : 'false'
      @sap.label     : 'BillingAdressPostalCode'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      BillingAdressPostalCode : String(10);

      @sap.unicode   : 'false'
      @sap.label     : 'BillingAdressStras'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      BillingAdressStras      : String(35);

      @sap.unicode   : 'false'
      @sap.label     : 'Currency'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      @sap.semantics : 'currency-code'
      Currency                : String(5);

      @cds.ambiguous : 'missing on condition?'
      SOItemSet               : Association to many ZSD_SRA021_SRV.SOItems {};
};

@cds.external        : true
@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity ZSD_SRA021_SRV.Items {
      @sap.unicode       : 'false'
      @sap.label         : 'INVOICENUMBER'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
  key INVOICENUMBER : String(10) not null;

      @sap.unicode       : 'false'
      @sap.label         : 'ID'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
  key ID            : Integer not null;

      @m.FC_TargetPath   : 'SyndicationTitle'
      @m.FC_KeepInContent: 'true'
      @sap.unicode       : 'false'
      @sap.label         : 'Name'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
      Name          : String(40) not null;

      @sap.unicode       : 'false'
      @sap.unit          : 'Unit'
      @sap.label         : 'Quantity'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
      Quantity      : Decimal(13, 3) not null;

      @sap.unicode       : 'false'
      @sap.label         : 'Unit'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
      @sap.semantics     : 'unit-of-measure'
      Unit          : String(3) not null;

      @sap.unicode       : 'false'
      @sap.unit          : 'Currency'
      @sap.label         : 'UnitPrice'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
      UnitPrice     : Decimal(29, 9) not null;

      @sap.unicode       : 'false'
      @sap.unit          : 'Currency'
      @sap.label         : 'TotalPrice'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
      TotalPrice    : Decimal(29, 9) not null;

      @sap.unicode       : 'false'
      @sap.label         : 'Currency'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
      @sap.semantics     : 'currency-code'
      Currency      : String(5) not null;

      @sap.unicode       : 'false'
      @sap.label         : 'Status'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
      Status        : LargeString not null;
};

@cds.external        : true
@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity ZSD_SRA021_SRV.Contacts {
      @sap.unicode   : 'false'
      @sap.label     : 'UserID'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key UserID        : String(12) not null;

      @sap.unicode   : 'false'
      @sap.label     : 'Title'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Title         : LargeString not null;

      @sap.unicode   : 'false'
      @sap.label     : 'FirstName'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      FirstName     : String(40) not null;

      @sap.unicode   : 'false'
      @sap.label     : 'LastName'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LastName      : String(40) not null;

      @sap.unicode   : 'false'
      @sap.label     : 'FullName'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      FullName      : String(80) not null;

      @sap.unicode   : 'false'
      @sap.label     : 'Department'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Department    : String(40) not null;

      @sap.unicode   : 'false'
      @sap.label     : 'EMail'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      EMail         : String(241) not null;

      @sap.unicode   : 'false'
      @sap.label     : 'WorkPhone'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      WorkPhone     : String(30) not null;

      @sap.unicode   : 'false'
      @sap.label     : 'MobilePhone'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      MobilePhone   : String(30) not null;

      @sap.unicode   : 'false'
      @sap.label     : 'CompanyName'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompanyName   : String(40) not null;

      @sap.unicode   : 'false'
      @sap.label     : 'AddressString'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AddressString : LargeString not null;
};

@cds.external        : true
@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity ZSD_SRA021_SRV.SOItems {
      @m.FC_TargetPath   : 'SyndicationTitle'
      @m.FC_KeepInContent: 'true'
      @sap.unicode       : 'false'
      @sap.label         : 'SONumber'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
  key SONumber : String(10) not null;

      @sap.unicode       : 'false'
      @sap.label         : 'PONumber'
      @sap.creatable     : 'false'
      @sap.updatable     : 'false'
      @sap.sortable      : 'false'
      @sap.filterable    : 'false'
      PONumber : String(35) not null;
};

@cds.external: true
function ZSD_SRA021_SRV.Summary() returns ZSD_SRA021_SRV.Descriptor;
