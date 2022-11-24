// Creates a peering between VPCs in the same account, but different regions
module "single_account_multi_region" {
  source = "../../"

  providers = {
    aws.this = aws.this
    aws.peer = aws.peer
  }

  this_vpc_id = var.requester_vpc_id
  peer_vpc_id = var.accepter_vpc_id

  auto_accept_peering = true

  tags = {
    Name        = "tf-single-account-multi-region"
    Environment = "Test"
    COST     = "HJTY56432"
  }
}
