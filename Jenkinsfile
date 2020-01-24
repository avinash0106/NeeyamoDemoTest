pipeline {
  agent any
  tools {
    jdk 'java'
    maven 'maven'
      }
      stages{
        stage('Clone') {
          steps {
            git 'https://github.com/avinash0106/NeeyamoDemoTest.git'
          }
        }
        stage('Build') {
          steps {
            sh 'mvn clean package'
          }
        }
        stage('Sonar-Publish') {
          steps {
            {
                sh 'mvn sonar:sonar'
              }
          }
        }
        stage('Docker-Build') {
          steps {
            sh 'docker build -t avis1418/mywebbapp:1.0.0 .'
        }
      }
        stage('Docker-Push') {
          steps {
            sh 'docker push avis1418/mywebbapp:1.0.0'
        }
      }
        stage('Docker-Run') {
          steps {
            sh 'ssh -o "StrictHostKeyChecking=no" -i /home/centos/key.pem centos@54.157.228.253 sudo docker run -it -p 8081:8080 -d --name myapp1 avis1418/mywebbapp:1.0.0'
        }
      }
      }  
}
