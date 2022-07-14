import { LightningElement } from 'lwc';


import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import ACCOUNTID_FIELD from '@salesforce/schema/Opportunity.AccountId';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import LEADSOURCE_FIELD from '@salesforce/schema/Opportunity.LeadSource';


export default class LightningRecordViewFormOpp extends LightningElement {
    recordId = '0068c00000pWTl3AAG';
    objectName = OPPORTUNITY_OBJECT;
    fields = {
        name: NAME_FIELD,
        type: TYPE_FIELD,
        accountName: ACCOUNTID_FIELD,
        amount: AMOUNT_FIELD,
        stage: STAGENAME_FIELD,
        leadSource: LEADSOURCE_FIELD,
        amount: AMOUNT_FIELD
    }
}