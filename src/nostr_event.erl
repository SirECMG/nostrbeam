-module(nostr_event).

-include("nostr_event.hrl").

-export([
    from_map/1,
    serialize/1
]).

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

% notice id and sig are not used
serialize(#event{
    id = Id,
    pubkey = Pubkey,
    created_at = CreatedAt,
    kind = Kind,
    tags = Tags,
    content = Content,
    sig = Sig
}) ->
    io:format("~p ~p ~n", [Id, Sig]),
    EventData = [
        0,
        Pubkey,
        CreatedAt,
        Kind,
        Tags,
        Content
    ],

    iolist_to_binary(json:encode(EventData)).
