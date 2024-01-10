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
        sh 'echo unity install 222'
        sh 'ls -lh /opt/unity'
      }
    }

    stage('Activate Unity License') {
      steps {
        sh 'echo unity install 222'
        sh '/opt/unity/Editor/Unity -batchmode -quit -logFile /dev/stdout -nographics -projectPath $workspace'
      }
    }

    stage('Echo Workspace files') {
      steps {
        sh 'ls -lh $WORKSPACE'
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
