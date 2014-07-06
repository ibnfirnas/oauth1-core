-record(oauth1_server_args_initiate,
    { realm               :: oauth1_resource:realm()
    , consumer_key        :: oauth1_credentials_client:id()
    , signature           :: oauth1_signature:value()
    , signature_method    :: oauth1_signature:method()
    , timestamp           :: oauth1_timestamp:t()
    , nonce               :: oauth1_nonce:t()

    % Client "ready" callback URI that will be called by the resource owner
    % withe temporary token and a verifier, after "authorize" step:
    , client_callback_uri :: oauth1_uri:t()
    }).

-record(oauth1_server_args_token,
    { realm            :: oauth1_resource:realm()
    , consumer_key     :: oauth1_credentials_client:id()
    , signature        :: oauth1_signature:value()
    , signature_method :: oauth1_signature:method()
    , timestamp        :: oauth1_timestamp:t()
    , nonce            :: oauth1_nonce:t()

    % Temporary token that was returned by "initiate":
    , temp_token       :: oauth1_credentials_tmp:id()

    % Authorization verification token that was returned by "authorize":
    , verifier         :: oauth1_verifier:t()
    }).

-record(oauth1_server_args_validate_resource_request,
    { realm            :: oauth1_resource:realm()
    , consumer_key     :: oauth1_credentials_client:id()
    , signature        :: oauth1_signature:value()
    , signature_method :: oauth1_signature:method()
    , timestamp        :: oauth1_timestamp:t()
    , nonce            :: oauth1_nonce:t()
    , token            :: oauth1_credentials_token:id()
    }).