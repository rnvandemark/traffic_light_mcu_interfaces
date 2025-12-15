# A message which consolidates all possible traffic light updates into a single
# message, so the traffic light MCU only needs a single subscription.

# The ground truth for current time that the MCU should use when regarding
# this message's data.
builtin_interfaces/Time timestamp

# Whether or not to start ignoring a previous state override.
#bool clear_state_override

# Whether or not state_override should be used.
bool state_override_set

# The state, packed into three bits, to use no matter where playback is at,
# only considered valid if state_override_set is high.
uint8 state_override

# Whether or not new_states and discard_current_states should be used.
bool new_states_set

# Whether or not any current states data should be discarded. Only considered
# valid if new_states_set is set high.
bool discard_current_states

# A new collection of new states to start using. Only considered valid if
# new_states_set is set high.
TrafficLightStates new_states

# Whether or not update should be used.
bool update_set

# The next playback update. Only considered valid if update_set is set high.
SparsePlaybackUpdate update
