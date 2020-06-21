pipeline
{
agent any
stages
{
stage('scm-checkout')
{
steps
{
git branch: 'master', url: 'https://github.com/Jaynath1992/Push_Image_To_Docker_Hub.git'
}
}

stage('build docker image')
{
steps
{
sh 'docker build -t jaynath120/python_selenium:${BUILD_NUMBER} .'
}
}

stage('Push docker image to docker hub')
{
steps
{
sh 'docker login -u jaynath120 -p JayPatel#125'
sh 'docker push jaynath120/python_selenium:${BUILD_NUMBER}'
}
}

}
}
