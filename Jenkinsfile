pipeline {
    agent {
        node{
            label 'devops-din'
        }
    }

    stages {
        stage('Build Apps') {
            steps {               
                echo "Process Build Apps"                
            }
        }

        stage('Test Apps') {
            steps {                
                echo "Process Test Apps"               
            }
        }

        stage('Scanning Code') {
            steps {
               echo "Process Scanning Code"  
            }
        }

        stage('Dockerized') {
            steps {
               echo "Process Dockerized"  
            }
        }

        stage('Deploy Apps') {
            steps {
                echo "Process Deploy Apps"  
            }
        }

        stage('Publish Image') {
            steps {
                echo "Process Publish Image"  
            }
        }
    }
}