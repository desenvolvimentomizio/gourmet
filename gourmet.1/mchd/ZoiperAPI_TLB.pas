unit ZoiperAPI_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 8291 $
// File generated on 24.1.2014 ã. 13:39:41 from Type Library described below.

// ************************************************************************  //
// Type Lib: d:\CABOB\Code\Zoiper3-x64\Zoiper3-API-DOC\Zoiper.tlb (1)
// LIBID: {77A2B1E0-8F33-43D0-BEDB-CAAD48B929ED}
// LCID: 0
// Helpfile: 
// HelpString: Zoiper API
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Errors:
//   Hint: TypeInfo 'ZoiperAPI' changed to 'ZoiperAPI_'
//   Hint: Member 'Record' of 'IZoiperCall' changed to 'Record_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of IZoiperPhone.AddAccount changed to 'Type_'
//   Hint: TypeInfo 'ZoiperAPI' changed to 'ZoiperAPI_'
//   Hint: Member 'Record' of 'IZoiperCall' changed to 'Record_'
//   Hint: Symbol 'Type' renamed to 'type_'
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  ZoiperAPIMajorVersion = 1;
  ZoiperAPIMinorVersion = 0;

  LIBID_ZoiperAPI: TGUID = '{77A2B1E0-8F33-43D0-BEDB-CAAD48B929ED}';

  DIID_IZoiperCall: TGUID = '{294FBB12-E743-468E-A7E6-4F071080D6C6}';
  IID_ITypeInfo: TGUID = '{00020401-0000-0000-C000-000000000046}';
  IID_ITypeComp: TGUID = '{00020403-0000-0000-C000-000000000046}';
  IID_ITypeLib: TGUID = '{00020402-0000-0000-C000-000000000046}';
  DIID_IZoiperContact: TGUID = '{8A95800C-824A-484E-9C7D-4095CF685960}';
  DIID_IZoiperAccount: TGUID = '{34A66E26-7FEB-40E8-8C61-4E0DE10C0E11}';
  DIID_IZoiperConfig: TGUID = '{AB325183-CD88-4AD9-A873-670BA3627C88}';
  DIID_IZoiperAudio: TGUID = '{998F8CCD-DCB4-41AF-A4B4-3FA1B06777F7}';
  DIID_IZoiperVideo: TGUID = '{B58F13DA-CC0F-4D57-8110-1D11D85D597C}';
  DIID_IZoiperProperty: TGUID = '{3A327587-D1E4-40A7-BC05-FDE03E37F2DF}';
  DIID_IZoiperHeaders: TGUID = '{02A2345E-85EB-4CAD-BF6E-2170D0BEE20D}';
  DIID_IZoiperPhone: TGUID = '{50B770EA-DD3B-40F3-9228-6322B4C981C9}';
  DIID_IZoiperPlayback: TGUID = '{F7ED336F-5C13-4E8A-A3F8-F15C27FAF93D}';
  DIID_IZoiperEvent: TGUID = '{488198FA-EB61-4DC7-9254-9A1BB039A4A8}';
  CLASS_ZoiperAPI_: TGUID = '{EDE266EE-2C85-4436-A9A3-940CC5B45A1F}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum EAccountType
type
  EAccountType = TOleEnum;
const
  ACCOUNT_SIP = $00000000;
  ACCOUNT_IAX = $00000001;
  ACCOUNT_XMPP = $00000002;

// Constants for enum EContactState
type
  EContactState = TOleEnum;
const
  CONTACT_OFFLINE = $00000000;
  CONTACT_ONLINE = $00000001;
  CONTACT_AWAY = $00000002;
  CONTACT_BUSY = $00000003;

// Constants for enum EAccountRegistrationState
type
  EAccountRegistrationState = TOleEnum;
const
  ACCOUNT_NOT_REGISTERED = $00000000;
  ACCOUNT_REGISTERING = $00000001;
  ACCOUNT_REGISTERED = $00000002;
  ACCOUNT_WAIT_FOR_NETWORK_DISCOVERY = $00000003;

// Constants for enum EPresenceModel
type
  EPresenceModel = TOleEnum;
const
  PM_SERVER_BASED = $00000000;
  PM_PEER_TO_PEER = $00000001;

// Constants for enum EDTMFType
type
  EDTMFType = TOleEnum;
const
  DTMF_MEDIA_OUTBAND = $00000000;
  DTMF_SIGNALLING_OUTBAND = $00000001;
  DTMF_MEDIA_INBAND = $00000002;
  DTMF_MEDIA_DISABLED = $00000003;

// Constants for enum EProtocolTransport
type
  EProtocolTransport = TOleEnum;
const
  TRANSPORT_UDP = $00000000;
  TRANSPORT_TCP = $00000001;
  TRANSPORT_TLS = $00000002;

// Constants for enum ESRTPNegotiation
type
  ESRTPNegotiation = TOleEnum;
const
  SRTP_NONE = $00000000;
  SRTP_SDES = $00000001;

// Constants for enum ESubscribeMWI
type
  ESubscribeMWI = TOleEnum;
const
  MWI_DISABLED = $00000000;
  MWI_BEFORE_REGISTRATION = $00000001;
  MWI_AFTER_REGISTRATION = $00000002;
  MWI_BOTH = $00000003;

// Constants for enum EOnTransferRequestStyle
type
  EOnTransferRequestStyle = TOleEnum;
const
  TRANSFER_ALWAYS_ACCEPT = $00000000;
  TRANSFER_ALWAYS_REJECT = $00000001;
  TRANSFER_ASK = $00000002;

// Constants for enum ESecureSuite
type
  ESecureSuite = TOleEnum;
const
  SECURE_SSLv23 = $00000000;
  SECURE_TLSv1 = $00000001;

// Constants for enum EOutputDeviceStyle
type
  EOutputDeviceStyle = TOleEnum;
const
  DEVICE_OUTPUT_NORMAL = $00000000;
  DEVICE_OUTPUT_RINGING = $00000001;
  DEVICE_OUTPUT_DISABLE = $00000002;

// Constants for enum EContactExtendedState
type
  EContactExtendedState = TOleEnum;
const
  CONTACT_XSTATE_OFFLINE = $00000000;
  CONTACT_XSTATE_INVISIBLE = $00000001;
  CONTACT_XSTATE_ONLINE = $00000002;
  CONTACT_XSTATE_AWAY = $00000003;
  CONTACT_XSTATE_BUSY = $00000004;
  CONTACT_XSTATE_PHONE = $00000005;
  CONTACT_XSTATE_LUNCH = $00000006;
  CONTACT_XSTATE_BE_BACK = $00000007;

// Constants for enum EVideoFPS
type
  EVideoFPS = TOleEnum;
const
  VIDEO_FPS_5 = $00000000;
  VIDEO_FPS_15 = $00000001;
  VIDEO_FPS_30 = $00000002;

// Constants for enum EVideoMode
type
  EVideoMode = TOleEnum;
const
  VIDEO_MODE_176_144 = $00000000;
  VIDEO_MODE_352_288 = $00000001;
  VIDEO_MODE_640_480 = $00000002;
  VIDEO_MODE_1280_720 = $00000003;
  VIDEO_MODE_1600_1200 = $00000004;

// Constants for enum tagTYPEKIND
type
  tagTYPEKIND = TOleEnum;
const
  TKIND_ENUM = $00000000;
  TKIND_RECORD = $00000001;
  TKIND_MODULE = $00000002;
  TKIND_INTERFACE = $00000003;
  TKIND_DISPATCH = $00000004;
  TKIND_COCLASS = $00000005;
  TKIND_ALIAS = $00000006;
  TKIND_UNION = $00000007;
  TKIND_MAX = $00000008;

// Constants for enum tagDESCKIND
type
  tagDESCKIND = TOleEnum;
const
  DESCKIND_NONE = $00000000;
  DESCKIND_FUNCDESC = $00000001;
  DESCKIND_VARDESC = $00000002;
  DESCKIND_TYPECOMP = $00000003;
  DESCKIND_IMPLICITAPPOBJ = $00000004;
  DESCKIND_MAX = $00000005;

// Constants for enum tagFUNCKIND
type
  tagFUNCKIND = TOleEnum;
const
  FUNC_VIRTUAL = $00000000;
  FUNC_PUREVIRTUAL = $00000001;
  FUNC_NONVIRTUAL = $00000002;
  FUNC_STATIC = $00000003;
  FUNC_DISPATCH = $00000004;

// Constants for enum tagINVOKEKIND
type
  tagINVOKEKIND = TOleEnum;
const
  INVOKE_FUNC = $00000001;
  INVOKE_PROPERTYGET = $00000002;
  INVOKE_PROPERTYPUT = $00000004;
  INVOKE_PROPERTYPUTREF = $00000008;

// Constants for enum tagCALLCONV
type
  tagCALLCONV = TOleEnum;
const
  CC_FASTCALL = $00000000;
  CC_CDECL = $00000001;
  CC_MSCPASCAL = $00000002;
  CC_PASCAL = $00000002;
  CC_MACPASCAL = $00000003;
  CC_STDCALL = $00000004;
  CC_FPFASTCALL = $00000005;
  CC_SYSCALL = $00000006;
  CC_MPWCDECL = $00000007;
  CC_MPWPASCAL = $00000008;
  CC_MAX = $00000009;

// Constants for enum tagVARKIND
type
  tagVARKIND = TOleEnum;
const
  VAR_PERINSTANCE = $00000000;
  VAR_STATIC = $00000001;
  VAR_CONST = $00000002;
  VAR_DISPATCH = $00000003;

// Constants for enum tagSYSKIND
type
  tagSYSKIND = TOleEnum;
const
  SYS_WIN16 = $00000000;
  SYS_WIN32 = $00000001;
  SYS_MAC = $00000002;
  SYS_WIN64 = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IZoiperCall = dispinterface;
  ITypeInfo = interface;
  ITypeComp = interface;
  ITypeLib = interface;
  IZoiperContact = dispinterface;
  IZoiperAccount = dispinterface;
  IZoiperConfig = dispinterface;
  IZoiperAudio = dispinterface;
  IZoiperVideo = dispinterface;
  IZoiperProperty = dispinterface;
  IZoiperHeaders = dispinterface;
  IZoiperPhone = dispinterface;
  IZoiperPlayback = dispinterface;
  IZoiperEvent = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ZoiperAPI_ = IZoiperPhone;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PUserType6 = ^tagTYPEDESC; {*}
  PUserType7 = ^tagARRAYDESC; {*}
  PUserType1 = ^GUID; {*}
  PPWideChar1 = ^PWideChar; {*}
  PUserType2 = ^tagDISPPARAMS; {*}
  PSYSUINT1 = ^SYSUINT; {*}
  PUserType3 = ^tagTYPEATTR; {*}
  PUserType4 = ^tagFUNCDESC; {*}
  PUserType5 = ^tagVARDESC; {*}
  PUserType8 = ^tagTLIBATTR; {*}

  __MIDL___MIDL_itf_Zoiper_0006_0001_0001 = packed record
    Data1: LongWord;
    Data2: Word;
    Data3: Word;
    Data4: array[0..7] of Byte;
  end;

  GUID = __MIDL___MIDL_itf_Zoiper_0006_0001_0001; 

  __MIDL_IOleAutomationTypes_0005 = record
    case Integer of
      0: (lptdesc: PUserType6);
      1: (lpadesc: PUserType7);
      2: (hreftype: LongWord);
  end;

  tagTYPEDESC = packed record
    __MIDL__IOleAutomationTypes0004: __MIDL_IOleAutomationTypes_0005;
    vt: Word;
  end;

  tagSAFEARRAYBOUND = packed record
    cElements: LongWord;
    lLbound: Integer;
  end;

  ULONG_PTR = LongWord; 

  tagIDLDESC = packed record
    dwReserved: ULONG_PTR;
    wIDLFlags: Word;
  end;

  DWORD = LongWord; 

  tagPARAMDESCEX = packed record
    cBytes: LongWord;
    varDefaultValue: OleVariant;
  end;

  tagPARAMDESC = packed record
    pparamdescex: ^tagPARAMDESCEX;
    wParamFlags: Word;
  end;

  tagELEMDESC = packed record
    tdesc: tagTYPEDESC;
    paramdesc: tagPARAMDESC;
  end;

  tagFUNCDESC = packed record
    memid: Integer;
    lprgscode: ^SCODE;
    lprgelemdescParam: ^tagELEMDESC;
    funckind: tagFUNCKIND;
    invkind: tagINVOKEKIND;
    callconv: tagCALLCONV;
    cParams: Smallint;
    cParamsOpt: Smallint;
    oVft: Smallint;
    cScodes: Smallint;
    elemdescFunc: tagELEMDESC;
    wFuncFlags: Word;
  end;

  __MIDL_IOleAutomationTypes_0006 = record
    case Integer of
      0: (oInst: LongWord);
      1: (lpvarValue: ^OleVariant);
  end;

  tagVARDESC = packed record
    memid: Integer;
    lpstrSchema: PWideChar;
    __MIDL__IOleAutomationTypes0005: __MIDL_IOleAutomationTypes_0006;
    elemdescVar: tagELEMDESC;
    wVarFlags: Word;
    varkind: tagVARKIND;
  end;

  tagTLIBATTR = packed record
    GUID: GUID;
    lcid: LongWord;
    syskind: tagSYSKIND;
    wMajorVerNum: Word;
    wMinorVerNum: Word;
    wLibFlags: Word;
  end;

  tagDISPPARAMS = packed record
    rgvarg: ^OleVariant;
    rgdispidNamedArgs: ^Integer;
    cArgs: SYSUINT;
    cNamedArgs: SYSUINT;
  end;

  tagEXCEPINFO = packed record
    wCode: Word;
    wReserved: Word;
    bstrSource: WideString;
    bstrDescription: WideString;
    bstrHelpFile: WideString;
    dwHelpContext: LongWord;
    pvReserved: ULONG_PTR;
    pfnDeferredFillIn: ULONG_PTR;
    scode: SCODE;
  end;


  tagTYPEATTR = packed record
    GUID: GUID;
    lcid: LongWord;
    dwReserved: LongWord;
    memidConstructor: Integer;
    memidDestructor: Integer;
    lpstrSchema: PWideChar;
    cbSizeInstance: LongWord;
    typekind: tagTYPEKIND;
    cFuncs: Word;
    cVars: Word;
    cImplTypes: Word;
    cbSizeVft: Word;
    cbAlignment: Word;
    wTypeFlags: Word;
    wMajorVerNum: Word;
    wMinorVerNum: Word;
    tdescAlias: tagTYPEDESC;
    idldescType: tagIDLDESC;
  end;

  tagARRAYDESC = packed record
    tdescElem: tagTYPEDESC;
    cDims: Word;
    rgbounds: ^tagSAFEARRAYBOUND;
  end;


// *********************************************************************//
// DispIntf:  IZoiperCall
// Flags:     (4096) Dispatchable
// GUID:      {294FBB12-E743-468E-A7E6-4F071080D6C6}
// *********************************************************************//
  IZoiperCall = dispinterface
    ['{294FBB12-E743-468E-A7E6-4F071080D6C6}']
    property Phone: WideString readonly dispid 1020;
    property Contact: IZoiperContact readonly dispid 1060;
    property Account: IZoiperAccount readonly dispid 1050;
    property Duration: WideString readonly dispid 5010;
    property CurrentCodec: WideString readonly dispid 5130;
    property Conference: WordBool dispid 5060;
    property DNID: WideString readonly dispid 5000;
    property IsHold: WordBool readonly dispid 5070;
    property IsRemoteHold: WordBool readonly dispid 5080;
    property IsIncoming: WordBool readonly dispid 5090;
    property IsRecording: WordBool readonly dispid 5100;
    property IsTransferring: WordBool readonly dispid 5110;
    property IsRinging: WordBool readonly dispid 5120;
    property RecordingFileName: WideString readonly dispid 1080;
    procedure Hang; dispid 2000;
    procedure Hold; dispid 2030;
    procedure UnHold; dispid 2040;
    procedure Accept; dispid 2050;
    procedure Reject; dispid 2060;
    function Record_: WordBool; dispid 2070;
    function RecordStop: WordBool; dispid 2072;
    procedure UpdateRecordingFileName; dispid 2071;
    procedure Video(Video: WordBool); dispid 2075;
    procedure SendDTMF(const dtmf: WideString); dispid 1400;
    procedure Transfer(const Phone: WideString); dispid 2090;
    function AttendedTransfer(const call: IZoiperCall): WordBool; dispid 2100;
  end;

// *********************************************************************//
// Interface: ITypeInfo
// Flags:     (0)
// GUID:      {00020401-0000-0000-C000-000000000046}
// *********************************************************************//
  ITypeInfo = interface(IUnknown)
    ['{00020401-0000-0000-C000-000000000046}']
    function RemoteGetTypeAttr(out ppTypeAttr: PUserType3; out pDummy: DWORD): HResult; stdcall;
    function GetTypeComp(out ppTComp: ITypeComp): HResult; stdcall;
    function RemoteGetFuncDesc(index: SYSUINT; out ppFuncDesc: PUserType4; out pDummy: DWORD): HResult; stdcall;
    function RemoteGetVarDesc(index: SYSUINT; out ppVarDesc: PUserType5; out pDummy: DWORD): HResult; stdcall;
    function RemoteGetNames(memid: Integer; out rgBstrNames: WideString; cMaxNames: SYSUINT; 
                            out pcNames: SYSUINT): HResult; stdcall;
    function GetRefTypeOfImplType(index: SYSUINT; out pRefType: LongWord): HResult; stdcall;
    function GetImplTypeFlags(index: SYSUINT; out pImplTypeFlags: SYSINT): HResult; stdcall;
    function LocalGetIDsOfNames: HResult; stdcall;
    function LocalInvoke: HResult; stdcall;
    function RemoteGetDocumentation(memid: Integer; refPtrFlags: LongWord; 
                                    out pBstrName: WideString; out pBstrDocString: WideString; 
                                    out pdwHelpContext: LongWord; out pBstrHelpFile: WideString): HResult; stdcall;
    function RemoteGetDllEntry(memid: Integer; invkind: tagINVOKEKIND; refPtrFlags: LongWord; 
                               out pBstrDllName: WideString; out pBstrName: WideString; 
                               out pwOrdinal: Word): HResult; stdcall;
    function GetRefTypeInfo(hreftype: LongWord; out ppTInfo: ITypeInfo): HResult; stdcall;
    function LocalAddressOfMember: HResult; stdcall;
    function RemoteCreateInstance(var riid: GUID; out ppvObj: IUnknown): HResult; stdcall;
    function GetMops(memid: Integer; out pBstrMops: WideString): HResult; stdcall;
    function RemoteGetContainingTypeLib(out ppTLib: ITypeLib; out pIndex: SYSUINT): HResult; stdcall;
    function LocalReleaseTypeAttr: HResult; stdcall;
    function LocalReleaseFuncDesc: HResult; stdcall;
    function LocalReleaseVarDesc: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ITypeComp
// Flags:     (0)
// GUID:      {00020403-0000-0000-C000-000000000046}
// *********************************************************************//
  ITypeComp = interface(IUnknown)
    ['{00020403-0000-0000-C000-000000000046}']
    function RemoteBind(szName: PWideChar; lHashVal: LongWord; wFlags: Word; 
                        out ppTInfo: ITypeInfo; out pDescKind: tagDESCKIND; 
                        out ppFuncDesc: PUserType4; out ppVarDesc: PUserType5; 
                        out ppTypeComp: ITypeComp; out pDummy: DWORD): HResult; stdcall;
    function RemoteBindType(szName: PWideChar; lHashVal: LongWord; out ppTInfo: ITypeInfo): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ITypeLib
// Flags:     (0)
// GUID:      {00020402-0000-0000-C000-000000000046}
// *********************************************************************//
  ITypeLib = interface(IUnknown)
    ['{00020402-0000-0000-C000-000000000046}']
    function RemoteGetTypeInfoCount(out pctinfo: SYSUINT): HResult; stdcall;
    function GetTypeInfo(index: SYSUINT; out ppTInfo: ITypeInfo): HResult; stdcall;
    function GetTypeInfoType(index: SYSUINT; out pTKind: tagTYPEKIND): HResult; stdcall;
    function GetTypeInfoOfGuid(var GUID: GUID; out ppTInfo: ITypeInfo): HResult; stdcall;
    function RemoteGetLibAttr(out ppTLibAttr: PUserType8; out pDummy: DWORD): HResult; stdcall;
    function GetTypeComp(out ppTComp: ITypeComp): HResult; stdcall;
    function RemoteGetDocumentation(index: SYSINT; refPtrFlags: LongWord; 
                                    out pBstrName: WideString; out pBstrDocString: WideString; 
                                    out pdwHelpContext: LongWord; out pBstrHelpFile: WideString): HResult; stdcall;
    function RemoteIsName(szNameBuf: PWideChar; lHashVal: LongWord; out pfName: Integer; 
                          out pBstrLibName: WideString): HResult; stdcall;
    function RemoteFindName(szNameBuf: PWideChar; lHashVal: LongWord; out ppTInfo: ITypeInfo; 
                            out rgMemId: Integer; var pcFound: Word; out pBstrLibName: WideString): HResult; stdcall;
    function LocalReleaseTLibAttr: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  IZoiperContact
// Flags:     (4096) Dispatchable
// GUID:      {8A95800C-824A-484E-9C7D-4095CF685960}
// *********************************************************************//
  IZoiperContact = dispinterface
    ['{8A95800C-824A-484E-9C7D-4095CF685960}']
    property Display: WideString dispid 1040;
    property PresenceID: WideString dispid 1020;
    property PresenceAccount: WideString dispid 1070;
    property Account: WideString dispid 1050;
    property WorkPhone: WideString dispid 2050;
    property HomePhone: WideString dispid 2060;
    property CellPhone: WideString dispid 2070;
    property FaxNumber: WideString dispid 2080;
    property City: WideString dispid 2000;
    property Country: WideString dispid 2010;
    property LastName: WideString dispid 2020;
    property FirstName: WideString dispid 2030;
    property MiddleName: WideString dispid 2040;
    property SaveContact: WordBool dispid 2090;
    procedure Apply; dispid 100;
    procedure Accept; dispid 3040;
    procedure Reject(const reason: WideString); dispid 3050;
    procedure Message(const Message: WideString; show: WordBool); dispid 3055;
  end;

// *********************************************************************//
// DispIntf:  IZoiperAccount
// Flags:     (4096) Dispatchable
// GUID:      {34A66E26-7FEB-40E8-8C61-4E0DE10C0E11}
// *********************************************************************//
  IZoiperAccount = dispinterface
    ['{34A66E26-7FEB-40E8-8C61-4E0DE10C0E11}']
    property Name: WideString readonly dispid 1000;
    property type_: EAccountType readonly dispid 1010;
    property State: EAccountRegistrationState readonly dispid 1030;
    property Phone: WideString writeonly dispid 1020;
    property Host: WideString writeonly dispid 3000;
    property Domain: WideString writeonly dispid 3020;
    property Context: WideString writeonly dispid 3040;
    property OutboundProxy: WideString writeonly dispid 3010;
    property JabberID: WideString writeonly dispid 4000;
    property UserName: WideString writeonly dispid 4010;
    property Password: WideString writeonly dispid 4020;
    property CallerID: WideString writeonly dispid 4030;
    property AuthenticationUserName: WideString writeonly dispid 4040;
    property STUNHost: WideString writeonly dispid 4050;
    property STUNPort: Integer writeonly dispid 4060;
    property RegistrationExpiry: Integer writeonly dispid 4070;
    property DisableRingbackTones: WordBool writeonly dispid 4080;
    property UseRPort: WordBool writeonly dispid 4090;
    property UseRPortMedia: WordBool writeonly dispid 4100;
    property ForceRFC3264: {??Pointer}OleVariant readonly dispid 4110;
    property PresenceModel: EPresenceModel writeonly dispid 4120;
    property DTMFType: EDTMFType writeonly dispid 4130;
    property SIPTransportType: EProtocolTransport writeonly dispid 4140;
    property RTPEncryption: ESRTPNegotiation writeonly dispid 4150;
    property UseRoster: WordBool writeonly dispid 4160;
    property UseLegacyTLS: WordBool writeonly dispid 4170;
    property SubscribeForMWI: ESubscribeMWI writeonly dispid 4190;
    property SubscribePresence: WordBool writeonly dispid 4200;
    property PublishPresence: WordBool writeonly dispid 4210;
    property VoiceMailCheckExtension: WideString writeonly dispid 4220;
    property VoiceMailForwardExtension: WideString writeonly dispid 4230;
    procedure Apply; dispid 100;
    procedure Register; dispid 5000;
    procedure Unregister; dispid 5010;
    procedure AddCodec(const codec: WideString); dispid 5030;
    procedure ClearCodec; dispid 5040;
    procedure SipHeaderDump(enable: WordBool); dispid 5060;
    procedure SipHeaderAdd(const Name: WideString; const Value: WideString); dispid 5070;
    procedure SipHeaderClear(const Name: WideString); dispid 5080;
  end;

// *********************************************************************//
// DispIntf:  IZoiperConfig
// Flags:     (4096) Dispatchable
// GUID:      {AB325183-CD88-4AD9-A873-670BA3627C88}
// *********************************************************************//
  IZoiperConfig = dispinterface
    ['{AB325183-CD88-4AD9-A873-670BA3627C88}']
    property PopupMenuOnIncomingCall: WordBool dispid 1000;
    property OnTransferRequest: EOnTransferRequestStyle dispid 1010;
    property UseEchoCancelation: WordBool dispid 1030;
    property EnableDebugLog: WordBool dispid 1040;
    property DebugLogPath: WideString dispid 1050;
    property EnableDebugLargeDump: WordBool dispid 1060;
    property Restrictions: WideString dispid 1020;
    property ServerSideAutoAnswer: WordBool dispid 1070;
    property AutoAnswer: WordBool dispid 1080;
    property AutoAnswerSeconds: Integer dispid 1090;
    property AutoAnswerPlaySound: WordBool dispid 1100;
    property AudioInputVolume: Integer dispid 1110;
    property AudioOutputVolume: Integer dispid 1120;
    property MediaDSCP: WideString dispid 1130;
    property Forwarding: WordBool dispid 1140;
    property ForwardingSeconds: Integer dispid 1150;
    property ForwardingExtension: WideString dispid 1160;
    property RecordCalls: WordBool dispid 1170;
    property RecordPath: WideString dispid 1180;
    property RecordFileName: WideString dispid 1340;
    property SIPTLSCertificateFile: WideString dispid 1190;
    property RTPPortBase: Integer dispid 1200;
    property RTPUseRandomPort: WordBool dispid 1210;
    property ChatPlaySound: WordBool dispid 1220;
    property ChatBlinkWindow: WordBool dispid 1230;
    property ChatShowDialog: WordBool dispid 1240;
    property DoNotShowError: WordBool dispid 1250;
    property PhoneInfoText: WideString dispid 1260;
    property PopupOnIncomingCall: WordBool dispid 1270;
    property RingWhenTalking: WordBool dispid 1280;
    property PCSpeakerRing: WordBool dispid 1290;
    property DisableDTMFSounds: WordBool dispid 1300;
    property MuteEarlyMedia: WordBool dispid 1310;
    property UseExternalDeviceYealink: WordBool dispid 1350;
    property UseExternalDeviceGeneric: WordBool dispid 1360;
    property UseAutomaticGainControl: WordBool dispid 1370;
    property UseNoiseSuppression: WordBool dispid 1380;
    property SIPTLSOverrideDomainName: WideString dispid 1390;
    property SIPTLSDisableCertificateVerification: WordBool dispid 1400;
    property SIPTLSProtocolSuite: ESecureSuite dispid 1410;
    property SIPTLSUseStrongCiphers: WordBool dispid 1420;
    property DisableRinging: WordBool dispid 1430;
    procedure SetSIPIAXPorts(sip_port: Integer; iax_port: Integer); dispid 1320;
    procedure NumberOfCallsLimit(call_limit: Integer); dispid 1330;
  end;

// *********************************************************************//
// DispIntf:  IZoiperAudio
// Flags:     (4096) Dispatchable
// GUID:      {998F8CCD-DCB4-41AF-A4B4-3FA1B06777F7}
// *********************************************************************//
  IZoiperAudio = dispinterface
    ['{998F8CCD-DCB4-41AF-A4B4-3FA1B06777F7}']
    property InputDevice: WideString dispid 6040;
    property OutputDevice: WideString dispid 6050;
    property RingingDevice: WideString dispid 6060;
    property InputDeviceCount: Integer readonly dispid 6020;
    property OutputDeviceCount: Integer readonly dispid 6030;
    procedure Apply; dispid 100;
    function InputDeviceName(index: SYSINT): WideString; dispid 6000;
    function OutputDeviceName(index: SYSINT): WideString; dispid 6010;
  end;

// *********************************************************************//
// DispIntf:  IZoiperVideo
// Flags:     (4096) Dispatchable
// GUID:      {B58F13DA-CC0F-4D57-8110-1D11D85D597C}
// *********************************************************************//
  IZoiperVideo = dispinterface
    ['{B58F13DA-CC0F-4D57-8110-1D11D85D597C}']
    property Device: WideString dispid 6040;
    property DeviceCount: SYSINT readonly dispid 6020;
    property Mode: EVideoMode dispid 6050;
    property FPS: EVideoFPS dispid 6070;
    property BitRate: SYSINT dispid 6060;
    procedure Apply; dispid 100;
    function DeviceName(index: SYSINT): WideString; dispid 6000;
  end;

// *********************************************************************//
// DispIntf:  IZoiperProperty
// Flags:     (4096) Dispatchable
// GUID:      {3A327587-D1E4-40A7-BC05-FDE03E37F2DF}
// *********************************************************************//
  IZoiperProperty = dispinterface
    ['{3A327587-D1E4-40A7-BC05-FDE03E37F2DF}']
    property Name: WideString readonly dispid 1000;
    property Count: SYSINT readonly dispid 1005;
    function Value(index: SYSINT): WideString; dispid 10010;
  end;

// *********************************************************************//
// DispIntf:  IZoiperHeaders
// Flags:     (4096) Dispatchable
// GUID:      {02A2345E-85EB-4CAD-BF6E-2170D0BEE20D}
// *********************************************************************//
  IZoiperHeaders = dispinterface
    ['{02A2345E-85EB-4CAD-BF6E-2170D0BEE20D}']
    property Count: SYSINT readonly dispid 1005;
    function Entry(index: SYSINT): IZoiperProperty; dispid 10000;
  end;

// *********************************************************************//
// DispIntf:  IZoiperPhone
// Flags:     (4096) Dispatchable
// GUID:      {50B770EA-DD3B-40F3-9228-6322B4C981C9}
// *********************************************************************//
  IZoiperPhone = dispinterface
    ['{50B770EA-DD3B-40F3-9228-6322B4C981C9}']
    property Version: WideString readonly dispid 1130;
    property ActiveCall: IZoiperCall dispid 1100;
    property NumberOfCalls: Integer readonly dispid 1530;
    property DefaultFilterText: WideString dispid 1020;
    property MuteSpeaker: WordBool dispid 1410;
    property MuteMicrophone: WordBool dispid 1420;
    function Dial(const Phone: WideString; Video: SYSINT): IZoiperCall; dispid 1000;
    procedure Hang; dispid 1010;
    function GetAudio: IZoiperAudio; dispid 1110;
    function GetVideo: IZoiperVideo; dispid 1111;
    function GetConfig: IZoiperConfig; dispid 1120;
    function GetContact(const Phone: WideString): IZoiperContact; dispid 1300;
    function GetContactByIndex(index: SYSINT): IZoiperContact; dispid 1305;
    function AddContact(const Phone: WideString): IZoiperContact; dispid 1310;
    function DelContact(const Phone: WideString): IZoiperContact; dispid 1320;
    function UseAccount(const Name: WideString): IZoiperAccount; dispid 1230;
    procedure DelAccount(const Name: WideString); dispid 1220;
    function GetAccount(const Name: WideString): IZoiperAccount; dispid 1200;
    function GetAccountByIndex(index: SYSINT): IZoiperAccount; dispid 1205;
    function AddAccount(const Name: WideString; Type_: EAccountType): IZoiperAccount; dispid 1210;
    procedure DelDialog(const Name: WideString); dispid 1540;
    procedure ShowAudioWizard; dispid 1550;
    procedure ShowLogDialog; dispid 1560;
    procedure ShowTransferDialog; dispid 1570;
    procedure LoadPlaybackSoundFromURL(const url: WideString); dispid 8010;
    procedure LoadPlaybackSoundFromFile(const filename: WideString); dispid 8020;
    procedure AddSMS(const ident: WideString; const sender: WideString; const Message: WideString; 
                     unread: WordBool); dispid 9020;
    procedure DelSMS(const ident: WideString); dispid 9000;
    procedure SetRecordingProperty(const Name: WideString; const Value: WideString); dispid 1580;
    procedure SaveOptions; dispid 1500;
    procedure SaveContact; dispid 1510;
    procedure SavePrivacy; dispid 1520;
  end;

// *********************************************************************//
// DispIntf:  IZoiperPlayback
// Flags:     (4096) Dispatchable
// GUID:      {F7ED336F-5C13-4E8A-A3F8-F15C27FAF93D}
// *********************************************************************//
  IZoiperPlayback = dispinterface
    ['{F7ED336F-5C13-4E8A-A3F8-F15C27FAF93D}']
    procedure Start(Mode: EOutputDeviceStyle); dispid 8030;
    procedure Stop; dispid 8040;
  end;

// *********************************************************************//
// DispIntf:  IZoiperEvent
// Flags:     (4096) Dispatchable
// GUID:      {488198FA-EB61-4DC7-9254-9A1BB039A4A8}
// *********************************************************************//
  IZoiperEvent = dispinterface
    ['{488198FA-EB61-4DC7-9254-9A1BB039A4A8}']
    procedure OnZoiperFilter(const text: WideString); dispid 1020;
    procedure OnZoiperCallHang(const call: IZoiperCall); dispid 2000;
    procedure OnZoiperCallRing(const call: IZoiperCall); dispid 2020;
    procedure OnZoiperCallHold(const call: IZoiperCall); dispid 2030;
    procedure OnZoiperCallUnhold(const call: IZoiperCall); dispid 2040;
    procedure OnZoiperCallAccept(const call: IZoiperCall); dispid 2050;
    procedure OnZoiperCallReject(const call: IZoiperCall; cause_code: Integer); dispid 2060;
    procedure OnZoiperCallFail(const call: IZoiperCall; cause_code: Integer); dispid 2010;
    procedure OnZoiperCallIncoming(const call: IZoiperCall); dispid 2080;
    procedure OnZoiperCallStartRecording(const call: IZoiperCall; const filename: WideString); dispid 2070;
    procedure OnZoiperCallStopRecording(const call: IZoiperCall; const filename: WideString); dispid 2072;
    procedure OnZoiperCallRecvDTMF(const call: IZoiperCall; const dtmf: WideString); dispid 1405;
    procedure OnZoiperTransferSuccess(const call: IZoiperCall); dispid 2130;
    procedure OnZoiperTransferFailed(const call: IZoiperCall); dispid 2140;
    procedure OnZoiperCallSipHeader(const call: IZoiperCall; const headers: IZoiperHeaders); dispid 2150;
    procedure OnZoiperCallHoldLocal(const call: IZoiperCall); dispid 2110;
    procedure OnZoiperCallUnholdLocal(const call: IZoiperCall); dispid 2120;
    procedure OnZoiperCallIncomingURL(const call: IZoiperCall; const url: WideString); dispid 2160;
    procedure OnZoiperContactCreate(const Contact: IZoiperContact; const Name: WideString); dispid 3000;
    procedure OnZoiperContactDelete(const Contact: IZoiperContact); dispid 3010;
    procedure OnZoiperContactChange(const Contact: IZoiperContact); dispid 3020;
    procedure OnZoiperContactStatus(const Contact: IZoiperContact; status: EContactExtendedState); dispid 3030;
    procedure OnZoiperContactSubscribe(const Contact: IZoiperContact); dispid 3060;
    procedure OnZoiperContactMessageRecv(const Contact: IZoiperContact; const Message: WideString); dispid 4000;
    procedure OnZoiperContactMessageSent(const Contact: IZoiperContact; const Message: WideString); dispid 4010;
    procedure OnZoiperContactMessageFailed(const Contact: IZoiperContact; 
                                           const Message: WideString; reason: Integer); dispid 4020;
    procedure OnZoiperAccountRegister(const Account: IZoiperAccount); dispid 5000;
    procedure OnZoiperAccountUnregister(const Account: IZoiperAccount); dispid 5010;
    procedure OnZoiperAccountRegisterFail(const Account: IZoiperAccount; cause_code: Integer); dispid 5020;
    procedure OnZoiperPlaybackFinished(const playback: IZoiperPlayback); dispid 8000;
    procedure OnZoiperPlaybackSoundURLLoaded(const playback: IDispatch; result: WordBool; 
                                             const response: WideString); dispid 8010;
    procedure OnZoiperSMSDelete(const Phone: IZoiperPhone; const ident: WideString); dispid 9000;
    procedure OnZoiperSMSSend(const Phone: IZoiperPhone; const Message: WideString; 
                              const number: WideString); dispid 9010;
    procedure OnZoiperConferenceHold(const Phone: IZoiperPhone); dispid 7000;
    procedure OnZoiperConferenceUnhold(const Phone: IZoiperPhone); dispid 7020;
  end;

// *********************************************************************//
// The Class CoZoiperAPI_ provides a Create and CreateRemote method to          
// create instances of the default interface IZoiperPhone exposed by              
// the CoClass ZoiperAPI_. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoZoiperAPI_ = class
    class function Create: IZoiperPhone;
    class function CreateRemote(const MachineName: string): IZoiperPhone;
  end;

  TZoiperAPI_OnZoiperFilter = procedure(ASender: TObject; const text: WideString) of object;
  TZoiperAPI_OnZoiperCallHang = procedure(ASender: TObject; const call: IZoiperCall) of object;
  TZoiperAPI_OnZoiperCallRing = procedure(ASender: TObject; const call: IZoiperCall) of object;
  TZoiperAPI_OnZoiperCallHold = procedure(ASender: TObject; const call: IZoiperCall) of object;
  TZoiperAPI_OnZoiperCallUnhold = procedure(ASender: TObject; const call: IZoiperCall) of object;
  TZoiperAPI_OnZoiperCallAccept = procedure(ASender: TObject; const call: IZoiperCall) of object;
  TZoiperAPI_OnZoiperCallReject = procedure(ASender: TObject; const call: IZoiperCall; 
                                                              cause_code: Integer) of object;
  TZoiperAPI_OnZoiperCallFail = procedure(ASender: TObject; const call: IZoiperCall; 
                                                            cause_code: Integer) of object;
  TZoiperAPI_OnZoiperCallIncoming = procedure(ASender: TObject; const call: IZoiperCall) of object;
  TZoiperAPI_OnZoiperCallStartRecording = procedure(ASender: TObject; const call: IZoiperCall; 
                                                                      const filename: WideString) of object;
  TZoiperAPI_OnZoiperCallStopRecording = procedure(ASender: TObject; const call: IZoiperCall; 
                                                                     const filename: WideString) of object;
  TZoiperAPI_OnZoiperCallRecvDTMF = procedure(ASender: TObject; const call: IZoiperCall; 
                                                                const dtmf: WideString) of object;
  TZoiperAPI_OnZoiperTransferSuccess = procedure(ASender: TObject; const call: IZoiperCall) of object;
  TZoiperAPI_OnZoiperTransferFailed = procedure(ASender: TObject; const call: IZoiperCall) of object;
  TZoiperAPI_OnZoiperCallSipHeader = procedure(ASender: TObject; const call: IZoiperCall; 
                                                                 const headers: IZoiperHeaders) of object;
  TZoiperAPI_OnZoiperCallHoldLocal = procedure(ASender: TObject; const call: IZoiperCall) of object;
  TZoiperAPI_OnZoiperCallUnholdLocal = procedure(ASender: TObject; const call: IZoiperCall) of object;
  TZoiperAPI_OnZoiperCallIncomingURL = procedure(ASender: TObject; const call: IZoiperCall; 
                                                                   const url: WideString) of object;
  TZoiperAPI_OnZoiperContactCreate = procedure(ASender: TObject; const Contact: IZoiperContact; 
                                                                 const Name: WideString) of object;
  TZoiperAPI_OnZoiperContactDelete = procedure(ASender: TObject; const Contact: IZoiperContact) of object;
  TZoiperAPI_OnZoiperContactChange = procedure(ASender: TObject; const Contact: IZoiperContact) of object;
  TZoiperAPI_OnZoiperContactStatus = procedure(ASender: TObject; const Contact: IZoiperContact; 
                                                                 status: EContactExtendedState) of object;
  TZoiperAPI_OnZoiperContactSubscribe = procedure(ASender: TObject; const Contact: IZoiperContact) of object;
  TZoiperAPI_OnZoiperContactMessageRecv = procedure(ASender: TObject; const Contact: IZoiperContact; 
                                                                      const Message: WideString) of object;
  TZoiperAPI_OnZoiperContactMessageSent = procedure(ASender: TObject; const Contact: IZoiperContact; 
                                                                      const Message: WideString) of object;
  TZoiperAPI_OnZoiperContactMessageFailed = procedure(ASender: TObject; const Contact: IZoiperContact; 
                                                                        const Message: WideString; 
                                                                        reason: Integer) of object;
  TZoiperAPI_OnZoiperAccountRegister = procedure(ASender: TObject; const Account: IZoiperAccount) of object;
  TZoiperAPI_OnZoiperAccountUnregister = procedure(ASender: TObject; const Account: IZoiperAccount) of object;
  TZoiperAPI_OnZoiperAccountRegisterFail = procedure(ASender: TObject; const Account: IZoiperAccount; 
                                                                       cause_code: Integer) of object;
  TZoiperAPI_OnZoiperPlaybackFinished = procedure(ASender: TObject; const playback: IZoiperPlayback) of object;
  TZoiperAPI_OnZoiperPlaybackSoundURLLoaded = procedure(ASender: TObject; const playback: IDispatch; 
                                                                          result: WordBool; 
                                                                          const response: WideString) of object;
  TZoiperAPI_OnZoiperSMSDelete = procedure(ASender: TObject; const Phone: IZoiperPhone; 
                                                             const ident: WideString) of object;
  TZoiperAPI_OnZoiperSMSSend = procedure(ASender: TObject; const Phone: IZoiperPhone; 
                                                           const Message: WideString; 
                                                           const number: WideString) of object;
  TZoiperAPI_OnZoiperConferenceHold = procedure(ASender: TObject; const Phone: IZoiperPhone) of object;
  TZoiperAPI_OnZoiperConferenceUnhold = procedure(ASender: TObject; const Phone: IZoiperPhone) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TZoiperAPI_
// Help String      : Zoiper API Object
// Default Interface: IZoiperPhone
// Def. Intf. DISP? : Yes
// Event   Interface: IZoiperEvent
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TZoiperAPI_Properties= class;
{$ENDIF}
  TZoiperAPI_ = class(TOleServer)
  private
    FOnZoiperFilter: TZoiperAPI_OnZoiperFilter;
    FOnZoiperCallHang: TZoiperAPI_OnZoiperCallHang;
    FOnZoiperCallRing: TZoiperAPI_OnZoiperCallRing;
    FOnZoiperCallHold: TZoiperAPI_OnZoiperCallHold;
    FOnZoiperCallUnhold: TZoiperAPI_OnZoiperCallUnhold;
    FOnZoiperCallAccept: TZoiperAPI_OnZoiperCallAccept;
    FOnZoiperCallReject: TZoiperAPI_OnZoiperCallReject;
    FOnZoiperCallFail: TZoiperAPI_OnZoiperCallFail;
    FOnZoiperCallIncoming: TZoiperAPI_OnZoiperCallIncoming;
    FOnZoiperCallStartRecording: TZoiperAPI_OnZoiperCallStartRecording;
    FOnZoiperCallStopRecording: TZoiperAPI_OnZoiperCallStopRecording;
    FOnZoiperCallRecvDTMF: TZoiperAPI_OnZoiperCallRecvDTMF;
    FOnZoiperTransferSuccess: TZoiperAPI_OnZoiperTransferSuccess;
    FOnZoiperTransferFailed: TZoiperAPI_OnZoiperTransferFailed;
    FOnZoiperCallSipHeader: TZoiperAPI_OnZoiperCallSipHeader;
    FOnZoiperCallHoldLocal: TZoiperAPI_OnZoiperCallHoldLocal;
    FOnZoiperCallUnholdLocal: TZoiperAPI_OnZoiperCallUnholdLocal;
    FOnZoiperCallIncomingURL: TZoiperAPI_OnZoiperCallIncomingURL;
    FOnZoiperContactCreate: TZoiperAPI_OnZoiperContactCreate;
    FOnZoiperContactDelete: TZoiperAPI_OnZoiperContactDelete;
    FOnZoiperContactChange: TZoiperAPI_OnZoiperContactChange;
    FOnZoiperContactStatus: TZoiperAPI_OnZoiperContactStatus;
    FOnZoiperContactSubscribe: TZoiperAPI_OnZoiperContactSubscribe;
    FOnZoiperContactMessageRecv: TZoiperAPI_OnZoiperContactMessageRecv;
    FOnZoiperContactMessageSent: TZoiperAPI_OnZoiperContactMessageSent;
    FOnZoiperContactMessageFailed: TZoiperAPI_OnZoiperContactMessageFailed;
    FOnZoiperAccountRegister: TZoiperAPI_OnZoiperAccountRegister;
    FOnZoiperAccountUnregister: TZoiperAPI_OnZoiperAccountUnregister;
    FOnZoiperAccountRegisterFail: TZoiperAPI_OnZoiperAccountRegisterFail;
    FOnZoiperPlaybackFinished: TZoiperAPI_OnZoiperPlaybackFinished;
    FOnZoiperPlaybackSoundURLLoaded: TZoiperAPI_OnZoiperPlaybackSoundURLLoaded;
    FOnZoiperSMSDelete: TZoiperAPI_OnZoiperSMSDelete;
    FOnZoiperSMSSend: TZoiperAPI_OnZoiperSMSSend;
    FOnZoiperConferenceHold: TZoiperAPI_OnZoiperConferenceHold;
    FOnZoiperConferenceUnhold: TZoiperAPI_OnZoiperConferenceUnhold;
    FIntf: IZoiperPhone;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TZoiperAPI_Properties;
    function GetServerProperties: TZoiperAPI_Properties;
{$ENDIF}
    function GetDefaultInterface: IZoiperPhone;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Version: WideString;
    function Get_ActiveCall: IZoiperCall;
    procedure Set_ActiveCall(const retValue: IZoiperCall);
    function Get_NumberOfCalls: Integer;
    function Get_DefaultFilterText: WideString;
    procedure Set_DefaultFilterText(const retval: WideString);
    function Get_MuteSpeaker: WordBool;
    procedure Set_MuteSpeaker(retValue: WordBool);
    function Get_MuteMicrophone: WordBool;
    procedure Set_MuteMicrophone(retValue: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IZoiperPhone);
    procedure Disconnect; override;
    function Dial(const Phone: WideString; Video: SYSINT): IZoiperCall;
    procedure Hang;
    function GetAudio: IZoiperAudio;
    function GetVideo: IZoiperVideo;
    function GetConfig: IZoiperConfig;
    function GetContact(const Phone: WideString): IZoiperContact;
    function GetContactByIndex(index: SYSINT): IZoiperContact;
    function AddContact(const Phone: WideString): IZoiperContact;
    function DelContact(const Phone: WideString): IZoiperContact;
    function UseAccount(const Name: WideString): IZoiperAccount;
    procedure DelAccount(const Name: WideString);
    function GetAccount(const Name: WideString): IZoiperAccount;
    function GetAccountByIndex(index: SYSINT): IZoiperAccount;
    function AddAccount(const Name: WideString; Type_: EAccountType): IZoiperAccount;
    procedure DelDialog(const Name: WideString);
    procedure ShowAudioWizard;
    procedure ShowLogDialog;
    procedure ShowTransferDialog;
    procedure LoadPlaybackSoundFromURL(const url: WideString);
    procedure LoadPlaybackSoundFromFile(const filename: WideString);
    procedure AddSMS(const ident: WideString; const sender: WideString; const Message: WideString; 
                     unread: WordBool);
    procedure DelSMS(const ident: WideString);
    procedure SetRecordingProperty(const Name: WideString; const Value: WideString);
    procedure SaveOptions;
    procedure SaveContact;
    procedure SavePrivacy;
    property DefaultInterface: IZoiperPhone read GetDefaultInterface;
    property Version: WideString read Get_Version;
    property NumberOfCalls: Integer read Get_NumberOfCalls;
    property ActiveCall: IZoiperCall read Get_ActiveCall write Set_ActiveCall;
    property DefaultFilterText: WideString read Get_DefaultFilterText write Set_DefaultFilterText;
    property MuteSpeaker: WordBool read Get_MuteSpeaker write Set_MuteSpeaker;
    property MuteMicrophone: WordBool read Get_MuteMicrophone write Set_MuteMicrophone;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TZoiperAPI_Properties read GetServerProperties;
{$ENDIF}
    property OnZoiperFilter: TZoiperAPI_OnZoiperFilter read FOnZoiperFilter write FOnZoiperFilter;
    property OnZoiperCallHang: TZoiperAPI_OnZoiperCallHang read FOnZoiperCallHang write FOnZoiperCallHang;
    property OnZoiperCallRing: TZoiperAPI_OnZoiperCallRing read FOnZoiperCallRing write FOnZoiperCallRing;
    property OnZoiperCallHold: TZoiperAPI_OnZoiperCallHold read FOnZoiperCallHold write FOnZoiperCallHold;
    property OnZoiperCallUnhold: TZoiperAPI_OnZoiperCallUnhold read FOnZoiperCallUnhold write FOnZoiperCallUnhold;
    property OnZoiperCallAccept: TZoiperAPI_OnZoiperCallAccept read FOnZoiperCallAccept write FOnZoiperCallAccept;
    property OnZoiperCallReject: TZoiperAPI_OnZoiperCallReject read FOnZoiperCallReject write FOnZoiperCallReject;
    property OnZoiperCallFail: TZoiperAPI_OnZoiperCallFail read FOnZoiperCallFail write FOnZoiperCallFail;
    property OnZoiperCallIncoming: TZoiperAPI_OnZoiperCallIncoming read FOnZoiperCallIncoming write FOnZoiperCallIncoming;
    property OnZoiperCallStartRecording: TZoiperAPI_OnZoiperCallStartRecording read FOnZoiperCallStartRecording write FOnZoiperCallStartRecording;
    property OnZoiperCallStopRecording: TZoiperAPI_OnZoiperCallStopRecording read FOnZoiperCallStopRecording write FOnZoiperCallStopRecording;
    property OnZoiperCallRecvDTMF: TZoiperAPI_OnZoiperCallRecvDTMF read FOnZoiperCallRecvDTMF write FOnZoiperCallRecvDTMF;
    property OnZoiperTransferSuccess: TZoiperAPI_OnZoiperTransferSuccess read FOnZoiperTransferSuccess write FOnZoiperTransferSuccess;
    property OnZoiperTransferFailed: TZoiperAPI_OnZoiperTransferFailed read FOnZoiperTransferFailed write FOnZoiperTransferFailed;
    property OnZoiperCallSipHeader: TZoiperAPI_OnZoiperCallSipHeader read FOnZoiperCallSipHeader write FOnZoiperCallSipHeader;
    property OnZoiperCallHoldLocal: TZoiperAPI_OnZoiperCallHoldLocal read FOnZoiperCallHoldLocal write FOnZoiperCallHoldLocal;
    property OnZoiperCallUnholdLocal: TZoiperAPI_OnZoiperCallUnholdLocal read FOnZoiperCallUnholdLocal write FOnZoiperCallUnholdLocal;
    property OnZoiperCallIncomingURL: TZoiperAPI_OnZoiperCallIncomingURL read FOnZoiperCallIncomingURL write FOnZoiperCallIncomingURL;
    property OnZoiperContactCreate: TZoiperAPI_OnZoiperContactCreate read FOnZoiperContactCreate write FOnZoiperContactCreate;
    property OnZoiperContactDelete: TZoiperAPI_OnZoiperContactDelete read FOnZoiperContactDelete write FOnZoiperContactDelete;
    property OnZoiperContactChange: TZoiperAPI_OnZoiperContactChange read FOnZoiperContactChange write FOnZoiperContactChange;
    property OnZoiperContactStatus: TZoiperAPI_OnZoiperContactStatus read FOnZoiperContactStatus write FOnZoiperContactStatus;
    property OnZoiperContactSubscribe: TZoiperAPI_OnZoiperContactSubscribe read FOnZoiperContactSubscribe write FOnZoiperContactSubscribe;
    property OnZoiperContactMessageRecv: TZoiperAPI_OnZoiperContactMessageRecv read FOnZoiperContactMessageRecv write FOnZoiperContactMessageRecv;
    property OnZoiperContactMessageSent: TZoiperAPI_OnZoiperContactMessageSent read FOnZoiperContactMessageSent write FOnZoiperContactMessageSent;
    property OnZoiperContactMessageFailed: TZoiperAPI_OnZoiperContactMessageFailed read FOnZoiperContactMessageFailed write FOnZoiperContactMessageFailed;
    property OnZoiperAccountRegister: TZoiperAPI_OnZoiperAccountRegister read FOnZoiperAccountRegister write FOnZoiperAccountRegister;
    property OnZoiperAccountUnregister: TZoiperAPI_OnZoiperAccountUnregister read FOnZoiperAccountUnregister write FOnZoiperAccountUnregister;
    property OnZoiperAccountRegisterFail: TZoiperAPI_OnZoiperAccountRegisterFail read FOnZoiperAccountRegisterFail write FOnZoiperAccountRegisterFail;
    property OnZoiperPlaybackFinished: TZoiperAPI_OnZoiperPlaybackFinished read FOnZoiperPlaybackFinished write FOnZoiperPlaybackFinished;
    property OnZoiperPlaybackSoundURLLoaded: TZoiperAPI_OnZoiperPlaybackSoundURLLoaded read FOnZoiperPlaybackSoundURLLoaded write FOnZoiperPlaybackSoundURLLoaded;
    property OnZoiperSMSDelete: TZoiperAPI_OnZoiperSMSDelete read FOnZoiperSMSDelete write FOnZoiperSMSDelete;
    property OnZoiperSMSSend: TZoiperAPI_OnZoiperSMSSend read FOnZoiperSMSSend write FOnZoiperSMSSend;
    property OnZoiperConferenceHold: TZoiperAPI_OnZoiperConferenceHold read FOnZoiperConferenceHold write FOnZoiperConferenceHold;
    property OnZoiperConferenceUnhold: TZoiperAPI_OnZoiperConferenceUnhold read FOnZoiperConferenceUnhold write FOnZoiperConferenceUnhold;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TZoiperAPI_
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TZoiperAPI_Properties = class(TPersistent)
  private
    FServer:    TZoiperAPI_;
    function    GetDefaultInterface: IZoiperPhone;
    constructor Create(AServer: TZoiperAPI_);
  protected
    function Get_Version: WideString;
    function Get_ActiveCall: IZoiperCall;
    procedure Set_ActiveCall(const retValue: IZoiperCall);
    function Get_NumberOfCalls: Integer;
    function Get_DefaultFilterText: WideString;
    procedure Set_DefaultFilterText(const retval: WideString);
    function Get_MuteSpeaker: WordBool;
    procedure Set_MuteSpeaker(retValue: WordBool);
    function Get_MuteMicrophone: WordBool;
    procedure Set_MuteMicrophone(retValue: WordBool);
  public
    property DefaultInterface: IZoiperPhone read GetDefaultInterface;
  published
    property ActiveCall: IZoiperCall read Get_ActiveCall write Set_ActiveCall;
    property DefaultFilterText: WideString read Get_DefaultFilterText write Set_DefaultFilterText;
    property MuteSpeaker: WordBool read Get_MuteSpeaker write Set_MuteSpeaker;
    property MuteMicrophone: WordBool read Get_MuteMicrophone write Set_MuteMicrophone;
  end;
{$ENDIF}


implementation

uses ComObj;

class function CoZoiperAPI_.Create: IZoiperPhone;
begin
  Result := CreateComObject(CLASS_ZoiperAPI_) as IZoiperPhone;
end;

class function CoZoiperAPI_.CreateRemote(const MachineName: string): IZoiperPhone;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ZoiperAPI_) as IZoiperPhone;
end;

procedure TZoiperAPI_.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EDE266EE-2C85-4436-A9A3-940CC5B45A1F}';
    IntfIID:   '{50B770EA-DD3B-40F3-9228-6322B4C981C9}';
    EventIID:  '{488198FA-EB61-4DC7-9254-9A1BB039A4A8}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TZoiperAPI_.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IZoiperPhone;
  end;
end;

procedure TZoiperAPI_.ConnectTo(svrIntf: IZoiperPhone);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TZoiperAPI_.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TZoiperAPI_.GetDefaultInterface: IZoiperPhone;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TZoiperAPI_.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TZoiperAPI_Properties.Create(Self);
{$ENDIF}
end;

destructor TZoiperAPI_.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TZoiperAPI_.GetServerProperties: TZoiperAPI_Properties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TZoiperAPI_.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1020: if Assigned(FOnZoiperFilter) then
         FOnZoiperFilter(Self, Params[0] {const WideString});
    2000: if Assigned(FOnZoiperCallHang) then
         FOnZoiperCallHang(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall});
    2020: if Assigned(FOnZoiperCallRing) then
         FOnZoiperCallRing(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall});
    2030: if Assigned(FOnZoiperCallHold) then
         FOnZoiperCallHold(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall});
    2040: if Assigned(FOnZoiperCallUnhold) then
         FOnZoiperCallUnhold(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall});
    2050: if Assigned(FOnZoiperCallAccept) then
         FOnZoiperCallAccept(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall});
    2060: if Assigned(FOnZoiperCallReject) then
         FOnZoiperCallReject(Self,
                             IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall},
                             Params[1] {Integer});
    2010: if Assigned(FOnZoiperCallFail) then
         FOnZoiperCallFail(Self,
                           IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall},
                           Params[1] {Integer});
    2080: if Assigned(FOnZoiperCallIncoming) then
         FOnZoiperCallIncoming(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall});
    2070: if Assigned(FOnZoiperCallStartRecording) then
         FOnZoiperCallStartRecording(Self,
                                     IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall},
                                     Params[1] {const WideString});
    2072: if Assigned(FOnZoiperCallStopRecording) then
         FOnZoiperCallStopRecording(Self,
                                    IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall},
                                    Params[1] {const WideString});
    1405: if Assigned(FOnZoiperCallRecvDTMF) then
         FOnZoiperCallRecvDTMF(Self,
                               IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall},
                               Params[1] {const WideString});
    2130: if Assigned(FOnZoiperTransferSuccess) then
         FOnZoiperTransferSuccess(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall});
    2140: if Assigned(FOnZoiperTransferFailed) then
         FOnZoiperTransferFailed(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall});
    2150: if Assigned(FOnZoiperCallSipHeader) then
         FOnZoiperCallSipHeader(Self,
                                IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall},
                                IUnknown(TVarData(Params[1]).VPointer) as IZoiperHeaders {const IZoiperHeaders});
    2110: if Assigned(FOnZoiperCallHoldLocal) then
         FOnZoiperCallHoldLocal(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall});
    2120: if Assigned(FOnZoiperCallUnholdLocal) then
         FOnZoiperCallUnholdLocal(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall});
    2160: if Assigned(FOnZoiperCallIncomingURL) then
         FOnZoiperCallIncomingURL(Self,
                                  IUnknown(TVarData(Params[0]).VPointer) as IZoiperCall {const IZoiperCall},
                                  Params[1] {const WideString});
    3000: if Assigned(FOnZoiperContactCreate) then
         FOnZoiperContactCreate(Self,
                                IUnknown(TVarData(Params[0]).VPointer) as IZoiperContact {const IZoiperContact},
                                Params[1] {const WideString});
    3010: if Assigned(FOnZoiperContactDelete) then
         FOnZoiperContactDelete(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperContact {const IZoiperContact});
    3020: if Assigned(FOnZoiperContactChange) then
         FOnZoiperContactChange(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperContact {const IZoiperContact});
    3030: if Assigned(FOnZoiperContactStatus) then
         FOnZoiperContactStatus(Self,
                                IUnknown(TVarData(Params[0]).VPointer) as IZoiperContact {const IZoiperContact},
                                Params[1] {EContactExtendedState});
    3060: if Assigned(FOnZoiperContactSubscribe) then
         FOnZoiperContactSubscribe(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperContact {const IZoiperContact});
    4000: if Assigned(FOnZoiperContactMessageRecv) then
         FOnZoiperContactMessageRecv(Self,
                                     IUnknown(TVarData(Params[0]).VPointer) as IZoiperContact {const IZoiperContact},
                                     Params[1] {const WideString});
    4010: if Assigned(FOnZoiperContactMessageSent) then
         FOnZoiperContactMessageSent(Self,
                                     IUnknown(TVarData(Params[0]).VPointer) as IZoiperContact {const IZoiperContact},
                                     Params[1] {const WideString});
    4020: if Assigned(FOnZoiperContactMessageFailed) then
         FOnZoiperContactMessageFailed(Self,
                                       IUnknown(TVarData(Params[0]).VPointer) as IZoiperContact {const IZoiperContact},
                                       Params[1] {const WideString},
                                       Params[2] {Integer});
    5000: if Assigned(FOnZoiperAccountRegister) then
         FOnZoiperAccountRegister(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperAccount {const IZoiperAccount});
    5010: if Assigned(FOnZoiperAccountUnregister) then
         FOnZoiperAccountUnregister(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperAccount {const IZoiperAccount});
    5020: if Assigned(FOnZoiperAccountRegisterFail) then
         FOnZoiperAccountRegisterFail(Self,
                                      IUnknown(TVarData(Params[0]).VPointer) as IZoiperAccount {const IZoiperAccount},
                                      Params[1] {Integer});
    8000: if Assigned(FOnZoiperPlaybackFinished) then
         FOnZoiperPlaybackFinished(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperPlayback {const IZoiperPlayback});
    8010: if Assigned(FOnZoiperPlaybackSoundURLLoaded) then
         FOnZoiperPlaybackSoundURLLoaded(Self,
                                         Params[0] {const IDispatch},
                                         Params[1] {WordBool},
                                         Params[2] {const WideString});
    9000: if Assigned(FOnZoiperSMSDelete) then
         FOnZoiperSMSDelete(Self,
                            IUnknown(TVarData(Params[0]).VPointer) as IZoiperPhone {const IZoiperPhone},
                            Params[1] {const WideString});
    9010: if Assigned(FOnZoiperSMSSend) then
         FOnZoiperSMSSend(Self,
                          IUnknown(TVarData(Params[0]).VPointer) as IZoiperPhone {const IZoiperPhone},
                          Params[1] {const WideString},
                          Params[2] {const WideString});
    7000: if Assigned(FOnZoiperConferenceHold) then
         FOnZoiperConferenceHold(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperPhone {const IZoiperPhone});
    7020: if Assigned(FOnZoiperConferenceUnhold) then
         FOnZoiperConferenceUnhold(Self, IUnknown(TVarData(Params[0]).VPointer) as IZoiperPhone {const IZoiperPhone});
  end; {case DispID}
end;

function TZoiperAPI_.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TZoiperAPI_.Get_ActiveCall: IZoiperCall;
begin
    Result := DefaultInterface.ActiveCall;
end;

procedure TZoiperAPI_.Set_ActiveCall(const retValue: IZoiperCall);
begin
  DefaultInterface.ActiveCall := retValue {TKIND_DISPATCH};
end;

function TZoiperAPI_.Get_NumberOfCalls: Integer;
begin
    Result := DefaultInterface.NumberOfCalls;
end;

function TZoiperAPI_.Get_DefaultFilterText: WideString;
begin
    Result := DefaultInterface.DefaultFilterText;
end;

procedure TZoiperAPI_.Set_DefaultFilterText(const retval: WideString);
  { Warning: The property DefaultFilterText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DefaultFilterText := retval;
end;

function TZoiperAPI_.Get_MuteSpeaker: WordBool;
begin
    Result := DefaultInterface.MuteSpeaker;
end;

procedure TZoiperAPI_.Set_MuteSpeaker(retValue: WordBool);
begin
  DefaultInterface.MuteSpeaker := retValue {TKIND_DISPATCH};
end;

function TZoiperAPI_.Get_MuteMicrophone: WordBool;
begin
    Result := DefaultInterface.MuteMicrophone;
end;

procedure TZoiperAPI_.Set_MuteMicrophone(retValue: WordBool);
begin
  DefaultInterface.MuteMicrophone := retValue {TKIND_DISPATCH};
end;

function TZoiperAPI_.Dial(const Phone: WideString; Video: SYSINT): IZoiperCall;
begin
  Result := DefaultInterface.Dial(Phone, Video);
end;

procedure TZoiperAPI_.Hang;
begin
  DefaultInterface.Hang;
end;

function TZoiperAPI_.GetAudio: IZoiperAudio;
begin
  Result := DefaultInterface.GetAudio;
end;

function TZoiperAPI_.GetVideo: IZoiperVideo;
begin
  Result := DefaultInterface.GetVideo;
end;

function TZoiperAPI_.GetConfig: IZoiperConfig;
begin
  Result := DefaultInterface.GetConfig;
end;

function TZoiperAPI_.GetContact(const Phone: WideString): IZoiperContact;
begin
  Result := DefaultInterface.GetContact(Phone);
end;

function TZoiperAPI_.GetContactByIndex(index: SYSINT): IZoiperContact;
begin
  Result := DefaultInterface.GetContactByIndex(index);
end;

function TZoiperAPI_.AddContact(const Phone: WideString): IZoiperContact;
begin
  Result := DefaultInterface.AddContact(Phone);
end;

function TZoiperAPI_.DelContact(const Phone: WideString): IZoiperContact;
begin
  Result := DefaultInterface.DelContact(Phone);
end;

function TZoiperAPI_.UseAccount(const Name: WideString): IZoiperAccount;
begin
  Result := DefaultInterface.UseAccount(Name);
end;

procedure TZoiperAPI_.DelAccount(const Name: WideString);
begin
  DefaultInterface.DelAccount(Name);
end;

function TZoiperAPI_.GetAccount(const Name: WideString): IZoiperAccount;
begin
  Result := DefaultInterface.GetAccount(Name);
end;

function TZoiperAPI_.GetAccountByIndex(index: SYSINT): IZoiperAccount;
begin
  Result := DefaultInterface.GetAccountByIndex(index);
end;

function TZoiperAPI_.AddAccount(const Name: WideString; Type_: EAccountType): IZoiperAccount;
begin
  Result := DefaultInterface.AddAccount(Name, Type_);
end;

procedure TZoiperAPI_.DelDialog(const Name: WideString);
begin
  DefaultInterface.DelDialog(Name);
end;

procedure TZoiperAPI_.ShowAudioWizard;
begin
  DefaultInterface.ShowAudioWizard;
end;

procedure TZoiperAPI_.ShowLogDialog;
begin
  DefaultInterface.ShowLogDialog;
end;

procedure TZoiperAPI_.ShowTransferDialog;
begin
  DefaultInterface.ShowTransferDialog;
end;

procedure TZoiperAPI_.LoadPlaybackSoundFromURL(const url: WideString);
begin
  DefaultInterface.LoadPlaybackSoundFromURL(url);
end;

procedure TZoiperAPI_.LoadPlaybackSoundFromFile(const filename: WideString);
begin
  DefaultInterface.LoadPlaybackSoundFromFile(filename);
end;

procedure TZoiperAPI_.AddSMS(const ident: WideString; const sender: WideString; 
                             const Message: WideString; unread: WordBool);
begin
  DefaultInterface.AddSMS(ident, sender, Message, unread);
end;

procedure TZoiperAPI_.DelSMS(const ident: WideString);
begin
  DefaultInterface.DelSMS(ident);
end;

procedure TZoiperAPI_.SetRecordingProperty(const Name: WideString; const Value: WideString);
begin
  DefaultInterface.SetRecordingProperty(Name, Value);
end;

procedure TZoiperAPI_.SaveOptions;
begin
  DefaultInterface.SaveOptions;
end;

procedure TZoiperAPI_.SaveContact;
begin
  DefaultInterface.SaveContact;
end;

procedure TZoiperAPI_.SavePrivacy;
begin
  DefaultInterface.SavePrivacy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TZoiperAPI_Properties.Create(AServer: TZoiperAPI_);
begin
  inherited Create;
  FServer := AServer;
end;

function TZoiperAPI_Properties.GetDefaultInterface: IZoiperPhone;
begin
  Result := FServer.DefaultInterface;
end;

function TZoiperAPI_Properties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TZoiperAPI_Properties.Get_ActiveCall: IZoiperCall;
begin
    Result := DefaultInterface.ActiveCall;
end;

procedure TZoiperAPI_Properties.Set_ActiveCall(const retValue: IZoiperCall);
begin
  DefaultInterface.ActiveCall := retValue {TKIND_DISPATCH};
end;

function TZoiperAPI_Properties.Get_NumberOfCalls: Integer;
begin
    Result := DefaultInterface.NumberOfCalls;
end;

function TZoiperAPI_Properties.Get_DefaultFilterText: WideString;
begin
    Result := DefaultInterface.DefaultFilterText;
end;

procedure TZoiperAPI_Properties.Set_DefaultFilterText(const retval: WideString);
  { Warning: The property DefaultFilterText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DefaultFilterText := retval;
end;

function TZoiperAPI_Properties.Get_MuteSpeaker: WordBool;
begin
    Result := DefaultInterface.MuteSpeaker;
end;

procedure TZoiperAPI_Properties.Set_MuteSpeaker(retValue: WordBool);
begin
  DefaultInterface.MuteSpeaker := retValue {TKIND_DISPATCH};
end;

function TZoiperAPI_Properties.Get_MuteMicrophone: WordBool;
begin
    Result := DefaultInterface.MuteMicrophone;
end;

procedure TZoiperAPI_Properties.Set_MuteMicrophone(retValue: WordBool);
begin
  DefaultInterface.MuteMicrophone := retValue {TKIND_DISPATCH};
end;

{$ENDIF}

end.
