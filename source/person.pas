unit Person;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, MyObjects, location;

type

          { TCnpj }

  TCnpj = class(TMyObject)

  end;

      { TCpf }

  TCpf = class(TMyObject)

  end;

  { TPerson }

  TPerson = class(TMyObject)
  private
    FActive: Boolean;
    FName: string;
  public
    constructor Create;
    procedure Validate;
  published
    property Active: Boolean read FActive write FActive default True;
    property Name: string read FName write FName;

  end;

    { TPersonJ }

  TPersonJ = class(TPerson)
  private
    FCnpj: TCnpj;
    FAdressBill: TAddress;
    function getAddress: TAddress;
    function getCnpj: TCnpj;
    procedure setAddress(AValue: TAddress);
    procedure setCnpj(AValue: TCnpj);

  public
    constructor Create;
    procedure Validate;
  published
    property Cnpj: TCnpj read getCnpj write setCnpj;
    property Address: TAddress read getAddress write setAddress;

  end;

      { TPersonF }

  TPersonF = class(TPerson)
  private
    FCpf: TCpf;
    FAdressBill: TAddress;
    FAddressDeliv: TAddress;
    function getAddressBill: TAddress;
    function getAddressDeliv: TAddress;
    function getCpf: TCpf;
    procedure setAddressBill(AValue: TAddress);
    procedure setAddressDeliv(AValue: TAddress);
    procedure setCpf(AValue: TCpf);

  public
    constructor Create;
    procedure Validate;
  published
    property Cpf: TCpf read getCpf write setCpf;
    property AddressBilling: TAddress read getAddressBill write setAddressBill;
    property AddressDelivery: TAddress read getAddressDeliv write setAddressDeliv;

  end;

implementation

{ TPersonF }

function TPersonF.getAddressBill: TAddress;
begin

end;

function TPersonF.getAddressDeliv: TAddress;
begin

end;


function TPersonF.getCpf: TCpf;
begin

end;


procedure TPersonF.setAddressBill(AValue: TAddress);
begin

end;

procedure TPersonF.setAddressDeliv(AValue: TAddress);
begin

end;


procedure TPersonF.setCpf(AValue: TCpf);
begin

end;

constructor TPersonF.Create;
begin

end;

procedure TPersonF.Validate;
begin

end;

{ TPersonJ }

function TPersonJ.getAddress: TAddress;
begin

end;

function TPersonJ.getCnpj: TCnpj;
begin

end;

procedure TPersonJ.setAddress(AValue: TAddress);
begin

end;

procedure TPersonJ.setCnpj(AValue: TCnpj);
begin

end;

constructor TPersonJ.Create;
begin

end;

procedure TPersonJ.Validate;
begin

end;

constructor TPerson.Create;
begin
  inherited;
  FActive := True;

end;

procedure TPerson.Validate;
begin
  Inherited;
  AssertData(FName <> '', 'Name must not be empty.');
end;

 //
end.

