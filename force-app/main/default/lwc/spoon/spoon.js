import { LightningElement,track } from 'lwc';
import Getrecipebyingredients from '@salesforce/apex/spponacular.Getrecipebyingredients';
import GetrandomRecipe from '@salesforce/apex/spponacular.GetrandomRecipe';

export default class Spoon extends LightningElement {
    @track Ingredients='';


handleInputChange(event){
    this.Ingredients=event.target.value;
}
handleSearch(){
    Getrecipebyingredients({Ingredients: this.Ingredients})
        .then(result => {
            this.recipe = JSON.parse(result)
        })
}

handleClick(){
    GetrandomRecipe()
    .then(result => {
        this.recipe = JSON.parse(result)
    })
}
}