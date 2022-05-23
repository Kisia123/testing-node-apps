pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
				      echo "Build"
//                 <!-- sh 'docker build . -f docker-build.dockerfile -t build' -->
            }
        }
	 	stage('Test'){
			steps{
				echo 'Test'
// 				sh 'docker build . -f docker-test.dockerfile -t test' -->
			}
		}
		stage('Deploy'){
			steps{
				echo 'Deploy'
				// sh 'docker build . -f docker-deploy.dockerfile -t deploy'
				// sh 'docker run 
				// sh 'docker stop $(docker ps -a -q)' 
			}

		}
		stage('Publish'){
			steps{
				echo 'publish'
			}
		}
    }
}
