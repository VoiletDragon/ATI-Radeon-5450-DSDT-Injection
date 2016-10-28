/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLJXlov7.aml, Fri Oct 28 23:36:54 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000D2 (210)
 *     Revision         0x02
 *     Checksum         0x03
 *     OEM ID           "ATI"
 *     OEM Table ID     "ATY"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20140926 (538183974)
 */
DefinitionBlock ("", "SSDT", 2, "ATI", "ATY", 0x00000000)
{
    Device (_SB.PCI0.PEG0.PEGP)
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
            Return (Local0)
        }
    }
}

