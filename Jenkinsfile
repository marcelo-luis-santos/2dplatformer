pipeline {
  triggers {
    pollSCM('* * * * *')
  }
  agent {
    docker {
      image 'unityci/editor:ubuntu-2022.3.9f1-mac-mono-3.0.0'
    }

  }
  stages {
    stage('Echo Build') {
      steps {
        sh 'echo unity install'
        sh 'ls -lh /opt/unity'
      }
    }

    stage('Echo Test') {
      steps {
        sh 'sleep 10'
        sh 'echo Success!'
      }
    }

    stage('Echo Deploy') {
      steps {
        echo 'Deploy'
      }
    }

  }
}
