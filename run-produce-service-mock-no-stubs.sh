docker run --rm \
-e "APPLICATION_BASE_URL=http://host.docker.internal:5502" \
-e "STUBRUNNER_IDS=com.ibm.developer:produce-service:+:stubs:9876" \
-e "STUBRUNNER_REPOSITORY_ROOT=git://https://github.com/BottomlineDevTest/produce-contracts.git" \
-e "STUBRUNNER_STUBS_MODE=REMOTE" \
-e "STUBRUNNER_GENERATE_STUBS=TRUE" \
-p "8083:8083" \
-p "9876:9876" \
springcloud/spring-cloud-contract-stub-runner:2.2.0.BUILD-SNAPSHOT 

echo "Waiting for 10 seconds"
sleep 10
