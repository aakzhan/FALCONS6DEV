import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact';

import NAME_FIELD from '@salesforce/schema/Contact.Name';
import TITLE_FILED from '@salesforce/schema/Contact.Title';


import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';


export default class LightningRecordViewFormContact extends LightningElement {
    recordId = '0038c00002iK8aYAAS';
    objectName = CONTACT_OBJECT;
    fields = {
        name: NAME_FIELD,
        title: TITLE_FILED,
       
        
        phone: PHONE_FIELD,
        email: EMAIL_FIELD
    }


}