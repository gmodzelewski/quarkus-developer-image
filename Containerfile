FROM quay.io/devfile/universal-developer-image:latest
# Some options:
# quay.io/devfile/base-developer-image:ubi9-latest
# quay.io/devfile/universal-developer-image:latest
# quay.io/devfile/universal-developer-image:ubi8-latest

RUN curl -fsSL "https://get.sdkman.io" | bash \
    && bash -c ". /home/user/.sdkman/bin/sdkman-init.sh \
    && sed -i "s/sdkman_auto_answer=false/sdkman_auto_answer=true/g" /home/user/.sdkman/etc/config \
    && sed -i "s/sdkman_auto_env=false/sdkman_auto_env=true/g" /home/user/.sdkman/etc/config \
    && sdk install quarkus"
