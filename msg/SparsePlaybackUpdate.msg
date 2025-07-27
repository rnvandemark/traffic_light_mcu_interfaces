# The ground truth of time for the traffic light MCU, as well as whether or not
# playback is currently paused or has just finished.

# The most recent timestamp of the active sound file.
builtin_interfaces/Duration current_timestamp

# Whether or not playback has just finished.
bool is_finished

# Whether or not playback is currently paused.
bool is_paused
