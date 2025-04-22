# terraform-aws-networking

[![GitHub contributors][ico-contributors]][link-contributors]
[![GitHub last commit][ico-last-commit]][link-last-commit]
[![License: MPL 2.0][ico-license]][link-license]

A Terraform module to provision and manage AWS VPC networking resources.

[Contributing](#contributing) | [Usage](#usage) | [Feedback](#feedback) | [License](#license) | [About Code for Romania](#about-code-for-romania)

## Contributing

This project is built by amazing volunteers and you can be one of them! Here's a list of ways in [which you can contribute to this project][link-contributing]. If you want to make any change to this repository, please **make a fork first**.

If you see something that doesn't quite work the way you expect it to, open an Issue. Make sure to describe what you _expect to happen_ and _what is actually happening_ in detail.

If you would like to suggest new functionality, open an Issue and mark it as a __[Feature request]__. Please be specific about why you think this functionality will be of use. If you can, please include some visual description of what you would like the UI to look like, if you are suggesting new UI elements.

## Usage

```hcl
module "networking" {
  # source = "./aws-networking"
}
```

### Inputs

| Name            | Description                         | Required | Type           | Default                                            |
| --------------- | ----------------------------------- | :------: | -------------- | -------------------------------------------------- |
| namespace       | The name of the project.            |   yes    | `string`       |                                                    |
| vpc_cidr        | The IPv4 CIDR block for the VPC.    |    no    | `string`       | `10.0.0.0/16`                                      |
| public_subnet   | List of public subnet CIDR blocks.  |    no    | `list(string)` | `["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]`    |
| private_subnets | List of private subnet CIDR blocks. |    no    | `list(string)` | `["10.0.10.0/24", "10.0.20.0/24", "10.0.30.0/24"]` |

### Outputs

| Name                       | Description                      | Type           |
| -------------------------- | -------------------------------- | -------------- |
| vpc_id                     | The ID of the VPC                | `string`       |
| vpc_cidr_block             | The IPv4 CIDR block for the VPC. | `string`       |
| public_subnet_ids          | List of public subnet IDs.       | `list(string)` |
| private_subnet_ids         | List of private subnet IDs.      | `list(string)` |
| public_availability_zones  | Public Availability Zones.       | `list(string)` |
| private_availability_zones | Private Availability Zones.      | `list(string)` |
| public_route_table_ids     | Public Route Table IDs.          | `string`       |
| private_route_table_ids    | Private Route Table IDs.         | `string`       |

## Feedback

* Request a new feature on GitHub.
* Vote for popular feature requests.
* File a bug in GitHub Issues.
* Email us with other feedback contact@code4.ro

## License

This project is licensed under the MPL 2.0 License - see the [LICENSE](LICENSE) file for details

## About Code for Romania

Started in 2016, Code for Romania is a civic tech NGO, official member of the Code for All network. We have a community of around 2.000 volunteers (developers, ux/ui, communications, data scientists, graphic designers, devops, it security and more) who work pro-bono for developing digital solutions to solve social problems. #techforsocialgood. If you want to learn more details about our projects [visit our site][link-code4] or if you want to talk to one of our staff members, please e-mail us at contact@code4.ro.

Last, but not least, we rely on donations to ensure the infrastructure, logistics and management of our community that is widely spread across 11 timezones, coding for social change to make Romania and the world a better place. If you want to support us, [you can do it here][link-donate].


[ico-contributors]: https://img.shields.io/github/contributors/code4romania/terraform-aws-networking.svg?style=for-the-badge
[ico-last-commit]: https://img.shields.io/github/last-commit/code4romania/terraform-aws-networking.svg?style=for-the-badge
[ico-license]: https://img.shields.io/badge/license-MPL%202.0-brightgreen.svg?style=for-the-badge

[link-contributors]: https://github.com/code4romania/terraform-aws-networking/graphs/contributors
[link-last-commit]: https://github.com/code4romania/terraform-aws-networking/commits/main
[link-license]: https://opensource.org/licenses/MPL-2.0
[link-contributing]: https://github.com/code4romania/.github/blob/main/CONTRIBUTING.md

[link-code4]: https://www.code4.ro/en/
[link-donate]: https://code4.ro/en/donate/
