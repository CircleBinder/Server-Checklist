generated at: 2014-06-28 12:47:57

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
   "jsonrpc" : "2.0",
   "result" : "{\"event_list\":[\"{\\\"event\\\":{\\\"event_name\\\":\\\"Awesome Event\\\",\\\"end_epoch_time\\\":1403418600,\\\"event_id\\\":\\\"awesome_event\\\",\\\"start_epoch_time\\\":1403402400,\\\"catalog_fields\\\":\\\"circle_name\\\\tpen_name\\\\thomepage_url\\\"}}\"]}",
   "id" : 1
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
   "id" : 1,
   "result" : "{\"event\":{\"start_epoch_time\":1403402400,\"event_id\":\"awesome_event\",\"end_epoch_time\":1403418600,\"event_name\":\"Awesome Event\",\"catalog_fields\":\"circle_name\\tpen_name\\thomepage_url\"}}",
   "jsonrpc" : "2.0"
}

```

