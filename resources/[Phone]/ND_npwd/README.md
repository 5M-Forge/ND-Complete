# ND_npwd

### config.json
```json
{
  "PhoneAsItem": {
    "enabled": false,
    "exportResource": "my-core-resource",
    "exportFunction": "myCheckerFunction"
  },
  "general": {
    "useResourceIntegration": true,
    "toggleKey": "f1",
    "toggleCommand": "phone",
    "defaultLanguage": "en"
  },
  "profanityFilter": {
    "enabled": false,
    "badWords": ["esx"]
  },
  "database": {
    "useIdentifierPrefix": true,
    "playerTable": "characters",
    "identifierColumn": "license",
    "identifierType": "license",
    "profileQueries": true,
    "phoneNumberColumn": "phone_number"
  },
  "debug": {
    "level": "error",
    "enabled": true,
    "sentryEnabled": true
  }
}
```
