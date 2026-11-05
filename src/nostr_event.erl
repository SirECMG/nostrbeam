-module(nostr_event).

-include("nostr_event.hrl").
-export([from_map/1]).



from_map(#{
 <<"id">> := Id,          
 <<"pubkey">> := Pubkey,          
 <<"created_at">> := CreatedAt,          
 <<"kind">> := Kind,          
 <<"tags">> := Tags,          
 <<"content">> := Content,          
 <<"sig">> := Sig
}) ->
    #event{
       id = Id,
       pubkey = Pubkey,
       created_at = CreatedAt,
       kind = Kind,
       tags = Tags,
       content = Content,
       sig = Sig
      }.
