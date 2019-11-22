FROM jetty:latest
ENV CS_ENTERPRISE 3.4.17
ENV CS_PM_JIRA 0.2.9
ADD --chown=jetty:jetty https://downloads.codescene.io/enterprise/${CS_ENTERPRISE}/codescene-enterprise-edition.war webapps/
ADD --chown=jetty:jetty https://downloads.codescene.io/pm/jira/${CS_PM_JIRA}/codescene-enterprise-pm-jira.war webapps/
USER root
RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		git
USER jetty