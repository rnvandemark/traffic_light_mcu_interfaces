# A list of states the traffic light should be in at corresponding timestamps.
# Because each state is coded as three bits, the number of total bits in
# state_data divided by three must equal the size of the state_timestamps
# vector.

# The number of states actually packed into this message.
uint8 num_states

# The timestamps that the traffic light should adopt a new state.
builtin_interfaces/Duration[16] state_timestamps

# The list of states of the traffic light, coded as groups of three bits for
# each state.
uint8[6] state_data
