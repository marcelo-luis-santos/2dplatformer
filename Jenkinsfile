pipeline {
  triggers {
    pollSCM('* * * * *')
  }
  environment {
    UNITY_USERNAME_PASSWORD = credentials('unity-username-password')
    UNITY_SERIAL = credentials('unity-serial')
  }
  agent {
    docker {
      image 'unityci/editor:ubuntu-2022.3.9f1-mac-mono-3.0.0'
    }
  }
  stages {
    stage('Activate Unity License') {
      steps {
        sh 'Activating Unity License'

        sh 'Logging environment variables: $UNITY_USERNAME_PASSWORD_USR - $UNITY_USERNAME_PASSWORD_PWD - $UNITY_SERIAL'
      }
    }
  }
}
