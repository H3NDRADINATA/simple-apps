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
                npm run test:coverage
                '''          
            }
        }

        stage('Scanning Code') {
            steps {
               sh '''
               cd apps
               sonar-scanner   -Dsonar.projectKey=Simple-Apps   -Dsonar.sources=.   -Dsonar.host.url=http://172.23.2.62:9000   -Dsonar.login=sqp_083870c452519cdf3f8a9612a8f2725d394a3677
               '''
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