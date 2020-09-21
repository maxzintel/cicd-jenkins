pipeline  {
  stages  {
    stage("Build Dockerfile") {
      steps {
        docker build -t cow:v0.${env.BUILD_NUMBER} .
        docker tag cow:v0.${env.BUILD_NUMBER} s1dequest/cow:v0.${env.BUILD_NUMBER}
        docker tag cow:v0.${env.BUILD_NUMBER} s1dequest/cow:latest
        docker push
      }
    }
  }
}
