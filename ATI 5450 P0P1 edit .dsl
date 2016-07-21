Device (P0P1)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Device (GFX0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Store (Package (0x0C)
                            {
                                "device-id", 
                                Buffer (0x04)
                                {
                                     0xE0, 0x68, 0x00, 0x00                         
                                }, 

                                "ATY,DeviceID", 
                                Buffer (0x02)
                                {
                                     0xE0, 0x68                                     
                                }, 

                                "vendor-id", 
                                Buffer (0x04)
                                {
                                     0x02, 0x10, 0x00, 0x00                         
                                }, 

                                "ATY,VendorID", 
                                Buffer (0x02)
                                {
                                     0x02, 0x10                                     
                                }, 

                                "AAPL,slot-name", 
                                Buffer (0x07)
                                {
                                    "Slot-1"
                                }, 

                                "@0,AAPL,boot-display", 
                                Buffer (Zero) {}
                            }, Local0)
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }
            }
        }
