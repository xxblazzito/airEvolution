global class ObtenerClimaMock {
    
    global HTTPResponse respond(HTTPRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        string body = '{"coord":{"lon":-75.5636,"lat":6.2518},"weather":[{"id":804,"main":"Clouds","description":"nubes","icon":"04d"}],"base":"stations","main":{"temp":22.82,"feels_like":23.25,"temp_min":22.82,"temp_max":22.82,"pressure":1010,"humidity":80,"sea_level":1010,"grnd_level":850},"visibility":10000,"wind":{"speed":1.65,"deg":69,"gust":2.56},"clouds":{"all":96},"dt":1662757221,"sys":{"country":"CO","sunrise":1662720846,"sunset":1662764726},"timezone":-18000,"id":3674962,"name":"Medellín","cod":200}';
        response.setBody(body);
        response.setStatusCode(200);
        return response; 
    }
}