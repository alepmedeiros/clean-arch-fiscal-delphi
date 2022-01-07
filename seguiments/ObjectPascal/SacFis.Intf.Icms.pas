unit SacFis.Intf.Icms;

interface

type
  {$REGION 'ICMS'}
  IIcms = interface
    ['{4EBE4EC3-0095-42CC-9EF0-9CC209F8ADD5}']
    function PossuiIcmsProprio: Boolean;
    function PossuiIcmsST: Boolean;
    function PossuiRedBCIcmsProprio: Boolean;
    function PossuiRedBCIcmsST: Boolean;
    function BaseIcms: Double;
    function ValorIcms: Double;
    function BaseIcmsST: Double;
    function ValorIcmsST: Double;
  end;

  IIcms00 = interface(IIcms)
    ['{49958F24-8242-4146-B63C-5969599BAD89}']
  end;

  IIcms10 = interface(IIcms)
    ['{D7968C0C-0957-4E70-8F8E-6D5E3F82115E}']
  end;

  IIcms20 = interface(IIcms)
    ['{6E91DBD7-3129-4914-AE7E-22AF5A3472BA}']
  end;

  IIcms30 = interface(IIcms)
    ['{FF8C1973-2421-4CA2-A255-5D1AC3097D44}']
  end;

  IIcms40_41_50 = interface(IIcms)
    ['{E6E1C82B-779D-4DAC-9671-7FC35681EDA1}']
  end;

  IIcms51 = interface(IIcms)
    ['{78D72F16-27F3-4965-80FE-A82A717FCF16}']
  end;

  IIcms60 = interface(IIcms)
    ['{FB9F1A60-EA79-40DE-A22E-314BBB064BDE}']
  end;

  IIcms70 = interface(IIcms)
    ['{FDD42AFC-096B-45CE-AA40-4148B0DDF87E}']
  end;

  IIcms90 = interface(IIcms)
    ['{2F8A6783-4022-4F52-9A37-5C12711D52E6}']
  end;
  {$ENDREGION}

  //

  //

  {$REGION 'CSOSN'}
  ICsosn101_102_103 = interface(IIcms)
    ['{C8746694-E269-49E6-838C-A0329B282A03}']
  end;

  ICsosn900 = interface(IIcms)
    ['{34525C68-6D4E-4D09-BB6C-101E9FB40168}']
  end;
  {$ENDREGION}

implementation

end.
