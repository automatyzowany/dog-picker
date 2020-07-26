# Dog Picker API

API for an application which will give you the answer, what type of dog is the best for you. Frontend will be in different repository (React.js). Currently work in progress.

### Endpoints
Authentication:<br>
```
curl --location --request POST 'https://jakipies.herokuapp.com/authenticate' \<br>
--data-raw '{"email":"","password":""}'
```
You will get an authentication token which should be used in the next requests.

List of dogs in database:<br>
```
curl --location --request GET 'https://jakipies.herokuapp.com/dogs' \<br>
--header 'Authorization: Bearer authentication_token_here'
```

List of question, you should answer:<br>
```
curl --location --request GET 'https://jakipies.herokuapp.com/questions' \<br>
--header 'Authorization: Bearer authentication_token_here'
```

Currently working on business logic.
POST endpoint with script calculations will be online soon.

**If you want to receieve an access to the application, please send me an e-mail: paweltrelapro@gmail.com**
