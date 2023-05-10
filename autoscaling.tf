provider "aws" {
  region = "us-east-1"
}

resource "aws_launch_configuration" "decio" {
  name_prefix   = "decio-example"
  image_id      = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "decio-asg" {
  name                 = "decio-asg-13"
  launch_configuration = aws_launch_configuration.example.id
  min_size             = 1
  desired_capacity     = 2
  max_size             = 4

  vpc_zone_identifier = ["subnet-abc12345", "subnet-def67890"]

  tag {
    key                 = "decio"
    value               = "decio-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}
