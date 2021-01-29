resource "aws_instance" "windows-1-instance" {
    ami = "ami-09a53ec51d0027c28"
    instance_type = "t2.micro"

    subnet_id = aws_subnet.lesson7-subnet-public-1.id

    vpc_security_group_ids = [aws_security_group.lesson7-http-rdp-winrm.id]

    key_name = "itea"

    user_data = file("winrm.ps")

    tags = {
      "Name" = "windows-1-instance"
    }


  
}

resource "aws_instance" "windows-2-instance" {
    ami = "ami-09a53ec51d0027c28"
    instance_type = "t2.micro"

    subnet_id = aws_subnet.lesson7-subnet-public-1.id

    vpc_security_group_ids = [aws_security_group.lesson7-http-rdp-winrm.id]

    key_name = "itea"

    user_data = file("winrm.ps")

    tags = {
      "Name" = "windows-2-instance"
    }
}