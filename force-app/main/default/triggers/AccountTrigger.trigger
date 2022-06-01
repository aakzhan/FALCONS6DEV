trigger AccountTrigger on Account (before insert,before update,after insert,after update) {
    
    if(trigger.isBefore){
        system.debug('before insert/update trigger called');
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        system.debug('before insert/update trigger end.');
        
    }
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }













    // if(trigger.isBefore){
    //     system.debug('before insert/update trigger called');
    //     AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

    //     System.debug('Before insert/update triger end');
        
    // }











        // map<id, account> newAccountMap = trigger.newmap;
        // map<id, account> oldAccountMap = trigger.oldmap;
        // for(account eachAcc: trigger.new){
        //     boolean updateDesc = false;
        //     if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
        //         updateDesc = true;
        //     }
        //     if(trigger.isUpdate){
        //         Account oldAccount = oldAccountMap.get(eachAcc.ID);
                
        //         string oldAccountActive = oldAccount.Active__c;
        //         //check if active is updated
        //         //active is changed to 'Yes'
        //         if(eachAcc.Active__c == 'Yes' &&
        //             oldAccountActive != 'Yes'
        //         ) {
        //             updateDesc = true;
        //         }
        //     }
        //     if(updateDesc){
        //         eachAcc.Description = 'Account is now active. Enjoy!';
        //     }
        // }
    //}












    // if (trigger.isBefore) {
    //     System.debug('Before insert/update trigger called');

    //     map<id, account> newAccountMap = trigger.newMap;
    //     map<id, Account> oldAccountMap = trigger.oldMap;
    //     for(account eachAcc: trigger.new){
    //         if (trigger.isInsert && eachAcc.Active__c == 'Yes') {
    //             eachAcc.Description = 'Account is now active. Enjoy!';
    //         }
    //         if (trigger.isUpdate) {
    //             Account oldAccount = oldAccountMap.get(eachAcc.ID);
    //             string oldAccountActive = oldAccount.Active__c;
    //             //check if active is updated
    //             //active is changed to 'yes'
    //             if (eachAcc.Active__c =='YES' && oldAccountActive != 'YES') {
    //                 eachAcc.Description = 'Account is now active. Enjoy!';
    //             }
    //         }
    //     }
    // }





    // if (trigger.isAfter && trigger.isUpdate) {
    //     System.debug('Before update trigger of Account object');

    //     map<id, account> newAccMap = trigger.newMap;
    //     map<id, account> oldAccMap = trigger.oldMap;

    //     set<id> setOfAccIds = newAccMap.keySet();
    //     integer countWebsiteUpdated = 0;
    //     for(ID eachId : setOfAccIds){
    //         //get old account
    //         account oldAcc = oldAccMap.get(eachId);
    //         string oldWebsite = oldAcc.Website;
    //         //get new account
    //         account newAcc = newAccMap.get(eachId);
    //         string newWebsite = newAcc.Website;

    //         if (oldWebsite != newWebsite) {
    //             //website is CHANGED
    //             System.debug('For account '+ newAcc.Name + ', new WEBSITE is '+ newWebsite);
    //             countWebsiteUpdated++;
    //         }
    //     }
    //     System.debug('# account website updated = '+ countWebsiteUpdated);
    // }












    // if (trigger.isAfter && trigger.isUpdate) {
    //     map<id, account> newAccMap = trigger.newMap;
    //     map<id, account> oldAccMap = trigger.oldMap;

    //     Set<Id> setOfAccIds = newAccMap.keySet();

    //     for (ID eachId : setOfAccIds) {
    //         System.debug('================');
    //         System.debug('Each ID = '+ eachId);
            
    //         Account newAccount = newAccMap.get(eachId);
    //         System.debug('New account name = '+ newAccount.Name);

    //         Account oldAccount = oldAccMap.get(eachId);
    //         System.debug('Old account name = '+ oldAccount.Name);
    //     }
    // }




    //  map<id, Account> trgNewMap = trigger.newMap;
    // map<id, Account> trgOldMap = trigger.oldMap;

    // if(trigger.isBefore &&  trigger.isInsert){
    //     system.debug('=======BEFORE INSERT=========');
    //     System.debug('Before insert TRIGGER.OLD = '+ trigger.old);
    //     System.debug('Before insert TRIGGER,NEW = '+ trigger.new);
    //     system.debug('Before insert OLD MAP = ' + trgOldMap);
    //     system.debug('Before insert NEW MAP = ' + trgNEWMap);
    // }
    // if(trigger.isAfter &&  trigger.isInsert){
    //     system.debug('=======AFTER INSERT=========');
    //     System.debug('After insert TRIGGER.OLD = '+ trigger.old);
    //     System.debug('After insert TRIGGER.NEW = '+ trigger.new);
    //     system.debug('AFter insert OLD MAP = ' + trgOldMap);
    //     system.debug('AFter insert NEW MAP = ' + trgNEWMap);
    // }

    // if(trigger.isBefore &&  trigger.isUpdate){
    //     system.debug('=======BEFORE UPDATE=========');
    //     System.debug('Before update TRIGGER.OLD = '+ trigger.old);
    //     System.debug('Before update TRIGGER.NEW = '+ trigger.new);
    //     system.debug('Before update OLD MAP = ' + trgOldMap);
    //     system.debug('Before update NEW MAP = ' + trgNEWMap);
    // }
    // if(trigger.isAfter &&  trigger.isUpdate){
    //     system.debug('=======AFTER UPDATE=========');
    //     System.debug('After update TRIGGER.OLD = '+ trigger.old);
    //     System.debug('After update TRIGGER.NEW = '+ trigger.new);
    //     system.debug('After update OLD MAP = ' + trgOldMap);
    //     system.debug('After update NEW MAP = ' + trgNEWMap);
    // }





    // if(trigger.isAfter){
    //     //want to print old names on update. so we will do it 
    //     //
    //     if (trigger.isUpdate) {
    //         List<Account> oldAccounts = trigger.old;
    //         List<Account> newAccounts = trigger.new;

    //         for (account oldAcc : oldAccounts) {
    //             System.debug('old acc.id = '+ oldAcc.id + ', old acc name = '+ oldAcc.Name);
    //         }
    //         for (account newAcc: newAccounts ) {
    //             System.debug('new acc.Id = '+ newAcc.Id + ', new acc name = '+ newAcc.Name);
    //         }
    //     }
    // }




    // if (trigger.isBefore && trigger.isInsert) {
    //     System.debug('trigger.old before Insert = ' + trigger.old);
    // }
    // if (trigger.isAfter && trigger.isInsert) {
    //     System.debug('trigger.old after Insert = '+ trigger.old);
    // }
    
    
    
    // if(trigger.isBefore && trigger.isUpdate){
    //     system.debug('trigger.new before update = ' + trigger.new);
    //     list<account> newAccounts = trigger.new;
    //     for (account acc :  newAccounts) {
    //         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //     }
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     //trigger.new -> record(s) which were responsible for firing the trigger
    //     system.debug('trigger.new after update = ' + trigger.new);
    //     for (account acc :  trigger.new) {
    //         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //     }
    // }
    // if(trigger.isBefore && trigger.isInsert){
    //     system.debug('trigger.new before insert = ' + trigger.new);

    // }
    // if (trigger.isInsert && trigger.isAfter) {
    //     System.debug('trigger.new after insert/update = '+ trigger.new);

    //     List<Account> newAccounts = trigger.new;

    //     System.debug('total account inserted = '+ newAccounts.size());

    //     for (account acc : newAccounts) {
    //         System.debug('account id is = '+ acc.Id + ', account name is '+ acc.Name);
    //     }
    // }

    //----------------------------------------------------------------

    // System.debug('----------START---------');
    // System.debug('trigger.isBefore = ' + trigger.isBefore);
    // System.debug('trigger.isAfter = ' + trigger.isAfter);
    // System.debug('trigger.isInsert = ' + trigger.isInsert);
    // System.debug('trigger.isAfter = ' + trigger.isUpdate);
    
    // if(Trigger.isBefore && Trigger.isInsert)
    //     System.debug('before insert trigger called.');
    
    // if(Trigger.isAfter && Trigger.isInsert)
    // System.debug('after insert trigger fired');

    // if (Trigger.isUpdate && Trigger.isBefore) {
    //     system.debug('before update trigger fired');
    // }
    // if (Trigger.isUpdate && Trigger.isAfter) {
    //     system.debug('after update trigger fired');
    // }
    
    // System.debug('----------END---------');
    // if (Trigger.isInsert) {
    //     System.debug('before insert  trigger fired');
    // }
    // if (Trigger.isBefore) {
    //     System.debug('before update  trigger called');
    // }  


    // System.debug('trigger.isBefore = ' + trigger.isBefore;
    // System.debug('trigger.isAfter = ' + trigger.isAfter;)
    
    // if (Trigger.isAfter) {
    //     System.debug('after  insert  trigger called');
    // }
    // if (Trigger.isBefore) {
    //     System.debug('before insert account trigger fired');
    // }
  
   
}