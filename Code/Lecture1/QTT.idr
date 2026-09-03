-- A may be any type. The type name is erased before execution.
-- x must be used exactly once.
-- The obvious result, (x, x), is rejected because it uses x twice.
duplicate : {0 A : Type} → (1 x : A) → (A, A)
duplicate x = ?duplicate_right


my_id : a → a

not_id : {a : Type} → a → a

describe_type : Type → String
describe_type Int = "Int"
describe_type String = "String"
describe_type (List a) = "List of " ++ describe_type a
describe_type (a → b) = ?describe_arrow -- "Function"
describe_type _ = "Something else"
