# quote_app_daily_task

A new Flutter project.

<h2 align="center">1. Factory constructor & Model Class </h2>

## ⚫ Factory constructor :

- ```A special type of constructor that doesn't always create a new instance of its class.```
- Instead, it may return an existing instance or even an instance of a different class.
- This flexibility allows developers to control the object creation process more precisely.

### Advantages of Factory constructor :

- ```Custom instantiation logic```: With factory constructors, you can implement custom logic for creating instances of a class. This can be useful when you need to perform additional operations or validations before returning an object.
- ```Reuse of existing instances```: Factory constructors allow you to control the instantiation process, including whether a new instance should be created or an existing one should be reused. This can be particularly helpful in scenarios where you want to maintain a pool of instances or enforce singleton behavior.
- ```Returning subtypes```: Factory constructors can return instances of subclasses or different implementations based on certain conditions. This enables you to encapsulate complex instantiation logic and provide a clean interface for creating objects, without exposing the internal details of the class hierarchy.
- ```Immutable objects```: In cases where you want to create immutable objects, factory constructors can be used to return pre-existing instances or construct new ones with the same state. This helps in optimizing memory usage and improving performance by reducing the number of object allocations.
- ```Optimized object creation```: Factory constructors can optimize object creation by reusing instances or performing lazy initialization. This can lead to improved memory efficiency and reduced overhead, especially in scenarios where object creation is frequent or resource-intensive.

### Disadvantages of Factory constructor :

- ```Complexity```: Factory constructors can introduce additional complexity into your codebase. This can make the code harder to read and maintain, especially for developers who are not familiar with the factory pattern.
- ```Performance Overhead```: If not implemented carefully, factory constructors can introduce performance overhead. For instance, if the factory constructor involves expensive operations like reading from a database or performing complex calculations, it could slow down the creation of instances.
- ```Reduced Transparency```: Using factory constructors can sometimes make it less clear how instances are being created. This lack of transparency can lead to confusion, especially when debugging issues related to instance creation.
- ```Limited Use of Initializers```: In Dart, factory constructors cannot use initializer lists, which can limit their flexibility compared to regular constructors. This can be a limitation when you need to initialize final fields that rely on complex initialization logic.
- ```Instance Caching Pitfalls```: If factory constructors are used to implement caching (returning existing instances instead of creating new ones), this can lead to unexpected behavior if the cached instances are modified elsewhere in the code. It requires careful management to avoid such issues.

## ⚫ Modal class  :

- ```Nodel class which help us to determine the structure of the data,for eg — API responses.```
- We all know the concept of classes in Object Oriented Programming, similar to that , we can declare the variables, their data types and can write some methods to add some functionality.

### Advantages of Modal Class :

- ```Data Encapsulation```: Model classes encapsulate data and provide a clear structure for it.
- ```Code Reusability```: Model classes can be reused throughout the application, ensuring consistency.
- ```Ease of Serialization```: Model classes simplify the process of converting data to and from different formats, such as JSON.
- ``` Maintainability```: Keeping data-related logic within model classes makes the code easier to maintain and understand.

### Disadvantages of Modal Class :

- ```Increased Boilerplate Code```: Model classes can lead to a significant amount of boilerplate code, especially if you have many fields and need to implement methods for serialization, deserialization, equality checks, and other operations. This can make the codebase more cumbersome to manage.
- ```Code Duplication```: If you have similar models with slight variations, it can lead to code duplication. This may happen when different parts of the application require similar but slightly different data structures.
- ```Complexity in Changes```: If you need to change the structure of your data, such as adding, removing, or renaming fields, it can be complex and error-prone. All the places where the model is used must be updated accordingly, which can be time-consuming and may introduce bugs.
- ```Limited Flexibility```: Rigidly defined model classes can sometimes limit flexibility, especially when dealing with dynamic or evolving data structures. If your application frequently needs to handle data with varying structures, maintaining strict model classes can be challenging.

  
### Example
```
class User {
  final String name;
  final String email;
  final String role;

  // Private constructor
  User._({required this.name, required this.email, required this.role});

  // Factory constructor
  factory User({required String name, required String email, required String role}) {
    switch (role) {
      case 'admin':
        return User._(name: name, email: email, role: 'Administrator');
      case 'editor':
        return User._(name: name, email: email, role: 'Editor');
      case 'viewer':
        return User._(name: name, email: email, role: 'Viewer');
      default:
        return User._(name: name, email: email, role: 'Guest');
    }
  }

  // Optional: Override toString for easier debugging
  @override
  String toString() {
    return 'User{name: $name, email: $email, role: $role}';
  }
}

void main() {
  // Create users with different roles
  final admin = User(name: 'Alice', email: 'alice@example.com', role: 'admin');
  final editor = User(name: 'Bob', email: 'bob@example.com', role: 'editor');
  final viewer = User(name: 'Charlie', email: 'charlie@example.com', role: 'viewer');
  final guest = User(name: 'Dave', email: 'dave@example.com', role: 'unknown');

  // Print the users
  print(admin);
  print(editor);
  print(viewer);
  print(guest);
}

```


<h2 align="center">2-1. Quotes Screen </h2>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/quote_app_daily_task/assets/148859956/bff7ff4a-1f91-480a-89e0-dde0652fbddc" />
</div>
<div align="center">
<a href="https://github.com/HirenCodeMaster11/quote_app_daily_task/blob/master/lib/Random%20quote/random_quote.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

<h2 align="center">2-2. Alert Dilog Screen </h2>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/quote_app_daily_task/assets/148859956/7e98f8b0-c836-470a-a062-49c472da8ea8" />
</div>

<h2 align="center">2-3. Quote Recording </h2>

<h1 align="left"></h1>
<div align="center">
 <video src="https://github.com/HirenCodeMaster11/quote_app_daily_task/assets/148859956/4f9b258d-27d5-48b3-802a-e51a8f2d726e.mp4" type="video/mp4"> 
</video>
</div>

<h2 align="center">3. Toggle View Screen </h2>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/quote_app_daily_task/assets/148859956/a3899ae5-a0c5-40d9-afaa-6a60aa6febfa" />
</div>
<div align="center">
<a href="https://github.com/HirenCodeMaster11/quote_app_daily_task/blob/master/lib/Togal%20View/togalView.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>
<h2 align="center">2-3. Quote Recording </h2>

<h1 align="left"></h1>
<div align="center">
 <video src="https://github.com/HirenCodeMaster11/quote_app_daily_task/assets/148859956/9b3bcc83-a875-418e-9d1f-e6f4aa170e0e.mp4" type="video/mp4"> 
</video>
</div>
