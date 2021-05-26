# <div align="center"> Symbols</div>

Symbol is a Ruby datatype that is similar to strings but has a few properties that makes them an ideal data type for referring to **constant values**.

---

> Unlike strings, symbols are unique and they refer to the same object whenever they are used.

```ruby
:hello.object_id
=> 2035548
:hello.object_id
=> 2035548
:hello.object_id
=> 2035548

"hello".object_id
=> 220
"hello".object_id
=> 240
"hello".object_id
=> 260
```

* ### A string can be converted to a symbol using **to_sym** method.

```ruby
“hello”.to_sym
=> :hello

"world".to_sym
=> :world
```

* ### Symbols are immutable. In a sense symbols are more like integers than strings. They are immutable, unique and also immediate. A variable to which a symbol is bound provides the actual symbol not a reference to it.

```ruby
s = :hello
=> :hello
s
=> :hello
s.object_id
=> 2035548
:hello.object_id
=> 2035548
```

* ### Symbols are also useful as method arguments

```ruby
attr_accessor :name
attr_reader :age
```

* ### Symbols are useful as keys in a hash

```ruby
nj = { :name => "Naman Jain", :location => "India" }
=> {:name=>"Naman Jain", :location=>"India"}

nj[:name]
=> "Naman Jain"
siva[:location]
=> "India"
```
