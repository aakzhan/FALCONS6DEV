trigger CaseTrigger on Case (before insert) {
    if(trigger.isInsert){
        System.debug('Before insert trigger called');
    }
    if (trigger.isUpdate) {
        caseTriggerHandler.countTriggerExecution++;
        System.debug('# of times trigger executed: '+ CaseTriggerHandler.countTriggerExecution);

        CaseTriggerHandler.countTriggerExecution += trigger.size;
        System.debug('# of records updated = '+ CaseTriggerHandler.countRecordsUpdate);
    }
}