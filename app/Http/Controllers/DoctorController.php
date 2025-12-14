<?php

namespace App\Http\Controllers;

use App\Models\Doctor;
use App\Models\Location;
use Illuminate\Http\Request;

class DoctorController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->input('search');
        $locationFilter = $request->input('location');
        $doctors = Doctor::with(['location', 'specialization'])
            ->when($search, function ($query, $search) {
                $query->where('doctor_name', 'like', "%{$search}%")
                    ->orWhereHas('location', function ($q) use ($search) {
                        $q->where('location_name', 'like', "%{$search}%");
                    });
            })
            ->paginate(10) 
            ->withQueryString();
        
        $locations = Location::all();
        return view('home', compact('doctors', 'search', 'locations'));
    }

    public function show($id)
    {
        $doctor = \App\Models\Doctor::with(['location', 'specialization'])->findOrFail($id);
        $locations = Location::all();
        return view('doctors.show', compact('doctor', 'locations'));
    }

    public function filterByLocation($name)
    {
        $doctors = \App\Models\Doctor::whereHas('location', function ($q) use ($name) {
            $q->where('location_name', $name);
        })->with(['location', 'specialization'])->paginate(10);

        $locations = \App\Models\Location::select('location_name')
            ->groupBy('location_name') 
            ->orderBy('location_name')
            ->get();

        return view('home', [
            'doctors' => $doctors,
            'search' => null,
            'locations' => $locations,
            'selectedLocation' => $name, 
        ]);
    }
}