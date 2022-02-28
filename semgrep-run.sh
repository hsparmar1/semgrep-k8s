#!/bin/bash
echo "Running Kubernetes Security Check..."
while getopts v: flag
do
    case "${flag}" in
        v) printEnv=${OPTARG};;
    esac
done

if [[ "$printEnv" == "verbose" ]];
then
	semgrep --verbose --config=/Users/Harjeet.S.Parmar/Development/semgrep/local-registry/kubernetes/kubernetes-insecure-skip-tls-verify-check.yaml semgrep-k8s
else
	semgrep --config=/Users/Harjeet.S.Parmar/Development/semgrep/local-registry/kubernetes/kubernetes-insecure-skip-tls-verify-check.yaml semgrep-k8s
fi



