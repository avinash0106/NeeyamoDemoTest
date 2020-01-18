pipeline {
  agent any
  tools{
    jdk: 'java'
    maven: 'maven'
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
      }
}
