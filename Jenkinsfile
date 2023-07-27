pipeline 
  {
  agent any
    stages 
    {
      stage('Build Docker Image') 
      {
      steps 
        {
          script 
          {
            docker.withRegistry('https://registry.example.com', 'docker-credentials') 
            {
            def 
              customImage = docker.build("my_nginx_hello_world:${env.BUILD_NUMBER}")
              customImage.push()
             }
           }
          }
        }
      }
      post 
      {
        always 
        {
            // Cleanup: Remove Docker images and containers
            sh 'docker rmi my_nginx_hello_world:${env.BUILD_NUMBER} || true'
        }
      }
     }
