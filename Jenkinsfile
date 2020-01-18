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
            sh 'mvn sonar:sonar -Dsonar.host.url=http://ip172-18-0-29-bohfg9833cq000fnk200-9000.direct.labs.play-with-docker.com -Dsonar.login=3eca92d7e04ada420e460fbd108b05ff5a5905df'
          }
        }
        stage('Docker-Build') {
          steps {
            sh 'docker build -t myimage .'
        }
      }
}
