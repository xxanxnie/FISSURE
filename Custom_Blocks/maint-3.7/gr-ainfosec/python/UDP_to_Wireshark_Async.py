#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 
# Copyright 2021 <+YOU OR YOUR COMPANY+>.
# 
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
# 
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this software; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
# 

import numpy
from gnuradio import gr
import pmt
import subprocess
import socket

class UDP_to_Wireshark_Async(gr.basic_block):
    """
    docstring for block UDP_to_Wireshark_Async
    """
    def __init__(self, port):
        gr.basic_block.__init__(self,
            name="UDP_to_Wireshark_Async",
            in_sig=[],
            out_sig=[])
            
        # Create UDP Socket
        self.udp_port = port
        self.udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        
        # Find Wireshark
        out = subprocess.Popen(['which', 'wireshark'],stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
        stdout,stderr = out.communicate()
        wireshark_cmd = str(stdout.replace('\n',''))
        p = subprocess.Popen([wireshark_cmd, '-k', '-i', 'lo'])
            
        self.message_port_register_in(pmt.intern("in"))
        self.set_msg_handler(pmt.intern("in"), self.handle_msg)


    def handle_msg(self,msg):
        # Convert PDU to Bytes
        print "HANDLE MESSAGE"

        # PDUs
        try:
            cdr = pmt.to_python(pmt.cdr(msg))
            cdr = numpy.getbuffer(cdr)
            
        # Message Bytes ('\x00\xAA\xFF...')
        except:
            cdr = pmt.to_python(msg)
        
        # Send Message
        self.udp_socket.sendto(cdr,("127.0.0.1", self.udp_port))
        #self.udp_socket.sendto(bytes(bytearray(cdr)),("127.0.0.1", self.udp_port))

