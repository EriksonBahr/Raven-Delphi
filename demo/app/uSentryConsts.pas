unit uSentryConsts;

interface


  (*
    {PROTOCOL}://{PUBLIC_KEY}:{SECRET_KEY}@{HOST}/{PATH}{PROJECT_ID}
    https://47e8d0f5914148db9fcbe4df0f9e6665:e27c43f5071b466c8064a55cc940e46c@sentry.io/718166
  *)
const
  SENTRY_PROT = 'HTTPS';
  SENTRY_PUB_KEY = '47e8d0f5914148db9fcbe4df0f9e6665';
  SENTRY_PRIV_KEY = 'e27c43f5071b466c8064a55cc940e46c';
  SENTRY_HOST = 'sentry.io';
  SENTRY_PROJ_ID = 718166;

implementation

end.
