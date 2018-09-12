variable "server_port" {
        description = "The port the server will use for HTTP requests"
        default = 8080
}

variable "elb_port_i" {
        description = "The port the elb will use for HTTP requests"
        default = 80
}

variable "elb_port_e" {
        description = "The port the elb will use for health checks"
        default = 0
}
