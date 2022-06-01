trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    Set<Id> accountIds = new Set<Id>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact c : trigger.new) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }
        if(trigger.isUpdate || trigger.isdelete){
            for (contact c : trigger.old) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }

        if(!accountIds.isEmpty()){
            List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
            from account where id in :accountIds];

            if(!accList.isEmpty()){
                list<account> updateAccList = new list<account>();
                for (account eachAcc : accList) {
                    List<contact> listContacts = eachAcc.contacts;
                    
                    Account acc = new account();
                    acc.id = eachAcc.id;
                    acc.number_of_contacts__c = listContacts.size();
                    updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }

}















// trigger ContactTrigger on Contact (before insert,before update,after insert,after update){

//     if (trigger.isBefore && trigger.isUpdate) {
//             ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//     }









// //     if(trigger.isAfter && trigger.isUpdate){
// //         for(Contact newLN: trigger.new){
// //             String oldLN = trigger.oldmap.get(newLN.Id).lastName;
// //                 if(oldLN !=newLN.lastName){
// //                     system.debug(' Last Name is changed - ' +oldLN + ' is changed to '+ newLN
// //                     .LastName);
// //         }
// //     }
// // }






//     // map<id, Contact> trgNewMap = trigger.newMap;
//     // map<id, Contact> trgOldMap = trigger.oldMap;

//     // if(trigger.isAfter && trigger.isInsert){
//     //     System.debug('=======AFTER INSERT=======');
//     //     System.debug('After insert TRIGGER.OLD = '+ trigger.old);
//     //     System.debug('After insert TRIGGER.NEW = '+ trigger.new);
//     //     System.debug('After insert OLD MAP = '+ trgOldMap);
//     //     System.debug('After insert NEW MAP = '+ trgNewMap);
//     // }

//     // if (trigger.isAfter && trigger.isUpdate) {
//     //     System.debug('=======AFTER UPDATE========');
//     //     System.debug('After update TRIGGER.OLD = '+ trigger.old);
//     //     System.debug('After update TRIGGER.NEW = '+ trigger.new);
//     //     System.debug('After update OLD MAP = '+ trgOldMap);
//     //     System.debug('After update NEW MAP = '+ trgNewMap);
//     // }

//     // if (trigger.isBefore && trigger.isInsert) {
//     //     System.debug('========BEFORE INSERT=======');
//     //     System.debug('Before insert TRIGGER.OLD = '+ trigger.old);
//     //     System.debug('Before insert TRIGGER,NEW = '+ trigger.new);
//     //     System.debug('Before insert OLD MAP = '+ trgOldMap);
//     //     System.debug('Before insert NEW MAP = '+ trgNewMap);
//     // }

//     // if (trigger.isBefore && trigger.isUpdate) {
//     //     System.debug('========BEFORE UPDATE========');
//     //     System.debug('Before update TRIGGER.OLD = '+ trigger.old);
//     //     System.debug('Before update TRIGGER.NEW = '+ trigger.new);
//     //     System.debug('Before update OLD MAP = '+ trgOldMap);
//     //     System.debug('Before update NEW MAP = '+ trgNewMap);
//     // }






























//     // if (trigger.isBefore) {
//     //     System.debug('We are in BEFORE Trigger');
//     //     if (trigger.isInsert) {
//     //         System.debug('Before update trigger called');
//     //     }
//     //     if (trigger.isUpdate) {
//     //         System.debug('Before update trugeer called');
//     //     }
//     // }

//     // if (trigger.isAfter) {
//     //     System.debug('We are in After trigger');
//     //     if (trigger.isInsert) {
//     //         System.debug('before insert trigger called');
//     //     }
//     //     if (trigger.isUpdate) {
//     //         System.debug('Update insert trigger called');
//     //     }
//     // }

// }