# Dog Picker API

API for an application which will give you the answer, what type of a dog is the best for you. Frontend will be in the different repository (React.js). Currently work in progress. Backend available here is moreless done (first version). 

### Endpoints
**Authentication:**<br>
```
curl --location --request POST 'https://jakipies.herokuapp.com/authenticate' \<br>
--data-raw '{"email":"","password":""}'
```
You will get an authentication token which should be used in the next requests.

**List of the dogs in the database:**<br>
```
curl --location --request GET 'https://jakipies.herokuapp.com/dogs' \<br>
--header 'Authorization: Bearer authentication_token_here'
```

**List of the questions you should answer:**<br>
```
curl --location --request GET 'https://jakipies.herokuapp.com/questions' \<br>
--header 'Authorization: Bearer authentication_token_here'
```

**Post question answers and receive back dogs with the best match**
```
curl --location --request POST 'https://jakipies.herokuapp.com/answers/create' \
--header 'Authorization: Bearer authentication_token_here' \
--data-raw '{"1"=>1,"2"=>2,"3"=>2}' # key is the question number, value is the answer
```

**If you want to receieve an access to the application, please send me an e-mail: paweltrelapro@gmail.com**

### Tests

All tests are passing right now. More tests are expected to show up very soon.
