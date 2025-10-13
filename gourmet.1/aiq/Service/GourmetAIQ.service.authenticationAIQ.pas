unit GourmetAIQ.service.authenticationAIQ;

interface

uses  REST.Authenticator.OAuth;

function AjustaAutenticacaoAIQ(vOAuth2Authenticator: TOAuth2Authenticator; vtoken: string): TOAuth2Authenticator;

implementation

function AjustaAutenticacaoAIQ(vOAuth2Authenticator: TOAuth2Authenticator; vtoken: string): TOAuth2Authenticator;
begin

  vOAuth2Authenticator.TokenType := TOAuth2TokenType.ttBEARER;
  vOAuth2Authenticator.AccessToken := vtoken;
  result := vOAuth2Authenticator;

end;

end.
