@extends('layouts.app')

@section('content')
    @include('partials.page-header')

    @include('partials.notfound')

    @hasposts
        @includeFirst(['partials.content-' . get_post_type(), 'partials.content'])
    @endhasposts

    {!! get_the_posts_navigation() !!}
@endsection

@section('sidebar')
    @include('sections.sidebar')
@endsection
