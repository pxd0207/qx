provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "nEPu:AP-SEOUL-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaav5x477gdcjjigmm6sybu7iqlb5pvqqjlushv2po66qepvk3a6gjq"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.ap-seoul-1.aaaaaaaag7ii6rzws43g5eea3krjka6p6ap3jusweybrdk74cgfzxrhfwxua"
	}
	display_name = "amd10"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC1GMIYBsmNsF8KeWbxdTx9ZRaPKbWY5UeqiaBLjU+Dmp5l6URsHjB1Ov9F8om3wExK8Zo5weCb5J9lGk+QB6//ELvKiDCXEgPItKRiTntynr5jlXgl4CGvtRgE0aR04LIsdav5maQwTNII0Sugp/NAfIpPXWXfNKfDdsTROKyB2h4USpk1ALmomcliwETB3dDIrQAAIHZbTQPnkoZ2/3nXpbu8adub3kINAHHHsfvaCpXv+X9anY7GhcVrVFrSeLsCID+OaEYI2c9VmqbkQWqmEWxEUd1+XpLmZ9K16rcHrB9lHomab5rJcc+V6V3BZ2a350V+NFQay9iSNhvmqw+F ssh-key-2021-09-18"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "24"
		ocpus = "4"
	}
	source_details {
		source_id = "ocid1.image.oc1.ap-seoul-1.aaaaaaaainoavneaw4y4ck2rbj6c3j7ra2rk3lvdxboi5jju6rbfydqkjb2q"
		source_type = "image"
	}
}
