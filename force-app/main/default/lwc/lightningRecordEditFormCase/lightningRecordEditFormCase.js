import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

import CASE_OBJECT from '@salesforce/schema/Case';
import NAME_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACTNAME_FIELD from '@salesforce/schema/Case.ContactId';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import STATUS_FIELD from '@salesforce/schema/Case.Status';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import CASEORIGIN_FIELD from '@salesforce/schema/Case.Origin';

export default class LightningCaseRecordForm extends LightningElement {
    recordId="5008c00001HvGH5AAN";
    objectName=CASE_OBJECT;
    fields={
        accountname: NAME_FIELD,
        contactname: CONTACTNAME_FIELD,
        subject: SUBJECT_FIELD,
        priority: PRIORITY_FIELD,
        status: STATUS_FIELD,
        description: DESCRIPTION_FIELD,
        caseorigin: CASEORIGIN_FIELD
    };
     successHandler(){
        const successToast = new ShowToastEvent({
            title:"Success",
            message:"Case has been saved succesfully!",
            variant:"success"
        });
        this.dispatchEvent(successToast);
     }
     errorHandler(){
        const errorEvent = new ShowToastEvent({
            title: "Error",
            message: "An error occured while saving the case record",
            variant: "error"
        })
        this.dispatchEvent(errorEvent);
     }
}