### Notes from the Lecture

- What is authentication?
  - A way for a user to prove that they are who they say they are
  - Usually verified by comparing the credentials provided with the credentials stored in the database (Users Table)
  - username/email and password combination

## Bcrypt

- When we implemented the user table, we create a `digest_password`
- Do not store plain text passwords, you become a target for hackers, store encrypted passwords
- Bcrypt is a gem
- Bcrypt provides hashing algorithm: takes data such as passwords creates a hash with that data
  - A hash is a unique alphanumeric representation of the data i.e. digital fingerprint.

## Session
- Way to store information about a user during one request that is accessible during later requests
- Rails allows us to store information in a Session
  - It is a hash (the datatype NOT to be confused with Bcrypt)
