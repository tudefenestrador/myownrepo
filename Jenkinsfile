pipeline {
  agent any
  stages {
    stage('Download source code') {
      steps {
        // Replace "your-repo" with the name of your repository and "v1.0.0" with the version you want to build
        git url: "https://github.com/tudefenestrador/myownrepo.git", branch: "second"
      }
    }
    stage('Build') {
      steps {
        // Replace this with the command(s) to build your software
        sh 'make'
      }
    }
  }
}

