generated at: 2014-06-28 12:50:22

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
   "result" : "{\"event_list\":[\"{\\\"event\\\":{\\\"catalog_fields\\\":\\\"circle_name\\\\tpen_name\\\\thomepage_url\\\",\\\"event_name\\\":\\\"Awesome Event\\\",\\\"start_epoch_time\\\":1403402400,\\\"event_id\\\":\\\"awesome_event\\\",\\\"end_epoch_time\\\":1403418600}}\"]}",
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
   "result" : "{\"event\":{\"start_epoch_time\":1403402400,\"end_epoch_time\":1403418600,\"event_id\":\"awesome_event\",\"catalog_fields\":\"circle_name\\tpen_name\\thomepage_url\",\"event_name\":\"Awesome Event\"}}",
   "jsonrpc" : "2.0",
   "id" : 1
}

```

