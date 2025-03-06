variable "admin_roles" {
  type    = list(string)
  default = [
    "62e90394-69f5-4237-9190-012177145e10", # Global Administrator
    "fe930be7-5e62-47db-91af-98c3a49a38b1", # Privileged Role Administrator
    "194ae4cb-b126-40b2-bd5b-6091b380977d"  # Security Administrator
  ]
}

variable "excluded_admin_roles" {
  type    = list(string)
  default = [
    "62e90394-69f5-4237-9190-012177145e10", # Global Administrator
    "fe930be7-5e62-47db-91af-98c3a49a38b1", # Privileged Role Administrator
    "194ae4cb-b126-40b2-bd5b-6091b380977d"  # Security Administrator
  ]
}
variable "guest_user_types" {
  type    = list(string)
  default = [
    "B2BCollaborationGuestUsers",
    "B2BCollaborationMemberUsers",
    "B2BDirectConnectUsers",
    "LocalGuestUsers",
    "ServiceProviderUsers",
    "OtherExternalUsers"
  ]
}

variable "admin_groups" {
  type = map(list(string))
  default = {
    admin_user_group          = ["<admin_user_group_id>","<admin_user_group_id2>"]
    emergency_access_group    = ["<emergency_access_group_id>","<emergency_access_group_id3>"]
    ca_exclude_group_gst_b    = ["<ca_exclude_group_gst_b_block_guests_id>","<admin_group2>"]
    guest_application_group   = ["<guest_application_user_group_id>","<admin_group2>"]
    guest_application_exclude = ["<guest_application_exclusion_group_id>","<admin_group2>"]
    guest_exclusion_group = ["random","<admin_group2>"]
    guest_exclusion_group_block_guests = ["random","<admin_group2>"]
    excluded_group_usr_s  = [
        "<Administrative user group>",
        "<CA exclude group - USR - S - Limit user sessions>"
      ]
      excluded_group_usr_b = ["<CA exclude group - USR - B - Block access via legacy auth>","<admin_group2>"]
      excluded_group_usr_b_insider_risk = ["<CA exclude group - USR - B - Block elevated insider risk>","<admin_group2>"]
     excluded_group_usr_g_term_of_use = ["<CA exclude group - USR - B - Require agreement to Terms of Use>","<admin_group2>"]
     excluded_group_usr_g_register_security_info =["<CA exclude group - USR - G - Register security info>","<admin_group2>"]
     excluded_group_usr_g_strong_auth = ["CA exclude group - USR - G - Require strong auth>","<admin_group2>"]
     excluded_group_usr_g_reauth =["<CA exclude group - USR - G - Risky sign-ins with strong auth>","<admin_group2>"]
  }
}

variable "location_ids" {
  type    = list(string)
  default = ["<Location_ID_1>", "<Location_ID_2>"]
}

variable "authentication_strength_policy_id" {
  type    = string
  default = "<PhishingResistantMFA_ID>"
}

variable "terms_of_use_id" {
  type    = string
  default = "<Terms_of_Use_ID>"
}

variable "authentication_strength_policy_id_usr_g" {
  type    = string
  default = "<PhishingResistantMFA_ID>"
}
variable "policy_state" {
  type    = string
  default = "enabled" # Change to "disabled" if needed
}
