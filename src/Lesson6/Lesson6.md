# List vs Set Comparison

| Feature | List | Set |
|---------|------|-----|
| Order | Ordered, maintains insertion order | Unordered |
| Duplicates | Allows duplicates | No duplicates (automatically removed) |
| Access | Index-based (e.g., `list[0]`) | No index access |
| Declaration | `[]` or `List()` | `{}` or `Set()` |
| Common Methods | `.add()`, `.remove()`, `.insert()` | `.add()`, `.remove()`, `.contains()` |
| Unique Operations | `.sort()`, `.reversed` | `.union()`, `.intersection()`, `.difference()` |
| Use Cases | - Ordered collections<br>- When duplicates needed<br>- Sequential access<br>- When index matters | - Unique collections<br>- Fast lookup<br>- Set operations<br>- Removing duplicates |
| Performance | - O(1) for index access<br>- O(n) for contains check | - O(1) for contains check<br>- O(1) for add/remove |


