# Terraform Repeating sequence in a range Module

Provides the `next` number in a sequence using a current number `n` and the last number of the sequence `le_n`. The output `next` increments by 1 starting from 0 to (including) `le_n` and repeats after `le_n` is reached. Based on https://gist.github.com/yogeshlonkar/af72bbd4c32cffa69aa6d238e03aa586

## Table of Contents

<!--TOC-->

- [Requirements](#requirements)
- [Inputs](#inputs)
- [Outputs](#outputs)

<!--TOC-->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~>1 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| input | The input with the current number `n` and the last number `le_n` of the sequence.<br><br>  `n` can be any integer between -1 and `le_n`. -1 is initial value which results `next` number to be 0. | <pre>object({<br>    n    = number<br>    le_n = number<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| next | The next number in the sequence |
<!-- END_TF_DOCS -->
