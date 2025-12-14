@extends('layout.app')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Doctor List</h2>
</div>

@if(isset($selectedLocation))
<h4 class="mb-3 text-muted">Doctors in {{ $selectedLocation }}</h4>
@endif

<div class="row">
    @forelse($doctors as $doctor)
    <div class="col-md-6 mb-3">
        <div class="card">
            <div class="card-body">
                <h5>{{ $doctor->doctor_name }}</h5>

                <p class="text-muted mb-2">
                    🩺 {{ $doctor->specialization->specialization_name }}
                </p>

                <div class="mb-3">
                    <small class="text-secondary fw-bold">PRACTICE AT:</small><br>
                    📍 {{ $doctor->location->location_name }}
                </div>

                <div class="mt-2">
                    <a href="{{ route('doctors.show', $doctor->doctor_id) }}"
                        class="btn btn-sm btn-outline-primary">Detail</a>
                </div>
            </div>
        </div>
    </div>
    @empty
    <div class="col-12">
        <p class="text-center text-muted">No doctors found.</p>
    </div>
    @endforelse
</div>

<div class="mt-3 d-flex justify-content-center">
    <nav aria-label="page_nav">
        <ul class="pagination">
            {{-- Previous --}}
            @if ($doctors->onFirstPage())
            <li class="page-item disabled"><span class="page-link">Previous</span></li>
            @else
            <li class="page-item"><a class="page-link" href="{{ $doctors->previousPageUrl() }}">Previous</a></li>
            @endif

            {{-- Pages --}}
            @foreach ($doctors->links()->elements[0] ?? [] as $page => $url)
            <li class="page-item {{ $page == $doctors->currentPage() ? 'active' : '' }}">
                <a class="page-link" href="{{ $url }}">{{ $page }}</a>
            </li>
            @endforeach

            {{-- Next --}}
            @if ($doctors->hasMorePages())
            <li class="page-item"><a class="page-link" href="{{ $doctors->nextPageUrl() }}">Next</a></li>
            @else
            <li class="page-item disabled"><span class="page-link">Next</span></li>
            @endif
        </ul>
    </nav>
</div>
@endsection