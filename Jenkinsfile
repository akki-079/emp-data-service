pipeline{
    agent any
    stages{
        stage("checkout"){
            steps{
                git "https://github.com/akki-079/emp-data-service.git"
            }
        }
        stage("compile"){
            steps{
            sh "mvn clean compile"
            }
        }
        
         stage("package"){
            steps{
            sh "mvn package"
            }
        }
        
        stage("docker_build"){
            steps{
            sh "sudo docker build -t empdata:$BUILD_NUMBER ."
            }
		}
        
	}
}
