FROM jetty:latest
ENV CS_ENTERPRISE 3.4.17
ENV CS_PM_JIRA 0.2.9
ADD https://downloads.codescene.io/enterprise/${CS_ENTERPRISE}/codescene-enterprise-edition.war webapps/
ADD https://downloads.codescene.io/pm/jira/${CS_PM_JIRA}/codescene-enterprise-pm-jira.war webapps/