#include "gdexample.h"
#include <godot_cpp/core/class_db.hpp>

void godot::GDExample::_bind_methods() {
}

godot::GDExample::GDExample() {
	// Initialize any variables here.
	time_passed = 0.0;
}

godot::GDExample::~GDExample() {
	// Add your cleanup here.
}

void godot::GDExample::_ready() {
	start_position = get_position();
}

void godot::GDExample::_process(double delta) {
	time_passed += delta;

	godot::Vector2 offset = godot::Vector2(100.0 * sin(time_passed * 2.0), 100.0 * cos(time_passed * 1.5));

	set_position(start_position + offset);
}
