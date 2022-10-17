
pipeline {
    agent any

    stages {
        stage('Build Image') {
            when {
                branch 'master'
            }
            steps {
                sh 'echo Build Image'
                sh 'docker build -t $DOCKER_ID/knorex-python:latest .' //could be a better way to tag the image, using "git rev-parse --short HEAD", get the commit hash 
                                                                       //tag the image
            }
        }

        stage('Publish Image') {
            when {
                branch 'master'
            }
            steps {
                sh 'echo Publish Image'
                sh 'docker login --username=$DOCKER_ID --pasword=$DOCKER_PASSWORD' //using parameter from jenkins to login Dockerhub
                sh 'docker push $DOCKER_ID/knorex-python:latest'
            }
        }
      
    }
}
