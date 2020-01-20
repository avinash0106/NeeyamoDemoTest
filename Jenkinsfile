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
            sh 'mvn sonar:sonar -Dsonar.host.url=http://3.84.156.70:9000/ -Dsonar.login=1f331b9d2ce09b7d610c6c7103c67faf9f034258'
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
            sh 'ssh -o "StrictHostKeyChecking=no" -i /home/centos/key.pem centos@54.157.228.253 sudo docker run -it -p 8080:8080 -d --name myapp1 avis1418/mywebbapp:1.0.0'
        }
      }
      }  
}
