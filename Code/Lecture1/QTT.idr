-- any_type is the domain: value has this type.
-- Idris infers any_type and erases it before execution.
-- value must be used exactly once.
-- The obvious result, (value, value), is rejected because it uses value twice.
duplicate : (1 value : any_type) → (any_type, any_type)
duplicate value = ?duplicate_right


my_id : a → a

not_id : {a : Type} → a → a

describe_type : Type → String
describe_type Int = "Int"
describe_type String = "String"
describe_type (List a) = "List of " ++ describe_type a
describe_type (a → b) = ?describe_arrow -- "Function"
describe_type _ = "Something else"
