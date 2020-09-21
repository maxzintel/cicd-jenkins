pipeline  {
  stages  {
    stage('Block master branch') {
      when {
        beforeAgent true
        branch 'master'
      }
      steps {
        error("Build of branch \"${BRANCH_NAME}\" not allowed")
      }
    }
    stage("Build/Tag/Push Dockerfile") {
      steps {
        sh """
          docker build -t cow:v0.${env.BUILD_NUMBER} .
          docker tag cow:v0.${env.BUILD_NUMBER} s1dequest/cow:v0.${env.BUILD_NUMBER}
          docker tag cow:v0.${env.BUILD_NUMBER} s1dequest/cow:latest
          docker push
        """
      }
    }
  }
}
