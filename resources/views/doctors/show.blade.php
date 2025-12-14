@extends('layout.app')

@section('content')
<div class="container">

    <div class="mb-4">
        <img src="{{ $doctor->photo_url }}" class="rounded shadow-sm mb-3" alt="{{ $doctor->doctor_name }}"
            style="max-height: 300px; width: auto; object-fit: cover;">

        <h2 class="fw-bold">{{ $doctor->doctor_name }}</h2>
        <p class="text-muted mb-1">
            🩺 <strong>{{ $doctor->specialization->specialization_name }}</strong>
        </p>
        <p>{{ $doctor->description }}</p>
    </div>

    <h4 class="mt-4">Practice Location</h4>

    @if($doctor->location)
    <div class="accordion" id="accordionLocation">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
                    aria-expanded="true" aria-controls="collapseOne">
                    {{ $doctor->location->location_name }}
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                data-bs-parent="#accordionLocation">
                <div class="accordion-body">
                    <p><strong>Address:</strong> E-Clinic {{ $doctor->location->location_name }}
                    </p>
                    <p><small>Created: {{ $doctor->location->created_at->format('d M Y, H:i') }}</small></p>
                </div>
            </div>
        </div>
    </div>
    @else
    <p><em>No location available for this doctor.</em></p>
    @endif

    <a href="{{ route('home') }}" class="btn btn-secondary mt-4">← Back to List</a>
</div>
@endsection