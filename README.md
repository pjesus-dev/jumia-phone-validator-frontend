# Jumia customers phone number validator 

a simple one page UI  to show customers with their phone number validation and country using Reactjs 

## Docker
the follwing commands could be used to build the project and run it using Docker

* docker build -t validator-frontend-image .
* docker run -p 8081:8081 --env-file ./{your_file_name} validator-frontend-image
* open http://localhost:8081
