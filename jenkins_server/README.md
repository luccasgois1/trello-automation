# Jenkins server running locally on Docker

This directory has the goal of facilitate the creation of a Jenkins server
to run this repository tests in a CI/CD pipeline with the ability
of use the host docker system.
For more information read [this article](https://www.jenkins.io/doc/book/installing/docker/#on-macos-and-linux)

## How to deploy the Jenkins server?

### Requirements

* Docker

### Build and run the Jenkins app

```bash
# Start the containers that will serve your Jenkins app
docker compose up
```

### Access the Jenkins app

* Access the address [http://localhost:8081/](http://localhost:8081/) in your browser.
* Follow the steps on [the Official Jenkins Documentation](https://www.jenkins.io/doc/book/installing/docker/#setup-wizard)
* After that you should be able to create your jobs and projects.

