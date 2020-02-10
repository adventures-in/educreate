# educreate

Education that scales where everyone can be both producer and consumer.

- Link to public resources
- Review, rate and categorise resources
- Create questions and challenges and build Learning Pathways around Topics
- Undertake Adventures to develop skills


## Commonly Used Commands 

```
flutter pub run build_runner build
remotedev --port 8000
```

## Using the Redux RemoteDevTools (RDT) 

Configure the [remote_dev_tools](https://pub.dev/packages/redux_remote_devtools) package: 
- find the IP address of the computer 
- edit `main.dart` to use the correct IP (use one of the strings in `utilities/mock.dart` or make a new one)

Run the [remotedev server](https://github.com/zalmoxisus/remotedev-server)

```
remotedev --port 8000
```

Open a web page with url:

```
http://localhost:8000
```

## Code gen with built_value 

After making changes to [built_value](https://github.com/google/built_value.dart) classes run the builder to generate the new code:

```
flutter pub run build_runner build
```

## Tests 

### Unit and Widget Tests 

```
flutter test
```

### Integration Tests 

To start the driver run:

```
flutter drive --target=test_driver/app.dart
```

If the automatically selected device is not the one you want, run: 

```
flutter devices
```

and copy the relevant ID and then run:

```
flutter drive --target=test_driver/app.dart -d <device_id>
```
