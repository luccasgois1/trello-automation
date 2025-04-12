# Trello Automation

This is an example of an Automation for Trello APIs using Postman, Newman and Jenkins

## Techs

* Postman
* Newman
* Jenkins

## First steps

### Import the postman_collection.json file to your Postman Account

You must import the [postman_collection.json](./postman_collection.json) file to
your Postman account, and get the COLLECTION_UID to
place it on the .env file that you will create on the next steps

### Getting the necessary API Tokens

* Follow the instructions of [TRELLO - API Introduction page](https://developer.atlassian.com/cloud/trello/guides/rest-api/api-introduction/#api-introduction)
to learn how to get your API Key and Token.
* On your Postman Account go to [My-API-KEYS page](https://web.postman.co/settings/me/api-keys) and generate one.

### Creating an .env file

Once you have these values create a file called `.env` following the example of the file `.env.example` and put your API key and token there.
Do not worry this file will not be tracked by git and will be only available in your local machine.

### Build the docker image to run the tests

```bash
docker build -t newman-automation .
```

### Run the tests inside the container

```bash
docker run -it --rm --env-file .env newman-automation
```

## Include/Update requests or tests

### Base postman_collection.json update

The [postman_collection.json](./postman_collection.json) file is just a base template, if there were breaking changes in the base collection,
please run the script [download_collection.sh](./download_collection.sh) to update the collection file with your
changes and create a PR to update the [postman_collection.json](./postman_collection.json) file on main

### Run the tests with my new changes on the imported collection

Once the .env has your COLLECTION_UID you just need to do the changes on the collection in your Postman app and save it.
When you run the docker run command again, the container will download the collection with the changes and run the
updated version of your collection.
