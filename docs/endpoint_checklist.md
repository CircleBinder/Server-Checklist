generated at: 2014-06-28 12:34:47

## Create checklist

create checklist

### Target Server

http://localhost

(Plack application)

### Parameters

__application/json__

- `id`: Number (e.g. 1)
- `jsonrpc`: String (e.g. "2.0")
- `method`: String (e.g. "create_checklist")
- `params`: JSON
    - `circle_id_list`: Array
        - Number (e.g. 1)
    - `event_id`: String (e.g. "awesome_event")

### Request

POST /

### Response

- Status:       200
- Content-Type: application/json

```json
{
   "jsonrpc" : "2.0",
   "result" : "{\"circles\":[{\"url_list\":[\"http://circlebinder.blog.jp\"],\"event_id\":\"awesome_event\",\"name\":\"CircleBinder\",\"pen_name\":\"ichigotake\",\"circle_id\":1}]}",
   "id" : 1
}

```

## Get checklist list in event

get checklist in event

### Target Server

http://localhost

(Plack application)

### Parameters

__application/json__

- `id`: Number (e.g. 1)
- `jsonrpc`: String (e.g. "2.0")
- `method`: String (e.g. "get_checklist_list")
- `params`: JSON
    - `event_id`: String (e.g. "awesome_event")

### Request

POST /

### Response

- Status:       200
- Content-Type: application/json

```json
{
   "id" : 1,
   "error" : {
      "message" : "Internal Error at /Users/ichigotake/Development/android/circlebinder/Server-Checklist/local/lib/perl5/JSON/RPC/Dispatch.pm line 180.\n",
      "code" : -32603
   },
   "jsonrpc" : "2.0"
}

```

## Get checklist

get checklist

### Target Server

http://localhost

(Plack application)

### Parameters

__application/json__

- `id`: Number (e.g. 1)
- `jsonrpc`: String (e.g. "2.0")
- `method`: String (e.g. "get_checklist")
- `params`: JSON
    - `checklist_id`: Number (e.g. 1)

### Request

POST /

### Response

- Status:       200
- Content-Type: application/json

```json
{
   "id" : 1,
   "jsonrpc" : "2.0",
   "result" : "{\"circles\":[{\"pen_name\":\"ichigotake\",\"circle_id\":1,\"event_id\":\"awesome_event\",\"name\":\"CircleBinder\",\"url_list\":[\"http://circlebinder.blog.jp\"]}]}"
}

```

## Update checklist

update checklist

### Target Server

http://localhost

(Plack application)

### Parameters

__application/json__

- `id`: Number (e.g. 1)
- `jsonrpc`: String (e.g. "2.0")
- `method`: String (e.g. "update_checklist")
- `params`: JSON
    - `checklist_id`: Number (e.g. 1)
    - `circle_id_list`: Array
        - Number (e.g. 1)

### Request

POST /

### Response

- Status:       200
- Content-Type: application/json

```json
{
   "jsonrpc" : "2.0",
   "result" : "{\"circles\":[{\"circle_id\":1,\"pen_name\":\"ichigotake\",\"url_list\":[\"http://circlebinder.blog.jp\"],\"event_id\":\"awesome_event\",\"name\":\"CircleBinder\"}]}",
   "id" : 1
}

```

## Delete checklist

delete checklist

### Target Server

http://localhost

(Plack application)

### Parameters

__application/json__

- `id`: Number (e.g. 1)
- `jsonrpc`: String (e.g. "2.0")
- `method`: String (e.g. "delete_checklist")
- `params`: JSON
    - `checklist_id`: Number (e.g. 1)

### Request

POST /

### Response

- Status:       200
- Content-Type: application/json

```json
{
   "result" : "{}",
   "jsonrpc" : "2.0",
   "id" : 1
}

```

