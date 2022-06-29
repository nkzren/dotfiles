#!/bin/bash
set -e
CLI_CACHE="${HOME}/.aws/cli/cache"
SSO_CACHE="${HOME}/.aws/sso/cache"
AWS_CREDENTIALS_PATH="${HOME}/.aws/credentials"

# Cleaning SSO and CLI cache
rm -rf ${SSO_CACHE}
rm -rf ${CLI_CACHE}

PS3='Select profile: '
options=($(sed -nr 's/^\[profile (.*)\]/\1/p' ${HOME}/.aws/config))
if [ ${#options[@]} -eq 0 ]; then
    echo "No profiles found, run 'aws configure sso' first"
    exit 1
fi

select opt in "${options[@]}"; do
    echo "Selected ${opt}"
    aws sso login --profile ${opt}
    # Executing aws command to generated CLI cache
    aws sts get-caller-identity --profile ${opt} >> /dev/null
    AWS_PROFILE=${opt}
    echo "Run 'export AWS_PROFILE=${opt}' to set this profile as default"
    break
done

# find the latest CLI JSON file
json_file=$(ls -tr "${CLI_CACHE}" | tail -n1)
# use jq to dump stuff in the right place
aws_access_key_id=$(cat ${CLI_CACHE}/${json_file} | jq -r '.Credentials.AccessKeyId')
aws_secret_access_key=$(cat ${CLI_CACHE}/${json_file} | jq -r '.Credentials.SecretAccessKey')
aws_session_token=$(cat ${CLI_CACHE}/${json_file} | jq -r '.Credentials.SessionToken')

# Generate credentials file
cat > ${AWS_CREDENTIALS_PATH} <<EOL
[default]
aws_access_key_id = ${aws_access_key_id}
aws_secret_access_key = ${aws_secret_access_key}
aws_session_token = ${aws_session_token}

[${AWS_PROFILE}]
aws_access_key_id = ${aws_access_key_id}
aws_secret_access_key = ${aws_secret_access_key}
aws_session_token = ${aws_session_token}

EOL
