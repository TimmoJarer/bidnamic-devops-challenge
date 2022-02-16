resource "aws_instance" "webApp" {
     ami = var.AMI_ID
     instance_type = "t2.micro"
     key_name = "key"
     security_groups = [aws_security_group.webSG.name]

     tags = {
        Name = "webApp"

}
     connection {
        type = "ssh"
        user = "ec2-user"
        private_key = file("key.pem")
        host = aws_instance.webApp.public_ip
       } 

     provisioner "remote-exec" {
        
       /* command = "sudo yum install -y yum-utils"
        command = "sudo yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo"
        command = "sudo yum install -y docker-ce docker-ce-cli containerd.io"
        */
        
        inline = [
            "sudo yum install -y yum-utils",
            "sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo",
            "sudo yum install -y docker-ce docker-ce-cli containerd.io",
            "sudo systemctl start docker",
            "sudo yum install -y git",
            "cd /opt",
            "sudo git clone https://github.com/bidnamic/bidnamic-devops-challenge"

]
}   
 
}

output "IP" {
    value = aws_instance.webApp.public_ip

}


