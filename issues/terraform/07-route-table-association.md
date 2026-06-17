# Terraform issue: Wrong route table was associated

## What I was doing
I had separate public and private route tables and was testing connectivity.

## What happened
The subnet behaviour did not match the design because the subnet association was wrong.

## How I troubleshot it
I checked the `aws_route_table_association` resources and compared them with the route tables visible in AWS.

## Fix
I associated the public subnet with the Internet Gateway route and the private subnet with the NAT route.

## What I learned
Creating a route table is not enough; the correct subnet association is part of the design.
