# As tarefas se baseiam nas funções de geração para fornecer melhores relatórios de erro e introspecção:

iex(1)> Task.start fn -> raise "oops" end
{:ok, #PID<0.55.0>}

15:22:33.046 [error] Task #PID<0.55.0> started from #PID<0.53.0> terminating
** (RuntimeError) oops
    (stdlib) erl_eval.erl:668: :erl_eval.do_apply/6
    (elixir) lib/task/supervised.ex:85: Task.Supervised.do_apply/2
    (stdlib) proc_lib.erl:247: :proc_lib.init_p_do_apply/3
Function: #Function<20.99386804/0 in :erl_eval.expr/5>
    Args: []

# Ao Utilizar Tasks vamos obter melhores relatórios de erros
