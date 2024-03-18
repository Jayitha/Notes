#Rust

## 17/11/23

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

2. Use [`iter_mut`](https://doc.rust-lang.org/std/option/struct.IterMut.html) and `map`. The `iter_mut` iterator yields one value if it's the `Some` variant and none otherwise.

```rust
let _ = opt_x.iter_mut().map(|x: &mut X| x.mutate())
```

you have to assign the map result to something -- since iterators are lazy, the map doesn't get evaluated until it's assigned to something

## 25/11/23

Today on Reddit someone was discussing [integer wielding](https://internals.rust-lang.org/t/pre-rfc-implicit-number-type-widening/10432/19) and how code could be verbose and unreadable without wielding. I loved one comment which said

> I'd rather have an annoyance instead of a bug.

<blockquote class="reddit-embed-bq" data-embed-height="220"><a href="https://www.reddit.com/r/rust/comments/1833k19/comment/kamde3v/">Comment</a><br> by<a href="https://www.reddit.com/user/althahahayes/">u/althahahayes</a> from discussion<a href="https://www.reddit.com/r/rust/comments/1833k19/what_is_the_idiomatic_way_to_deal_with_mixed/"><no value=""></no></a><br> in<a href="https://www.reddit.com/r/rust/">rust</a></blockquote><script async="" src="https://embed.reddit.com/widgets.js" charset="UTF-8"></script>

## 14/02/24

I've always wondered how data is written to disk in a typical data management system. Do you use `mmap`? 

So, I'm going to take a quick peek at [RisingLight](https://github.com/risinglightdb/risinglight)

RisingLight uses `protobuf` to encode some data on disk

For some reason I had to reinstall rust-analyzer even though it ran this morning



