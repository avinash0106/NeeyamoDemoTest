pipeline {
  agent any
  tools{
    jdk: 'java'
    maven: 'maven'
      }
      stages{
        stage('Clone') {
          steps {
            git clone https://github.com/avinash0106/NeeyamoDemoTest.git
          }
        }
        stage('Build') {
          steps {
            sh 'mvn clean package'
          }
        }
      }
}
