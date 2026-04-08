codeunit 50150 "Hello World Tests"
{
    Subtype = Test;

    [Test]
    procedure TestGetGreetingWithName()
    var
        HelloWorld: Codeunit "Hello World";
        LibraryAssert: Codeunit "Library Assert";
    begin
        // [GIVEN] A name
        // [WHEN] GetGreeting is called with the name
        // [THEN] The greeting includes the name
        LibraryAssert.AreEqual(
            'Hello, Business Central!',
            HelloWorld.GetGreeting('Business Central'),
            'Greeting with name was not as expected'
        );
    end;

    [Test]
    procedure TestGetGreetingWithEmptyName()
    var
        HelloWorld: Codeunit "Hello World";
        LibraryAssert: Codeunit "Library Assert";
    begin
        // [GIVEN] An empty name
        // [WHEN] GetGreeting is called with an empty string
        // [THEN] The default greeting is returned
        LibraryAssert.AreEqual(
            'Hello, World!',
            HelloWorld.GetGreeting(''),
            'Default greeting was not as expected'
        );
    end;
}
