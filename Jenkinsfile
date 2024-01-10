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

        sh 'echo $UNITY_USERNAME_PASSWORD_USR - $UNITY_USERNAME_PASSWORD_PSW - $UNITY_SERIAL > file.txt'
        sh 'cat > file.txt'

        sh 'echo Logging environment variables: $user_unity - $password_unity - $serial_unity'

        sh 'echo Logging environment variables from credentials: $UNITY_USERNAME_PASSWORD_USR - $UNITY_USERNAME_PASSWORD_PSW - $UNITY_SERIAL'

        sh '''#!/bin/bash
          /opt/unity/Editor/Unity -batchmode -quit -logFile /dev/stdout -nographics -username $user_unity -password $password_unity -serial $serial_unity
        '''
      }
    }
    stage('Return Unity License') {
      steps {
        sh 'echo Returning Unity License'

        sh 'echo Logging environment variables: $UNITY_USERNAME_PASSWORD_USR - $UNITY_USERNAME_PASSWORD_PSW - $UNITY_SERIAL'

        sh '''#!/bin/bash
          /opt/unity/Editor/Unity -batchmode -returnlicense -quit -logFile /dev/stdout -nographics -username $user_unity -password $password_unity
        '''
      }
    }
  }
}
