pipeline {
  agent any
  tools{
    jdk: 'java'
    maven: 'maven'
      }
      stages{
        stage('Clone') {
          steps {
            git clone https://github.com/Prakashja/NeeyamoDemoTest.git
          }
        }
        stage('Build') {
          steps {
            sh 'mvn clean package'
          }
        }
      }
}
