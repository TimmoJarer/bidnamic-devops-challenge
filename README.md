# bidnamic-devops-challenge
Bidnamic's DevOps Coding Challenge

Please follow the instructions below to deploy this app:

1)Clone this repo

2)Generate an SSH key using(place both the private and public key in main folder. Make sure they are in the .gitignore list to prevent them from being pushed to GitHub):

  ssh-keygen -P "" -t rsa -b 4096 -m pem -f key.pem              *The private key must be named key.pem and the public key, key.pem.pub
  
3)Set the required environment variables as shown below:

  export AWS_ACCESS_KEY_ID="anaccesskey"
  
  export AWS_SECRET_ACCESS_KEY="asecretkey"
  
4)Initialize terraform using:

  terraform init
  
5)Deploy app with:

  terraform apply
