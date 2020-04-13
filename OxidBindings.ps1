$sourceOxidBindings = @"
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Text;
namespace PingCastle.ExtractedCode
{
    public class OxidBindings
    {

        private static byte[] MIDL_ProcFormatStringx86 = new byte[] { 
            0x00,0x48,0x00,0x00,0x00,0x00,0x00,0x00,0x04,0x00,0x32,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x08,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x48,0x00,0x00,0x00,0x00,0x01,0x00,0x04,0x00,0x32,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x08,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x48,
            0x00,0x00,0x00,0x00,0x02,0x00,0x04,0x00,0x32,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x08,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x48,0x00,
            0x00,0x00,0x00,0x03,0x00,0x04,0x00,0x32,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x08,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x48,0x00,0x00,
            0x00,0x00,0x04,0x00,0x04,0x00,0x32,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x08,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x48,0x01,0x00,0x00,
            0x00,0x05,0x00,0x14,0x00,0x32,0x00,0x00,0x00,0x00,0x00,0x4c,0x00,0x45,0x04,0x08,0x03,0x01,0x00,0x00,0x00,0x00,0x00,0x12,0x21,0x04,0x00,0x06,0x00,
            0x13,0x20,0x08,0x00,0x0e,0x00,0x50,0x21,0x0c,0x00,0x08,0x00,0x70,0x00,0x10,0x00,0x10,0x00,0x00
        };

        private static byte[] MIDL_ProcFormatStringx64 = new byte[] { 
            0x00,0x48,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x00,0x32,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x0a,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x48,0x00,0x00,0x00,0x00,0x01,0x00,0x08,0x00,0x32,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x0a,0x01,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x48,0x00,0x00,0x00,0x00,0x02,0x00,0x08,0x00,0x32,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x0a,0x01,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x48,0x00,0x00,0x00,0x00,0x03,0x00,0x08,0x00,0x32,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x0a,0x01,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x48,0x00,0x00,0x00,0x00,0x04,0x00,0x08,0x00,0x32,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x0a,0x01,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x48,0x01,0x00,0x00,0x00,0x05,0x00,0x28,0x00,0x32,0x00,0x00,0x00,0x00,0x00,0x4c,0x00,0x45,0x04,0x0a,0x03,0x01,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x12,0x21,0x08,0x00,0x06,0x00,0x13,0x20,0x10,0x00,0x0e,0x00,0x50,0x21,0x18,0x00,0x08,0x00,0x70,0x00,0x20,0x00,0x10,
            0x00,0x00};

        private static byte[] MIDL_TypeFormatStringx86 = new byte[] { 
            0x00,0x00,0x11,0x04,0x02,0x00,0x15,0x01,0x04,0x00,0x06,0x06,0x5c,0x5b,0x11,0x14,0x02,0x00,0x12,0x00,0x0e,0x00,0x1b,0x01,0x02,0x00,0x07,0x00,0xfc,
            0xff,0x01,0x00,0x06,0x5b,0x17,0x01,0x04,0x00,0xf0,0xff,0x06,0x06,0x5c,0x5b,0x11,0x0c,0x08,0x5c,0x00
        };

        private static byte[] MIDL_TypeFormatStringx64 = new byte[] { 
            0x00,0x00,0x11,0x04,0x02,0x00,0x15,0x01,0x04,0x00,0x06,0x06,0x5c,0x5b,0x11,0x14,0x02,0x00,0x12,0x00,0x0e,0x00,0x1b,0x01,0x02,0x00,0x07,0x00,0xfc,
            0xff,0x01,0x00,0x06,0x5b,0x17,0x01,0x04,0x00,0xf0,0xff,0x06,0x06,0x5c,0x5b,0x11,0x0c,0x08,0x5c,0x00};

        public OxidBindings()
        {
            Guid interfaceId = new Guid("99fcfec4-5260-101b-bbcb-00aa0021347a");
            if (IntPtr.Size == 8)
            {
                InitializeStub(interfaceId, MIDL_ProcFormatStringx64, MIDL_TypeFormatStringx64, null, 0, 0);
            }
            else
            {
				InitializeStub(interfaceId, MIDL_ProcFormatStringx86, MIDL_TypeFormatStringx86, null, 0, 0);
            }
        }

        ~OxidBindings()
        {
            freeStub();
        }

        [StructLayout(LayoutKind.Sequential)]
        private struct COMVERSION
        {
            public UInt16 MajorVersion;
            public UInt16 MinorVersion;
        }

        public List<string> ServerAlive2Ps1(string server)
        {
            List<string> stringBindings;
            Int32 a = ServerAlive2(server, out stringBindings);
            return stringBindings;
        }

        public Int32 ServerAlive2(string server, out List<string> stringBindings)
        {
            IntPtr hBind;
            stringBindings = new List<string>();
            Int32 status = Bind(server, out hBind);
            if (status != 0)
                return status;
            try
            {
                status = RpcEpResolveBinding(hBind, rpcClientInterface);
                if (status != 0)
                    return status;

                COMVERSION comversion = new COMVERSION();
                comversion.MajorVersion = 5;
                comversion.MinorVersion = 1;
                UInt32 reserved = 0;
                IntPtr DualStringArray = IntPtr.Zero;
                try
                {
                    if (IntPtr.Size == 8)
                    {
                        IntPtr result = NdrClientCall2x64(GetStubHandle(), GetProcStringHandle(150), hBind, ref comversion, out DualStringArray, ref reserved);
                        if (result != IntPtr.Zero)
                            return result.ToInt32();
                    }
                    else
                    {
                        GCHandle h2 = GCHandle.Alloc(comversion, GCHandleType.Pinned);

                        GCHandle h3 = GCHandle.Alloc(DualStringArray, GCHandleType.Pinned);
                        GCHandle h4 = GCHandle.Alloc(reserved, GCHandleType.Pinned);
                        IntPtr tempValuePointer = h3.AddrOfPinnedObject();
                        try
                        {
                            IntPtr result = CallNdrClientCall2x86(140, hBind, h2.AddrOfPinnedObject(), tempValuePointer, h4.AddrOfPinnedObject());
                            if (result != IntPtr.Zero)
                                return result.ToInt32();
                            // each pinvoke work on a copy of the arguments (without an out specifier)
                            // get back the data
                            DualStringArray = Marshal.ReadIntPtr(tempValuePointer);

                        }
                        finally
                        {
                            h2.Free();
                            h3.Free();
                            h4.Free();
                        }
                    }
                    Int16 wSecurityOffest = Marshal.ReadInt16(new IntPtr(DualStringArray.ToInt64() + 2));
                    int offset = 4;
                    while (offset < wSecurityOffest * 2)
                    {
                        string value = Marshal.PtrToStringUni(new IntPtr(DualStringArray.ToInt64() + offset + 2));
                        stringBindings.Add(value);
                        offset += value.Length * 2 + 2 + 2;
                    }
                    FreeMemory(DualStringArray);
                }
                catch (SEHException)
                {
                    return Marshal.GetExceptionCode();
                }
            }
            finally
            {
                Unbind(IntPtr.Zero, hBind);
            }
            return 0;
        }
        
        [DllImport("Rpcrt4.dll", EntryPoint = "RpcBindingFromStringBindingW",
        CallingConvention = CallingConvention.StdCall,
        CharSet = CharSet.Unicode, SetLastError = false)]
        private static extern Int32 RpcBindingFromStringBinding(String bindingString, out IntPtr lpBinding);
        
        [DllImport("Rpcrt4.dll", EntryPoint = "NdrClientCall2", CallingConvention = CallingConvention.Cdecl,
            CharSet = CharSet.Unicode, SetLastError = false)]
        private static extern IntPtr NdrClientCall2x86(IntPtr pMIDL_STUB_DESC, IntPtr formatString, IntPtr args);
        
        [DllImport("Rpcrt4.dll", EntryPoint = "RpcBindingFree", CallingConvention = CallingConvention.StdCall,
            CharSet = CharSet.Unicode, SetLastError = false)]
        private static extern Int32 RpcBindingFree(ref IntPtr lpString);
        
        [DllImport("Rpcrt4.dll", EntryPoint = "RpcStringBindingComposeW", CallingConvention = CallingConvention.StdCall,
            CharSet = CharSet.Unicode, SetLastError = false)]
        private static extern Int32 RpcStringBindingCompose(
            String ObjUuid, String ProtSeq, String NetworkAddr, String Endpoint, String Options,
            out IntPtr lpBindingString
            );
        
        [DllImport("Rpcrt4.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Unicode, SetLastError = false)]
        static extern Int32 RpcEpResolveBinding(IntPtr Binding, IntPtr RpcClientInterface);
            
        [DllImport("Rpcrt4.dll", EntryPoint = "RpcBindingSetOption", CallingConvention = CallingConvention.StdCall,SetLastError= false)]
        internal static extern Int32 RpcBindingSetOption(IntPtr Binding,UInt32 Option, UInt32 OptionValue);
		
        [DllImport("Rpcrt4.dll", EntryPoint = "NdrClientCall2", CallingConvention = CallingConvention.Cdecl,
		   CharSet = CharSet.Unicode, SetLastError = false)]
		static extern IntPtr NdrClientCall2x64(IntPtr pMIDL_STUB_DESC, IntPtr formatString, IntPtr Handle, ref COMVERSION i1, out System.IntPtr i2, ref uint i3);
        
        [DllImport("Rpcrt4.dll", EntryPoint = "RpcBindingSetAuthInfoW", CallingConvention = CallingConvention.StdCall,
            CharSet = CharSet.Unicode, SetLastError = false)]
        static extern Int32 RpcBindingSetAuthInfo(IntPtr Binding, String ServerPrincName,
                                                             UInt32 AuthnLevel, UInt32 AuthnSvc,
                                                             IntPtr identity,
                                                             uint AuthzSvc);
        
        private byte[] MIDL_ProcFormatString;
        private byte[] MIDL_TypeFormatString;
        private GCHandle procString;
        private GCHandle formatString;
        private GCHandle stub;
        protected IntPtr rpcClientInterface;
        private GCHandle faultoffsets;
        private GCHandle clientinterface;
        private GCHandle bindinghandle;
        private string PipeName;

        public UInt32 RPCTimeOut = 1000;

        [StructLayout(LayoutKind.Sequential)]
        struct COMM_FAULT_OFFSETS
        {
            public short CommOffset;
            public short FaultOffset;
        }

        [StructLayout(LayoutKind.Sequential)]
        struct GENERIC_BINDING_ROUTINE_PAIR
        {
            public IntPtr Bind;
            public IntPtr Unbind;
        }
        

        [StructLayout(LayoutKind.Sequential)]
        struct RPC_VERSION
        {
            public ushort MajorVersion;
            public ushort MinorVersion;


            public static RPC_VERSION INTERFACE_VERSION = new RPC_VERSION(1, 0);
            public static RPC_VERSION SYNTAX_VERSION = new RPC_VERSION(2, 0);

            public RPC_VERSION(ushort InterfaceVersionMajor, ushort InterfaceVersionMinor)
            {
                MajorVersion = InterfaceVersionMajor;
                MinorVersion = InterfaceVersionMinor;
            }
        }

        [StructLayout(LayoutKind.Sequential)]
        struct RPC_SYNTAX_IDENTIFIER
        {
            public Guid SyntaxGUID;
            public RPC_VERSION SyntaxVersion;
        }

        

        [StructLayout(LayoutKind.Sequential)]
        struct RPC_CLIENT_INTERFACE
        {
            public uint Length;
            public RPC_SYNTAX_IDENTIFIER InterfaceId;
            public RPC_SYNTAX_IDENTIFIER TransferSyntax;
            public IntPtr /*PRPC_DISPATCH_TABLE*/ DispatchTable;
            public uint RpcProtseqEndpointCount;
            public IntPtr /*PRPC_PROTSEQ_ENDPOINT*/ RpcProtseqEndpoint;
            public IntPtr Reserved;
            public IntPtr InterpreterInfo;
            public uint Flags;

            public static readonly Guid IID_SYNTAX = new Guid(0x8A885D04u, 0x1CEB, 0x11C9, 0x9F, 0xE8, 0x08, 0x00, 0x2B,
                                                              0x10,
                                                              0x48, 0x60);

            public RPC_CLIENT_INTERFACE(Guid iid, ushort InterfaceVersionMajor, ushort InterfaceVersionMinor)
            {
                Length = (uint)Marshal.SizeOf(typeof(RPC_CLIENT_INTERFACE));
                RPC_VERSION rpcVersion = new RPC_VERSION(InterfaceVersionMajor, InterfaceVersionMinor);
                InterfaceId = new RPC_SYNTAX_IDENTIFIER();
                InterfaceId.SyntaxGUID = iid;
                InterfaceId.SyntaxVersion = rpcVersion;
                rpcVersion = new RPC_VERSION(2, 0);
                TransferSyntax = new RPC_SYNTAX_IDENTIFIER();
                TransferSyntax.SyntaxGUID = IID_SYNTAX;
                TransferSyntax.SyntaxVersion = rpcVersion;
                DispatchTable = IntPtr.Zero;
                RpcProtseqEndpointCount = 0u;
                RpcProtseqEndpoint = IntPtr.Zero;
                Reserved = IntPtr.Zero;
                InterpreterInfo = IntPtr.Zero;
                Flags = 0u;
            }
        }

        [StructLayout(LayoutKind.Sequential)]
        struct MIDL_STUB_DESC
        {
            public IntPtr /*RPC_CLIENT_INTERFACE*/ RpcInterfaceInformation;
            public IntPtr pfnAllocate;
            public IntPtr pfnFree;
            public IntPtr pAutoBindHandle;
            public IntPtr /*NDR_RUNDOWN*/ apfnNdrRundownRoutines;
            public IntPtr /*GENERIC_BINDING_ROUTINE_PAIR*/ aGenericBindingRoutinePairs;
            public IntPtr /*EXPR_EVAL*/ apfnExprEval;
            public IntPtr /*XMIT_ROUTINE_QUINTUPLE*/ aXmitQuintuple;
            public IntPtr pFormatTypes;
            public int fCheckBounds;
            /* Ndr library version. */
            public uint Version;
            public IntPtr /*MALLOC_FREE_STRUCT*/ pMallocFreeStruct;
            public int MIDLVersion;
            public IntPtr CommFaultOffsets;
            // New fields for version 3.0+
            public IntPtr /*USER_MARSHAL_ROUTINE_QUADRUPLE*/ aUserMarshalQuadruple;
            // Notify routines - added for NT5, MIDL 5.0
            public IntPtr /*NDR_NOTIFY_ROUTINE*/ NotifyRoutineTable;
            public IntPtr mFlags;
            // International support routines - added for 64bit post NT5
            public IntPtr /*NDR_CS_ROUTINES*/ CsRoutineTables;
            public IntPtr ProxyServerInfo;
            public IntPtr /*NDR_EXPR_DESC*/ pExprInfo;
            // Fields up to now present in win2000 release.

            public MIDL_STUB_DESC(IntPtr pFormatTypesPtr, IntPtr RpcInterfaceInformationPtr,
                                    IntPtr pfnAllocatePtr, IntPtr pfnFreePtr, IntPtr aGenericBindingRoutinePairsPtr)
            {
                pFormatTypes = pFormatTypesPtr;
                RpcInterfaceInformation = RpcInterfaceInformationPtr;
                CommFaultOffsets = IntPtr.Zero;
                pfnAllocate = pfnAllocatePtr;
                pfnFree = pfnFreePtr;
                pAutoBindHandle = IntPtr.Zero;
                apfnNdrRundownRoutines = IntPtr.Zero;
                aGenericBindingRoutinePairs = aGenericBindingRoutinePairsPtr;
                apfnExprEval = IntPtr.Zero;
                aXmitQuintuple = IntPtr.Zero;
                fCheckBounds = 1;
                Version = 0x50002u;
                pMallocFreeStruct = IntPtr.Zero;
                MIDLVersion = 0x8000253;
                aUserMarshalQuadruple = IntPtr.Zero;
                NotifyRoutineTable = IntPtr.Zero;
                mFlags = new IntPtr(0x00000001);
                CsRoutineTables = IntPtr.Zero;
                ProxyServerInfo = IntPtr.Zero;
                pExprInfo = IntPtr.Zero;
            }
        }

        protected void InitializeStub(Guid interfaceID, byte[] MIDL_ProcFormatString, byte[] MIDL_TypeFormatString, string pipe, ushort MajorVerson, ushort MinorVersion)
        {
            this.MIDL_ProcFormatString = MIDL_ProcFormatString;
            this.MIDL_TypeFormatString = MIDL_TypeFormatString;
            PipeName = pipe;
            procString = GCHandle.Alloc(this.MIDL_ProcFormatString, GCHandleType.Pinned);

            RPC_CLIENT_INTERFACE clientinterfaceObject = new RPC_CLIENT_INTERFACE(interfaceID, MajorVerson, MinorVersion);
            GENERIC_BINDING_ROUTINE_PAIR bindingObject = new GENERIC_BINDING_ROUTINE_PAIR();
            bindingObject.Bind = Marshal.GetFunctionPointerForDelegate((bind)Bind);
            bindingObject.Unbind = Marshal.GetFunctionPointerForDelegate((unbind)Unbind);

            COMM_FAULT_OFFSETS commFaultOffset = new COMM_FAULT_OFFSETS();
            commFaultOffset.CommOffset = -1;
            commFaultOffset.FaultOffset = -1;
            faultoffsets = GCHandle.Alloc(commFaultOffset, GCHandleType.Pinned);
            
            clientinterface = GCHandle.Alloc(clientinterfaceObject, GCHandleType.Pinned);
            formatString = GCHandle.Alloc(MIDL_TypeFormatString, GCHandleType.Pinned);
            bindinghandle = GCHandle.Alloc(bindingObject, GCHandleType.Pinned);

            MIDL_STUB_DESC stubObject = new MIDL_STUB_DESC(formatString.AddrOfPinnedObject(),
                                                            clientinterface.AddrOfPinnedObject(),
                                                            Marshal.GetFunctionPointerForDelegate((allocmemory)AllocateMemory),
                                                            Marshal.GetFunctionPointerForDelegate((freememory)FreeMemory),
                                                            bindinghandle.AddrOfPinnedObject());

            rpcClientInterface = stubObject.RpcInterfaceInformation;

            stub = GCHandle.Alloc(stubObject, GCHandleType.Pinned);
        }

        protected void freeStub()
        {
            procString.Free();
            faultoffsets.Free();
            clientinterface.Free();
            formatString.Free();
            bindinghandle.Free();
            stub.Free();
        }

        delegate IntPtr allocmemory(int size);
        protected static IntPtr AllocateMemory(int size)
        {
            IntPtr memory = Marshal.AllocHGlobal(size);
            Trace.WriteLine("allocating " + memory.ToString());
            return memory;
        }

        delegate void freememory(IntPtr memory);
        protected static void FreeMemory(IntPtr memory)
        {
            Trace.WriteLine("freeing " + memory.ToString());
            Marshal.FreeHGlobal(memory);
        }

        delegate IntPtr bind(IntPtr IntPtrserver);
        protected IntPtr Bind (IntPtr IntPtrserver)
        {
            return IntPtr.Zero;
        }

        protected Int32 Bind(string server, out IntPtr binding)
        {
            IntPtr bindingstring = IntPtr.Zero;
            binding = IntPtr.Zero;
            Int32 status;

            status = RpcStringBindingCompose(null, "ncacn_ip_tcp", server, "135", null, out bindingstring);
            if (status != 0)
                return status;
            status = RpcBindingFromStringBinding(Marshal.PtrToStringUni(bindingstring), out binding);
            RpcBindingFree(ref bindingstring);
            if (status != 0)
                return status;

            status = RpcBindingSetAuthInfo(binding, null, 1, 0, IntPtr.Zero, 0);
            if (status != 0)
            {
                Unbind(IntPtr.Zero, binding);
                return status;
            }

            status = RpcBindingSetOption(binding, 12, RPCTimeOut);
            return status;
        }

        delegate void unbind(IntPtr IntPtrserver, IntPtr hBinding);
        protected static void Unbind(IntPtr IntPtrserver, IntPtr hBinding)
        {
            string server = Marshal.PtrToStringUni(IntPtrserver);
            RpcBindingFree(ref hBinding);
        }

        protected IntPtr GetProcStringHandle(int offset)
        {
            return Marshal.UnsafeAddrOfPinnedArrayElement(MIDL_ProcFormatString, offset);
        }
        
        protected IntPtr GetStubHandle()
        {
            return stub.AddrOfPinnedObject();
        }

        protected IntPtr CallNdrClientCall2x86(int offset, params IntPtr[] args)
        {

            GCHandle stackhandle = GCHandle.Alloc(args, GCHandleType.Pinned);
            IntPtr result;
            try
            {
                result = NdrClientCall2x86(GetStubHandle(), GetProcStringHandle(offset), stackhandle.AddrOfPinnedObject());
            }
            finally
            {
                stackhandle.Free();
            }
            return result;
        }

    }
}
"@

Add-Type -TypeDefinition $sourceOxidBindings

$oxid = New-Object PingCastle.ExtractedCode.OxidBindings

$oxid.ServerAlive2Ps1("192.168.0.25")