@extends('layouts.app')
@section('content')
<div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel panel-heading">
                    <h1 class="panel-title">Ingrese sus datos</h1>
                </div>
                <div class="panel panel-body">
                <form method="POST" action="{{ route('create') }}">
                        {{ csrf_field() }}
                        <div>
                            <label for "name">Nombre</label>
                            <input class="form-control"
                            type="name" 
                            name="name" 
                            placeholder="Ingrese su nombre">

                        <div >
                            <label for "type_document">Elija su tipo de documento</label>
                            <select class="form-control">
                            <option>Cédula</option>
                            <option>Tarjeta de identidad</option>
                            <option>Cédula extranjeria</option>
                            </select>
                        </div>
                        <div>
                            <label for "document">Documento de identidad</label>
                            <input class="form-control"
                            type="document" 
                            name="document" 
                            placeholder="Ingrese su numero de documento">
                        </div>
                        <div >
                            <label for "email">Email</label>
                            <input class="form-control"
                            type="email" 
                            name="email" 
                            placeholder="Ingrese su email">

                        </div>
                        <div >
                            <label for "password">Contraseña</label>
                            <input class="form-control"
                            type="password" 
                            name="password" 
                            placeholder="Ingrese su contraseña">
                        </div>
                </form>
                <div class="panel-footer">
                    <button class="btn btn-success btn-block">Crear</button>                    
                </div>
            </div>
        </div>    
</div>


@endsection

