FROM mcr.microsoft.com/dotnet/sdk:10.0

# Install Java JDK (required for Android SDK) and unzip
RUN apt-get update && apt-get install -y openjdk-21-jdk unzip \
    && ln -sfn "$(dirname $(dirname $(readlink -f $(which javac))))" /usr/lib/jvm/java-21

# Install MAUI workloads (maui-android only — iOS/macOS targets cannot install on Linux)
RUN dotnet workload install maui-android

# Install Android SDK command-line tools
ENV ANDROID_HOME=/opt/android-sdk
ENV JAVA_HOME=/usr/lib/jvm/java-21
RUN mkdir -p ${ANDROID_HOME}/cmdline-tools \
    && wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip \
    && unzip commandlinetools-linux-*.zip -d ${ANDROID_HOME}/cmdline-tools \
    && mv ${ANDROID_HOME}/cmdline-tools/cmdline-tools ${ANDROID_HOME}/cmdline-tools/latest \
    && rm commandlinetools-linux-*.zip

# Accept licenses and install SDK components via sdkmanager
# The container is linux/amd64 so sdkmanager correctly downloads x86_64 binaries
RUN yes | ${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager --licenses && \
    ${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager \
      "platform-tools" \
      "platforms;android-36" \
      "build-tools;36.0.0"

ENV PATH="${PATH}:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools"

