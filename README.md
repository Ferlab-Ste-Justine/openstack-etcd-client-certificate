# Renaming

Going forward, this terraform module will be located at: https://github.com/Ferlab-Ste-Justine/etcd-client-certificate

This repo will be in read-only mode, kept around to prevent terraform orchestration not yet migrated to the new repo from breaking.

# About

Given a certificate authority that is recognized by an etcd cluster, this terraform module will provision a client certificate that can be used to authenticate against the etcd cluster as a given user.

# Usage

## Variables

This module takes the following variables as input:

- organization: The organization of the certificate that will be provisioned. Defaults to **ferlab**
- username: username of the user the certificate is for
- validity_period: Validity period of the certificate in hours. Defaults to 100 years.
- early_renewal_period: Period in hours after which terraform will try to renew the certificate. Defaults to 99 years.
- ca: Certicate authority. Should be a map containing the following keys: key, key_algorithm, certificate

## Output

The module outputs the following values:

- key: Private key used with the client certificate
- key_algorithm: Algorithm of the private key used with the client certificate
- certificate: Client certificate