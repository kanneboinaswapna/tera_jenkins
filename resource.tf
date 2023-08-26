resource "aws_vpc" "myvpc" {
 cidr_range = "10.0.0.0/16"
}
 resource "aws_subnet" "mysubnets" {
   count = length(var.subnet_cidr)
   vpc_id = aws_vpc.myvpc.id
   cidr_block = var.subnet_cidr[count.index]
   tags = {
      Name = var.subnet_name[count.index]
    }
   depends_on = [
     aws_vpc.myvpc
   ]
}
