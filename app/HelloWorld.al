codeunit 50100 "Hello World"
{
    procedure GetGreeting(Name: Text): Text
    begin
        if Name = '' then
            exit('Hello, World!');
        exit(StrSubstNo('Hello, %1!', Name));
    end;
}
