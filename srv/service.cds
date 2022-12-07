using { com.mpc.cyclecount as cyclecount}  from '../db/schema';

service CycleCountService {
    entity InventoryDocuments as projection on cyclecount.InventoryDocuments;
    entity InventoryDocumentItems as projection on cyclecount.InventoryDocumentItems;
}