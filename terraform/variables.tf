variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "The ID of the VPC where the ECS cluster will be deployed"    
  type        = string
  default     = "vpc-09e0d3d45811dfa56"
}

variable "subnet_ids" {
  description = "A list of subnet IDs where the ECS services will be deployed"
  type        = list(string)
  default     = ["subnet-0f09a21c85350ebdc"]       
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "marketvector-ecs-cluster"
}

variable "service_name" {
  description = "The name of the ECS service"
  type        = string
  default     = "marketvector-ecs-service"
}

variable "container_port" {
  description = "The port on which the container will listen"
  type        = number
  default     = 80
}

variable "desired_count" {
  description = "The number of desired tasks for the ECS service"
  type        = number
  default     = 2
}
