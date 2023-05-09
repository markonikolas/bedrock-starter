@extends('layouts.app')

@section('content')
    @include('partials.page-header')

    @include('partials.notfound');

    @hasposts
        @include('partials.content-search')
    @endhasposts

    {!! get_the_posts_navigation() !!}
@endsection
