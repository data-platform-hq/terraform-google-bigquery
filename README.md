# Google BigQuery Terraform module
Terraform module for creation Google BigQuery datasets

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements
| Name                                                                      | Version   |
| ------------------------------------------------------------------------- | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0  |
| <a name="requirement_google"></a> [google](#requirement\_google)          | >= 4.24.0 |

## Providers
| Name                                                       | Version |
| ---------------------------------------------------------- | ------- |
| <a name="provider_google"></a> [google](#provider\_google) | 4.24.0  |

## Modules
No modules.

## Resources
| Name                                                                                                                            | Type     |
| ------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [google_bigquery_dataset.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset) | resource |

## Inputs
| Name                                                                                      | Description                                                                      | Type          | Default | Required |
| ----------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | ------------- | ------- | :------: |
| <a name="input_dataset_name"></a> [dataset\_name](#input\_dataset\_name)                  | A unique IDs for datasets                                                        | `set(string)` | [ ]     |   yes    |
| <a name="input_product_base_name"></a> [product\_base\_name](#input\_product\_base\_name) | Cloud resources base name (used to create services)                              | `string`      | n/a     |   yes    |
| <a name="input_location"></a> [location](#input\_location)                                | The geographic location where the dataset is located (for the main project)      | `string`      | n/a     |   yes    |
| <a name="input_delete_data"></a> [delete\_data](#input\_delete\_data)                     | If set to true, delete all tables in the dataset when the resource is destroying | `bool`        | true    |    no    |

## Outputs
| Name                                                                                                     | Description             |
| -------------------------------------------------------------------------------------------------------- | ----------------------- |
| <a name="raw_dataset"></a> [raw\_dataset](#output\_raw\_dataset)                                         | raw dataset ID          |
| <a name="raw_dp_dataset"></a> [raw\_dp\_dataset](#output\_raw\_dp\_dataset)                              | raw dp dataset ID       |
| <a name="refined_dataset"></a> [refined\_dataset](#output\_refined\_dataset)                             | refined dataset ID      |
| <a name="data_product_dataset"></a> [data\_product\_dataset](#output\_data\_product\_dataset)            | data_product dataset ID |
| <a name="data_product_dp_dataset"></a> [data\_product\_dp\_dataset](#output\_data\_product\_dp\_dataset) | refined dataset ID      |

<!-- END_TF_DOCS -->

## License
Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-google-bigquery/blob/main/LICENSE)