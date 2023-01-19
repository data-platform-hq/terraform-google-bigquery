# Google BigQuery Terraform module
Terraform module for creation Google BigQuery datasets

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements
| Name                                                                      | Version  |
| ------------------------------------------------------------------------- | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_google"></a> [google](#requirement\_google)          | = 4.24.0 |

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
| Name                                                                                      | Description                                                                                     | Type          | Default             | Required |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ------------- | ------------------- | :------: |
| <a name="input_dataset_name"></a> [dataset\_name](#input\_dataset\_name)                  | Unique names for datasets.                                                                      | `set(string)` | n/a                 |   yes    |
| <a name="input_product_base_name"></a> [product\_base\_name](#input\_product\_base\_name) | Cloud resources base name (used to create services).                                            | `string`      | n/a                 |   yes    |
| <a name="input_location"></a> [location](#input\_location)                                | The geographic location where the dataset is located (for the main project).                    | `string`      | n/a                 |   yes    |
| <a name="input_env"></a> [env](#input\_env)                                               | Variable to mark the environment of the resource (used to create services).                     | `string`      | n/a                 |   yes    |
| <a name="input_delete_data"></a> [delete\_data](#input\_delete\_data)                     | If set to true, delete all tables in the dataset when the resource is destroying.               | `bool`        | <pre><br>true</pre> |    no    |
| <a name="input_labels"></a> [labels](#input\_labels)                                      | The labels associated with this dataset. You can use these to organize and group your datasets. | `map(string)` | <pre><br>{}</pre>   |    no    |

## Outputs
| Name                                                      | Description           |
| --------------------------------------------------------- | --------------------- |
| <a name="output_dataset"></a> [dataset](#output\_dataset) | The ID of the dataset |

<!-- END_TF_DOCS -->

## License
Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-google-bigquery/blob/main/LICENSE)
