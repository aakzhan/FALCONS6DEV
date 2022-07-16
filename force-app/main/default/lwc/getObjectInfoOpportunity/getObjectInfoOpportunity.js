import { LightningElement, wire } from 'lwc';
import {getObjectInfo} from 'lightning/uiObjectInfoApi';



import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';

export default class GetObjectInfoContact extends LightningElement {
    defaultRdId;
    supplierRtId;
        @wire(getObjectInfo, {objectApiName: OPPORTUNITY_OBJECT})
        contactInfoHandler({data, error}){
            if(data){
                console.log(data);
                this.defaultRdId = data.defaultRecordTypeId;
                const rtids = data.recordTypeInfos;
                this.supplierRtId = Object.keys(rtids).find(rtid => rtids[rtid].name === "Refined Pertolium");
            }
            if(error){
                console.log(error);
            }
        }
}