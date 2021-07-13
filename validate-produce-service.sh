docker run  --rm \
-e "APPLICATION_BASE_URL=http://host.docker.internal:5502" \
-e "PUBLISH_ARTIFACTS=true" \
-e "PROJECT_NAME=produce-service" \
-e "PROJECT_GROUP=com.ibm.developer" \
-e "REPO_WITH_BINARIES_URL=http://host.docker.internal:8081/artifactory/libs-release-local" \
-e "PROJECT_VERSION=0.0.1-SNAPSHOT" \
-e "EXTERNAL_CONTRACTS_GROUP_ID=com.ibm.developer" \
-e "EXTERNAL_CONTRACTS_ARTIFACT_ID=produce-service" \
-e "EXTERNAL_CONTRACTS_VERSION=0.0.1-SNAPSHOT" \
-e "EXTERNAL_CONTRACTS_REPO_WITH_BINARIES_URL=git://https://github.com/BottomlineDevTest/produce-contracts.git" \
springcloud/spring-cloud-contract:2.2.0.BUILD-SNAPSHOT 

echo "Waiting for 10 seconds"
sleep 10
