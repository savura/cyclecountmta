namespace com.mpc.cyclecount;

using
{
    cuid,
    managed
}
from '@sap/cds/common';

using {
    User
} from '@sap/cds/common';

entity InventoryDocuments : cuid, managed
{
    documentNumber : String(36);
    documentStatus : Integer;
    claimedById : String(10);
    claimedByName : String(100);
    plant : String(10);
    plantName : String(100);
    storageLocation : String(10);
    storageLocationName : String(100);
    items : Composition of many InventoryDocumentItems on items.header = $self;
}

entity InventoryDocumentItems : cuid, managed
{
    material : String(15);
    materialName : String(100);
    countStatus : Integer;
    bin : String(25);
    actualQty : Integer;
    unitOfMeasure : String(5);
    batch : String(10);
    comments : String(500);
    referenceImage : LargeBinary;
    header : Association to one InventoryDocuments;
}
