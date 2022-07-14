import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import ACCOUNTID_FIELD from '@salesforce/schema/Opportunity.AccountId';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import LEADSOURCE_FIELD from '@salesforce/schema/Opportunity.LeadSource';


export default class LightningRecordFormOpportunity extends LightningElement {
    recordId = '0068c00000pWTksAAG';
    objectName = OPPORTUNITY_OBJECT;
    fields = [NAME_FIELD,ACCOUNTID_FIELD,AMOUNT_FIELD,TYPE_FIELD,STAGENAME_FIELD,LEADSOURCE_FIELD];

    successHandler() {
        const successEvent = new ShowToastEvent({
            title: '',
            message: 'The opportunity record has been saved succesfully!',
            variant: 'success'
        });
        this.dispatchEvent(successEvent);
    }


    errorHandler(){
        const errorEvent = new ShowToastEvent({
            title: 'Error',
            message: 'An error occured while saving the contract record!',
            variant: 'error'
        });
        this.dispatchEvent(errorEvent);
    }
}