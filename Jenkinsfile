// #!/usr/bin/env groovy
// pipeline {
//     agent {
//         node any
//     }

//     stages {
//         stage('Build Image') {
//             when {
//                 branch 'master'  //only run these steps on the master branch
//             }

//             steps {
//                 echo 'Build'// Jenkins Stage to Build the Docker Image
//             }
//         }

//         stage('Publish Image') {
//             when {
//                 branch 'master'  //only run these steps on the master branch
//             }
            
//             steps {
//                 echo 'Publish' // Jenkins Stage to Publish the Docker Image to Dockerhub or any Docker repository of your choice.
//             } 

//         }
//     }
// }
pipeline {
    agent any

    stages {
        stage('Build Image') {
            // when {
            //     branch 'master'
            // }
            steps {
                sh 'echo Build Image'
                sh 'docker build -t $DOCKER_ID/knorex-python:latest .'
            }
        }

        stage('Publish Image') {
            // when {
            //     branch 'master'
            // }
            steps {
                sh 'echo Publish Image'
                sh 'docker login --username=$DOCKER_ID --pasword=$DOCKER_PASSWORD'
                sh 'docker push $DOCKER_ID/knorex-python:latest'
            }
        }
      
    }
}