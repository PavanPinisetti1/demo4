ACCEPT PROJECT_NAME CHAR PROMPT 'Enter Project Name: '
ACCEPT APP_ID CHAR PROMPT 'Enter Application ID: '


project init -name &PROJECT_NAME -schemas WKSP_EBS2CLOUD_MIGRATION

project export -o apex.&APP_ID