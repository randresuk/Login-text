@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel panel-heading">
                    <h1 class="panel-title">Acceso a la aplicación</h1>
                </div>
                <div class="panel panel-body">
                    <form method="POST" action="{{ route('login') }}">
                        {{ csrf_field() }}
                        <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
                            <label for "email">Email</label>
                            <input class="form-control"
                            type="email" 
                            name="email" 
                            placeholder="Ingresa tu email">

                        {!! $errors->first('email', '<span class="help-block">:message</span>') !!}
                        </div>
                        <div class="form-group {{ $errors->has('password') ? 'has-error' : '' }}">
                            <label for "password">Contraseña</label>
                            <input class="form-control"
                            type="password" 
                            name="password" 
                            placeholder="Ingresa tu password">
                        {!! $errors->first('password', '<span class="help-block">:message</span>') !!}
                        </div>
                        <button class="btn btn-primary btn-block">Acceder</button>
                        <a href="{{ route('register') }}" class="btn btn-warning btn-block pull-right" >Registrarse</a>
                    </form>    
                </div>

            </div>
            
        </div>
      
    </div>
    
@endsection

