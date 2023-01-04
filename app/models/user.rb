class User < ApplicationRecord
  secure_search :email
  secure_text_search :email,
    filter_size: 2048, filter_term_bits: 6,
    bloom_filter_id: "4f108250-53f8-013b-0bb5-0e015c998817",
    tokenizer: { kind: :standard },
    token_filters: [ {kind: :downcase}, {kind: :ngram, min_length: 3, max_length: 8} ]

  self.ignored_columns = ["email"]
end
