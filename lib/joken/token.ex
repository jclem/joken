defmodule Joken.Token do
  alias Joken.Signer

  @moduledoc """
  This is the data structure that holds the token state.
  """

  @type json_module        :: module | nil
  @type header             :: %{optional(binary) => any}
  @type claims             :: %{optional(binary) => any, optional(atom) => any}
  @type claim_function_map :: %{optional(binary) => function}
  @type error              :: binary | nil
  @type errors             :: [binary] | nil
  @type token              :: binary | nil
  @type signer             :: Signer.t | nil

  @type t :: %__MODULE__{
    json_module: module,
    claims: claims,
    claims_generation: claim_function_map,
    validations: claim_function_map,
    error: error,
    errors: errors,
    token: token,
    signer: signer
  }

  defstruct [json_module: nil,
             header: %{},
             claims: %{},
             claims_generation: %{},
             validations: %{},
             error: nil,
             errors: nil,
             token: nil,
             signer: nil]

end
