# Factory Method Pattern

In software engineering, the `Factory Method` pattern is a creational design pattern that uses factory methods to deal with the problem of creating objects without specifying the exact class of the object that will be created.

## PROBLEM STATEMENT

Imagine that you are creating a logistics management application. The first version of your app can only handle transportation by trucks, so the bulk of your code lives inside the Truck class.

After a while, your app becomes pretty popular. Each day you receive dozens of requests from sea transportation companies to incorporate sea logistics into the app.

Great news, right? But how about the code?

At present, most of your code is coupled to the Truck class. Adding Ships into the app would require making changes to the entire codebase. Moreover, if later you decide to add another type of transportation to the app, you will probably need to make all of these changes again.
As a result, you will end up with pretty nasty code, riddled with conditionals that switch the app’s behavior depending on the class of transportation objects.

## SOLUTION

The `Factory Method` pattern suggests that you replace direct object construction calls (ie. using the `new` operator) with calls to a special factory method.

NOTE: the objects are still created via the `new` operator, but it’s being called from within the `factory method`. Objects returned by a factory method are often referred to as `products`.

## EXAMPLE

In the example used here, a `file` factory method is responsible for creating objects (products) of a specific type (text reader, JSON reader or CSV reader). It encapsulates the object creation logic and allows subclasses or different implementations (`FileReaders::Text`, `FileReaders::CSV`, `FileReaders::JSON`) to provide concrete instances of objects (products) based on some conditions or parameters (in this case, `file extension`).

## BENEFIT

By using the `Factory method` pattern, the code achieves flexibility and extensibility, as new file types can be supported by simply adding new file service type classes without modifying the existing code.

## USAGE

- cd to the `factory_method_pattern` directory
- Enter the appropriate parameter `file_path` in the `params` hash
- run `ruby endpoint.rb`
