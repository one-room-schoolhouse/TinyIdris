-- value_type may be any type. The type name is erased before execution.
-- value must be used exactly once.
-- The obvious result, (value, value), is rejected because it uses value twice.
duplicate : {0 value_type : Type} → (1 value : value_type) → (value_type, value_type)
duplicate value = ?duplicate_right


my_id : a → a

not_id : {a : Type} → a → a

describe_type : Type → String
describe_type Int = "Int"
describe_type String = "String"
describe_type (List a) = "List of " ++ describe_type a
describe_type (a → b) = ?describe_arrow -- "Function"
describe_type _ = "Something else"
