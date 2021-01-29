resource "aws_elb" "lesson7-elb" {
  name               = "lesson7-elb"

  subnets = [aws_subnet.lesson7-subnet-public-1.id]

  security_groups = [ aws_security_group.lesson7-http-rdp-winrm.id ]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  instances                   = [aws_instance.windows-1-instance.id,aws_instance.windows-2-instance.id]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "elb-lesson7"
  }
}