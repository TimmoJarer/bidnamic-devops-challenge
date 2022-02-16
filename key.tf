resource "aws_key_pair" "key" {
  key_name   = "key"
 /* public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC+yDc6C4XTbqxpkqrBHRduEZ5HpzfP3hTv0g95DEWjp2pQFMlBtA6wH4DM/Bml+1FuHqtUXNqhJPJXjQhKOzjSr0/apbgdjV2CRj23AmpGNZUOhyuy1IxMsX5Mx28hA9bG4TCXTy7/FwulA5NQG8C/FP0Ax5fpb7Y7xqjAot0WyNybBB8cf73wU8Xzc7Hv9072xuyEZ7e3k+xhoYKLcW/0tVIkCiwyqDRvCNTHFVYzmsiKhHLHjlG1xDJKOg+hMhDifgpakSmgaJcC/d7dI8j2byLntd4YEbGE6gQSHe5Xqy0CH4JUw9uaYjAB+3x2uwsEct7eCYOhBYzbKTJnXkohA4OJGc5H97jNOkXmdF10aU9q8XEPBES4j79VvPURLjqTxOtFprc3OoPT61ZC2r4Hgm2jOmhviJrHYxgxSqMIL1mEQO33luWdC69MUs5JWzgePt8u3Q+jrVAnXBDXi+ir8lGw/2EOEiRWChfq6IxF8ugzp5xFpFnFl+yvqR9CiGk= ec2-user@ip-172-31-45-214.eu-west-2.compute.internal"
*/

 public_key = file("key.pub")
}
