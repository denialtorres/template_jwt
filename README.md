# README

To authenticate:

```
curl -H 'Content-Type: application/json' -X POST -d '{"email":"denial.torres@gmail.com", "password":"taco1234"}' http://localhost:3000/authenticate
```

To test the auth token:

```
curl -H 'Content-Type: application/json' -H 'Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2NTA1MDgwMDB9.2EvJJXvFlWPapIynCy4et7By8rIPlgAP0BuUVRhpqhU' http://localhost:3000/products
```
