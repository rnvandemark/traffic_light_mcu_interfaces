# A message which consolidates all possible traffic light updates into a single
# message, so the traffic light MCU only needs a single subscription.

# The ground truth for current time that the MCU should use when regarding
# this message's data.
builtin_interfaces/Time timestamp

# Whether or not state_override should be used. If this is true, the other
# types of updates below are ignored.
bool state_override_set

# The state, packed into three bits, to use no matter where playback is at,
# only considered valid if state_override_set is high.
uint8 state_override

# Whether or not new_states should be used.
bool new_states_set

# A new collection of new states to start using. Only considered valid if
# new_states_set is set high, and this is ignored if state_override_set is set.
TrafficLightStates new_states

# Whether or not update should be used.
bool update_set

# The next playback update. Only considered valid if update_set is set high,
# and this is ignored if state_override_set is set.
SparsePlaybackUpdate update
