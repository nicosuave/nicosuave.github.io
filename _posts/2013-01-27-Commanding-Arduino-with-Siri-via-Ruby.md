---
title: Commanding Arduino with Siri via Ruby
date: 2013-01-27 19:00:00
layout: post
tags:
 - Projects
<!-- header_image: /images/headers/arduino.jpg -->
video_url: http://www.youtube.com/embed/l1QvFahhBUU
---

Your iPhone can't make your toast, eh? Thanks to a SiriProxy plugin that I wrote this weekend (hooray for weekend projects) [siriproxy-arduino](http://github.com/nicoritschel/siriproxy-arduino.git), maybe it can. Austinbv from Pivotal Labs provided the code for the 'dino' gem, which allows for simple control of Arduino via Ruby.

While the above video is a simple proof of concept merely controlling the Arduino's onboard LED, consider my plugin to be a boilerplate for your Arduino & Siri based home automation projects.

For quick reference, I posted the contents of my basic plugin so you can see how simple it is to get started. Jumpstart Labs has a nice [guide](http://tutorials.jumpstartlab.com/projects/arduino/introducing_arduino.html) on getting started with Dino. Controlling an LED is not very exciting, sure. You get to be the creative one :)

    class SiriProxy::Plugin::Arduino < SiriProxy::Plugin
      def initialize(config)
        #if you have custom configuration options, process them here!
        board = Dino::Board.new(Dino::TxRx.new)
        @led = Dino::Components::Led.new(pin:13, board: board)
      end

      listen_for /light(s)? on/i do
        @led.send :on
        say "Light on"
        request_completed #always complete your request! Otherwise the phone will "spin" at the user!
      end

      listen_for /light(s)? off/i do
        @led.send :off
        say "Light off" 
        request_completed #always complete your request! Otherwise the phone will "spin" at the user!
      end
    end


Keep your eyes peeled for more posts, like a siri-enabled coffee maker and easy install instructions.

