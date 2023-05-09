@extends('layouts.app')

@section('content')
    @hasposts
        @includeFirst(['partials.content-single-' . get_post_type(), 'partials.content-single'])
    @endhasposts
@endsection
