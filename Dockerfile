FROM jenkins/jenkins:lts
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
RUN install-plugins.sh github-branch-source workflow-aggregator
