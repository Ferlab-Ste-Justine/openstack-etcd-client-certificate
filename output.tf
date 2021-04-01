output key {
  value = tls_private_key.key.private_key_pem
}

output key_algorithm {
  value = tls_private_key.key.algorithm
}

output certificate {
  value = tls_locally_signed_cert.certificate.cert_pem
}