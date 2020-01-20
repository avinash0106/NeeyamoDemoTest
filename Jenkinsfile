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
            parallel(
                    "Build": {
                        sh 'mvn clean package'
                    },
                    "Sonar-publish": {
                        sh 'mvn sonar:sonar -Dsonar.host.url=http://ip172-18-0-29-bohfg9833cq000fnk200-9000.direct.labs.play-with-docker.com -Dsonar.login=3eca92d7e04ada420e460fbd108b05ff5a5905df'
                      
                    }
            )
        stage('Docker-Build') {
          steps {
            sh 'docker build -t avis1418/mywebbapp:1.0.1 .'
        }
      }
        stage('Docker-Push') {
          steps {
            sh 'docker push avis1418/mywebbapp:1.0.1'
        }
      }
        stage('Docker-Run') {
          steps {
            sh 'ssh -o "StrictHostKeyChecking=no" -i /home/centos/key.pem centos@34.201.39.114 sudo docker run -it -p 8080:8080 -d --name myapp avis1418/mywebbapp:1.0.1'
        }
      }
      }  
}
