generated at: 2014-06-28 12:34:48

## Get event list

get events

### Target Server

http://localhost

(Plack application)

### Parameters

__application/json__

- `id`: Number (e.g. 1)
- `jsonrpc`: String (e.g. "2.0")
- `method`: String (e.g. "get_event_list")

### Request

POST /

### Response

- Status:       200
- Content-Type: application/json

```json
{
   "error" : {
      "message" : "Internal Error at /Users/ichigotake/Development/android/circlebinder/Server-Checklist/local/lib/perl5/JSON/RPC/Dispatch.pm line 180.\n",
      "code" : -32603
   },
   "id" : 1,
   "jsonrpc" : "2.0"
}

```

## Get event

get events

### Target Server

http://localhost

(Plack application)

### Parameters

__application/json__

- `id`: Number (e.g. 1)
- `jsonrpc`: String (e.g. "2.0")
- `method`: String (e.g. "get_event")
- `parqams`: JSON
    - `event_id`: String (e.g. "awesome_event")

### Request

POST /

### Response

- Status:       200
- Content-Type: application/json

```json
{
   "error" : {
      "message" : "Internal Error at /Users/ichigotake/Development/android/circlebinder/Server-Checklist/local/lib/perl5/JSON/RPC/Dispatch.pm line 180.\n",
      "code" : -32603
   },
   "id" : 1,
   "jsonrpc" : "2.0"
}

```

