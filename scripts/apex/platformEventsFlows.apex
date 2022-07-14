Custom_Notification__e	evt = new Custom_Notification__e();
evt.Message__c = 'Yahoo... Leads have been processed succesfully! ';
evt.Initiator__c = 'Leads Proceesing Batch';
Eventbus.publish(evt);