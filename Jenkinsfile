
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
		echo "Build"
                sh 'docker build . -f /var/jenkins_home/docker-build.dockerfile -t build'
            }
        }
	stage('Test'){
		steps{
			echo 'Test'
			sh 'docker build . -f /var/jenkins_home/docker-test.dockerfile -t test'
		}
	}
	stage('Deploy'){
		steps{
			echo 'Deploy'
// 				<!-- sh 'docker build . -f docker-deploy.dockerfile -t Deploy'
// 				sh 'docker stop $(docker ps -a -q)'
// 				sh 'docker run  -d -p 3000:80 Deploy -->
		}

	}
	stage('Publish'){
		steps{
			echo 'publish'
		}
	}
}
}
