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
        sh 'echo Activating Unity License'

        sh 'echo Logging environment variables: $UNITY_USERNAME_PASSWORD_USR - $UNITY_USERNAME_PASSWORD_PSW - $UNITY_SERIAL'

        sh '$workspace/activate_unity.sh'
      }
    }
    stage('Return Unity License') {
      steps {
        sh 'echo Returning Unity License'

        sh 'echo Logging environment variables: $UNITY_USERNAME_PASSWORD_USR - $UNITY_USERNAME_PASSWORD_PSW - $UNITY_SERIAL'

        sh '$workspace/deactivate_unity.sh'
      }
    }
  }
}
