pipeline {
    agent {
        node{
            label 'devops-din'
        }
    }

    stages {
        stage('Build Apps') {
            steps {               
                sh '''
                cd apps
                npm install
                '''             
            }
        }

    stage('Copy env') {
            steps {               
                sh '''
                sudo cp /root/simple-apps/apps/.env apps/
                '''             
            }
        }

        stage('Test Apps') {
            steps {                
                sh '''
                cd apps
                npm test
                npm test:coverage
                '''          
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