import { LightningElement } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FILED from '@salesforce/schema/Account.Type';
import INDUSTRY_FILED from '@salesforce/schema/Account.Industry';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import RATING_FIELD from '@salesforce/schema/Account.Rating';

export default class LightningRecordViewFormAccount extends LightningElement {
    recordId = '0018c00002EwghyAAB';
    objectName = ACCOUNT_OBJECT;
    fields = {
        name: NAME_FIELD,
        type: TYPE_FILED,
        industry: INDUSTRY_FILED,
        revenue: REVENUE_FIELD,
        phone: PHONE_FIELD,
        rating: RATING_FIELD
    }
    
}