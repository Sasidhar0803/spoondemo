public class spponacular{
    //public string apiKey = '';
    //public string endpoint = '';
    public static string Getrecipebyingredients(string Ingredients){
            
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.spoonacular.com/recipes/findByIngredients?apiKey=7d3639b436d34431859d3ebb511e6a2e&ingredients'+'Ingredients');
            request.setMethod('GET');
            HttpResponse response = http.send(request);

            if(response.getStatusCode() == 200) {
                return response.getBody();
            }
}

    public static string GetrandomRecipe(){
                
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.spoonacular.com/recipes/random?apiKey=7d3639b436d34431859d3ebb511e6a2e');
        request.setMethod('GET');
        HttpResponse response = http.send(request);

        if(response.getStatusCode() == 200) {
            return response.getBody();
        }
    }