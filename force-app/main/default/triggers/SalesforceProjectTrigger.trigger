trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert,before update,after insert, after update) {
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('trigger called');
        SalesforceProjectTriggerHandler.updateProjectDescription(trigger.newMap.keySet());
        System.debug('Future method callled already method calling');
        SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(Trigger.new);
    }

    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

    
}