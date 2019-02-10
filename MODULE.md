## Required Inputs

The following input variables are required:

### cert\_path

Description: where to store the certificates

Type: `string`

### domain

Description: root domain for the kubernetes cluster

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### region

Description: digital ocean region

Type: `string`

Default: `"blr1"`

### size

Description: digital ocean size

Type: `string`

Default: `"1gb"`

## Outputs

The following outputs are exported:

### droplet\_ipv4

Description: Droplet IPV4 Address

### droplet\_ipv4\_private

Description: Droplet's private IPV4 Address

### droplet\_ipv6

Description: Droplet IPV6 Address

### droplet\_ipv6\_private

Description: Droplet private IPV6 Address

