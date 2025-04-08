# Trello Automation

This is an example of an Automation for Trello APIs using Postman, Newman and Jenkins as an CI/CD pipeline

## Techs

* Postman
* Newman
* Jenkins

## First steps

### Getting a Trello Token

* Follow the instructions of [TRELLO - API Introduction page](https://developer.atlassian.com/cloud/trello/guides/rest-api/api-introduction/#api-introduction) to learn how to get your API Key and Token.
* On your Postman Account go to [My-API-KEYS page](https://web.postman.co/settings/me/api-keys) and generate one.

Once you have these values create a file called `.env` following the example of the file `.env.example` and put your API key and token there. Do not worry this file will not be tracked by git and will be only available on your local setup.
