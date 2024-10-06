# Abstract Factory Pattern

The abstract factory pattern, on the other hand, is a creational design pattern used to create families of related or dependent objects without specifying their concrete classes. It provides an interface for creating objects in a super class, but allows subclasses to alter the types of objects that will be created.

## PROBLEM STATEMENT:

Imagine that you are creating a furniture shop simulator. Your code consists of classes that represent:

1. A family of related products, say: Chair + Sofa + Table.

2. Several variants of this family. For example, products Chair + Sofa + Table are available in these variants: Modern, Victorian, ArtDeco.

You need a way to create individual furniture objects so that they match other objects of the same family.

Also, you don’t want to change existing code when adding new products or families of products to the program. Furniture vendors update their catalogs very often, and you wouldn’t want to change the core code each time it happens.

## SOLUTION:

- The first thing the Abstract Factory pattern suggests is to explicitly declare interfaces for each distinct product of the product family (e.g., chair, sofa or table).
- Then you can make all variants of products follow those interfaces. For example, all chair variants can implement the Chair interface; all table variants can implement the Table interface, and so on.
- The next move is to declare the `Abstract Factory` — an interface with a list of creation methods for all products that are part of the product family. These methods must return abstract product types represented by the interfaces we extracted previously: Chair, Sofa, Table and so on.
- Now, how about the product variants? For each variant of a product family, we create a separate factory class based on the AbstractFactory interface. `A factory is a class that returns products of a particular kind`. For example, the `ModernFurnitureFactory` can only create `ModernChair`, `ModernSofa` and `ModernTable` objects.

## EXAMPLE:

In the example used here, a `Furniture::Factory` factory class is responsible for creating objects (products) of a specific type (Chair, Table) and variant (Regular, Modern, Vintage). It provides an interface that encapsulates the object creation logic and allows subclasses or different implementations (`Furniture::Regular::Chair`, `Furniture::Modern::Chair`, `Furniture::Vintage::Chair`, `Furniture::Regular::Table`, `Furniture::Modern::Table`, `Furniture::Vintage::Table`) to provide concrete instances of objects (products) based on some conditions or parameters (in this case, `product` and `category`).

## BENEFIT

By using the `Abstract Factory` pattern, the code achieves flexibility and extensibility, as new furniture types and variants can be supported by simply adding new furniture product type and variant classes without modifying the existing code.

## USAGE

- cd to the `abstract_factory_pattern` directory
- Enter the appropriate parameters `product` and `category` in the `params` hash
- run `ruby endpoint.rb`
