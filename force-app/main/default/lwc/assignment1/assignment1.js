import { LightningElement } from 'lwc';

export default class Assignment1 extends LightningElement {
    username;

    handleChange(event) {
        this.username = event.target.value;
    }

    get roles() {
        return[
            {label: 'System Admin', value: 'System Admin'},
            {label: 'Salesforce Developer', value: 'Salesforce Developer'},
            {label: 'Salesforce Architect', value: 'Salesforce Architect'}
        ]
    }

    handleRoleChange(event) {
        this.role = event.target.value;
    }

}