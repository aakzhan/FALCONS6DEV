import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {
   @track location = {
        city: "Houston",
        country: "United States",
        postalCode: "77494"
    }
    handleChange(event){
        //below meaning from the current event go to the target and get what ever value the user has typed
        this.location.city = event.target.value;
}
}