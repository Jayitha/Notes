#Rust

**17/11/23**

If you want to modify a `Some` value behind an `Option` variable in place, there are a few ways to do it. Let's assume we want to modify a variable `opt_x` of type `Option<X>`

```rust
opt_x: Option<X>
```

where type `X` has an associated method that mutates the value in place i.e. 

```rust
impl X {
	pub fn mutate(&mut self) {...}
}
```

1. Use pattern matching.
```rust
if let Some(ref mut x: &mut X) = opt_x {
	x.mutate()
}
```

2. Use `iter_mut` and `map`. The `iter_mut` iterator yields one value if it's the `Some` variant and none otherwise.

```rust
let _ = opt_x.iter_mut().map(|x: &mut X| x.mutate())
```

you have to assign the map result to something -- since iterators are lazy, the map doesn't get evaluated until it's assigned to something

