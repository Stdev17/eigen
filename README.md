eigen

### how to start LanguageServer

```
julia --project=/home/leta/Github/eigen \
  -e "using LanguageServer, LanguageServer.SymbolServer; runserver()" \
  ~/.julia/environments/v1.5
```