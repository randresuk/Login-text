@extends('layouts.app')
@section('content')
<div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel panel-heading">
                    <h1 class="panel-title">Bienvenido {{auth()->user()->name}}</h1>
                </div>

                <div class="panel-body">
                   <strong>Email:</strong> {{ auth()->user()->email }}
                </div>
                
                <div class="panel-body">
                    <label for="ControlFile">Cargar archivo</label>
                    <input type="file" class="form-control-file" id="ControlFile">
                    
                        <form method="POST" action="{{ route('logout') }}">
                        {{ csrf_field() }}
                        <button class="btn btn-warning">Cargar</button>
                        </form>
                </div>

                <div class="panel-footer">                    
                    <button href="{{ route('dashboard') }}" class="btn btn-primary btn-block">Listar</button>
                </div>
              
                <div class="panel-footer">
                    <form method="POST" action="{{ route('logout') }}">
                    {{ csrf_field() }}
                    <button class="btn btn-danger btn-block">Cerrar sesión</button>
                    </form>
                </div>
            </div>
        </div>    
</div>


@endsection



