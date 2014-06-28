generated at: 2014-06-28 12:50:22

## Get circle

get circle

### Target Server

http://localhost

(Plack application)

### Parameters

__application/json__

- `id`: Number (e.g. 1)
- `jsonrpc`: String (e.g. "2.0")
- `method`: String (e.g. "get_circle")
- `params`: JSON
    - `circle_id`: Number (e.g. 1)

### Request

POST /

### Response

- Status:       200
- Content-Type: application/json

```json
{
   "id" : 1,
   "result" : "{\"circle\":{\"name\":\"CircleBinder\",\"url_list\":[\"http://circlebinder.blog.jp\"],\"circle_id\":1,\"event_id\":\"awesome_event\",\"pen_name\":\"ichigotake\"}}",
   "jsonrpc" : "2.0"
}

```

## Get circle list in event

get circle list in event

### Target Server

http://localhost

(Plack application)

### Parameters

__application/json__

- `id`: Number (e.g. 1)
- `jsonrpc`: String (e.g. "2.0")
- `method`: String (e.g. "get_circle_list")
- `params`: JSON
    - `event_id`: String (e.g. "awesome_event")

### Request

POST /

### Response

- Status:       200
- Content-Type: application/json

```json
{
   "jsonrpc" : "2.0",
   "id" : 1,
   "result" : "{\"circles\":[{\"url_list\":[\"http://circlebinder.blog.jp\"],\"name\":\"CircleBinder\",\"circle_id\":1,\"pen_name\":\"ichigotake\",\"event_id\":\"awesome_event\"}]}"
}

```

