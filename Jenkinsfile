
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
		echo "Build"
                sh 'docker build . -f /var/jenkins_home/docker-build.dockerfile -t builder'
		echo 'building is over'
            }
        }
	stage('Test'){
		steps{
			echo 'Test'
			sh 'docker build . -f /var/jenkins_home/docker-test.dockerfile -t tester'
			sh 'docker run tester'
			echo 'done testing'
		}
	}
	stage('Deploy'){
		steps{
			echo 'Deploy'
			sh 'docker build .  -f /var/jenkins_home/docker-deploy.dockerfile -t deployer'
// 			def doc_containers = sh(returnStdout: true, script: 'docker container ps -aq').replaceAll("\n", " ") 
// 			if (doc_containers) {
       			sh 'docker stop $(docker ps -aq)'
//     			}
			sh 'docker run -d -p 8081:8080 deployer'
			echo 'deploy is done'
		}

	}
	stage('Publish'){
		agent{			
        		docker {
            			image 'builder:latest' 
            			args '-u root' 
     			   }
		}
		
		steps{
			echo 'publish'
			sh 'npm install -g npm@latest'
			sh 'npm config set registry http://registry.npmjs.org/'
			load '/var/jenkins_home/token'
			withEnv(["TOKEN=${NPM_TOKEN}"]) {
				
                    		sh 'echo "//registry.npmjs.org/:_authToken=${TOKEN}" >> ~/.npmrc'
                  		sh 'npm publish' 

               		}
			echo 'finally' 
		}
	}
    }
}
