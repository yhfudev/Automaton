#!/bin/sh -x

clang-format -i Automaton.cpp
clang-format -i Automaton.h

clang-format -i Atm_analog_in.cpp
clang-format -i Atm_bit.cpp
clang-format -i Atm_button.cpp
clang-format -i Atm_command.cpp
clang-format -i Atm_comparator.cpp
clang-format -i Atm_condition.cpp
clang-format -i Atm_encoder.cpp
clang-format -i Atm_fade.cpp
clang-format -i Atm_multiplier.cpp
clang-format -i Atm_led.cpp
clang-format -i Atm_pulse.cpp
clang-format -i Atm_step.cpp
clang-format -i Atm_timer.cpp

tools/tinyfy.pl Atm_analog_in.cpp > Att_analog_in.cpp
tools/tinyfy.pl Atm_analog_in.hpp > Att_analog_in.hpp
tools/tinyfy.pl Atm_button.cpp > Att_button.cpp
tools/tinyfy.pl Atm_button.hpp > Att_button.hpp
tools/tinyfy.pl Atm_command.cpp > Att_command.cpp
tools/tinyfy.pl Atm_command.hpp > Att_command.hpp
tools/tinyfy.pl Atm_comparator.cpp > Att_comparator.cpp
tools/tinyfy.pl Atm_comparator.hpp > Att_comparator.hpp
tools/tinyfy.pl Atm_condition.cpp > Att_condition.cpp
tools/tinyfy.pl Atm_condition.hpp > Att_condition.hpp
tools/tinyfy.pl Atm_encoder.cpp > Att_encoder.cpp
tools/tinyfy.pl Atm_encoder.hpp > Att_encoder.hpp
tools/tinyfy.pl Atm_fade.cpp > Att_fade.cpp
tools/tinyfy.pl Atm_fade.hpp > Att_fade.hpp
tools/tinyfy.pl Atm_multiplier.cpp > Att_multiplier.cpp
tools/tinyfy.pl Atm_multiplier.hpp > Att_multiplier.hpp
tools/tinyfy.pl Atm_led.cpp > Att_led.cpp
tools/tinyfy.pl Atm_led.hpp > Att_led.hpp
tools/tinyfy.pl Atm_pulse.cpp > Att_pulse.cpp
tools/tinyfy.pl Atm_pulse.hpp > Att_pulse.hpp
tools/tinyfy.pl Atm_step.cpp > Att_step.cpp
tools/tinyfy.pl Atm_step.hpp > Att_step.hpp
tools/tinyfy.pl Atm_timer.cpp > Att_timer.cpp
tools/tinyfy.pl Atm_timer.hpp > Att_timer.hpp

(
chmod -x *.cpp *.hpp *.h *.ino
chmod -x */*.cpp */*.hpp */*.h */*.ino
chmod -x */*/*.cpp */*/*.hpp */*/*.h */*/*.ino
) 2> /dev/null

git add .

