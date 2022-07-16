import { api, LightningElement } from 'lwc';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';

import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import ACCOUNTID_FIELD from '@salesforce/schema/Opportunity.AccountId';
import CLOSEDATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';





export default class LightningRecordEditeFormOpp extends LightningElement {
   // recordId = '0068c00000pWTl5AAG';
  @api recordId; //public property
    objectName = OPPORTUNITY_OBJECT;
    fields = {
        name: NAME_FIELD,
        stage: STAGENAME_FIELD,
        type: TYPE_FIELD,
        amount: AMOUNT_FIELD,
        account: ACCOUNTID_FIELD,
        closedate: CLOSEDATE_FIELD
    };

    successHandler() {
        const successToast = new ShowToastEvent({
            title: "Success",
            message: "Contact has been saved successfully!",
            variant: "success"
        });
        this.dispatchEvent(successToast);
    }
}