defmodule PhoenixApi do
 alias PhoenixApi.Trainer

 defdelegate create_trainer(params), to: Trainer.Create, as: :call
end
