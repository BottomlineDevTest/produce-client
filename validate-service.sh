docker run  --rm \
-e "APPLICATION_BASE_URL=http://host.docker.internal:5502" \
-e "PUBLISH_ARTIFACTS=true" \
-e "PROJECT_NAME=capture-core-ocr" \
-e "PROJECT_GROUP=com.bottomline.ptx.capture-core" \
-e "PROJECT_VERSION=1.1.1171" \
-e "REPO_WITH_BINARIES_URL=http://host.docker.internal:8081/artifactory/libs-release-local" \
-e "EXTERNAL_CONTRACTS_ARTIFACT_ID=capture-core-ocr" \
-e "EXTERNAL_CONTRACTS_GROUP_ID=com.bottomline.ptx.capture-core" \
-e "EXTERNAL_CONTRACTS_VERSION=1.1.1171" \
-e "EXTERNAL_CONTRACTS_REPO_WITH_BINARIES_URL=git://https://github.com/BottomlineDevTest/produce-contracts.git" \
springcloud/spring-cloud-contract:2.2.0.BUILD-SNAPSHOT 

echo ""
echo "Waiting for 10 seconds"
sleep 10
