# RxCodyFire

[![Version](https://img.shields.io/cocoapods/v/RxCodyFire.svg?style=flat)](https://cocoapods.org/pods/RxCodyFire)
[![License](https://img.shields.io/cocoapods/l/RxCodyFire.svg?style=flat)](https://cocoapods.org/pods/RxCodyFire)
[![Platform](https://img.shields.io/cocoapods/p/RxCodyFire.svg?style=flat)](https://cocoapods.org/pods/RxCodyFire)

## Installation

via [CocoaPods](https://cocoapods.org)

```ruby
pod 'RxCodyFire'
```

## How to use

`Please see API declaration examples in the original CodyFire repo https://github.com/MihaelIsaev/CodyFire`

Let's imagine that you have ToDos app. Our goal is to get a list of ToDos.

Ok, let's declare a ToDo model in `Models/ToDoModel.swift`
```swift
struct ToDoModel: Codable {
    let id: UUID
    let text: String
    let createdAt: Date
}
```

Then declare your `API` class in `/API/API.swift` file
```swift
class API {
    typealias todo = ToDoController
}
```

Then declare your empty ToDo controller in `API/Controllers/ToDoController.swift` file
```swift
class ToDoController {}
```

And in a separated decorator `API/Controllers/ToDo+Search.swift` file declare a search endpoint
```swift
import RxCodyFire

extension ToDoController {
    struct Query: Codable {
        let text: String
    }
    static func search(_ text: String) -> APIRequest<[ToDo]> {
        return APIRequest("todo").query(Query(text: text))
    }
}
```

When everything is ready you're able to easily use it in your reactive code!
Please don't forget to `import RxCodyFire`
```swift
searchController.searchBar.rx.text.asObservable()
  .map { ($0 ?? "").lowercased() }
  .flatMap { API.todos.search($0).observable }
  .bind(to: tableView.rx.items(cellIdentifier: cellIdentifier)) { index, model, cell in
    cell.textLabel?.text = model.name
  }
  .disposed(by: disposeBag)
```

Nice, right?

`TIP: There is no need to also import CodyFire cause it's already imported by RxCodyFire`

## Author

Mihael Isaev, isaev.mihael@gmail.com

## License

RxCodyFire is available under the MIT license. See the LICENSE file for more info.
