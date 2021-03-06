codeunit 92153 "Enabl. Actns Non Flrs ALTT FLX"
{
    SubType = Test;

    trigger OnRun()
    begin
        // (c) fluxxus.nl - https://github.com/fluxxus-nl/Test-Tool-Extension

        // [FEATURE] Enabling Actions on Non Failures Unfiltered
        // [FEATURE] Enabling Actions on Non Failures Filtered
    end;

    [Test]
    procedure UnfilteredDisabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Unfiltered
    begin
        // [SCENARIO #0001] Unfiltered disabled succesfull test functions
        Initialize();

        // [GIVEN] One disabled test codeunit with five disabled succesfull test functions
        CreateOneDisabledTestCodeunitWithFiveDisabledSuccesfullTestFunctions();

        // [GIVEN] One disabled test codeunit with three disabled succesfull test functions
        CreateOneDisabledTestCodeunitWithThreeDisabledSuccesfullTestFunctions();

        // [WHEN] Do nothing
        DoNothing();

        // [THEN] Select on All is enabled
        VerifySelectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is disabled
        VerifyDeselectOnAllIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is enabled
        VerifySelectOnNonFailuresIsEnabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure UnfilteredEnabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Unfiltered
    begin
        // [SCENARIO #0002] Unfiltered enabled succesfull test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled succesfull test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledSuccesfullTestFunctions();

        // [GIVEN] One enabled test codeunit with three enabled succesfull test functions
        CreateOneEnabledTestCodeunitWithThreeEnabledSuccesfullTestFunctions();

        // [WHEN] Do nothing
        DoNothing();

        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure UnfilteredEnabledAndDisabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Unfiltered
    begin
        // [SCENARIO #0003] Unfiltered enabled and disabled succesfull test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled succesfull test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledSuccesfullTestFunctions();

        // [GIVEN] One disabled test codeunit with three disabled succesfull test functions
        CreateOneDisabledTestCodeunitWithThreeDisabledSuccesfullTestFunctions();

        // [WHEN] Do nothing
        DoNothing();

        // [THEN] Select on All is enabled
        VerifySelectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is enabled
        VerifySelectOnNonFailuresIsEnabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure SelectOnAllOnUnfilteredDisabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Unfiltered
    begin
        // [SCENARIO #0004] Select on All on unfiltered disabled succesfull test functions
        Initialize();

        // [GIVEN] One disabled test codeunit with five disabled succesfull test functions
        CreateOneDisabledTestCodeunitWithFiveDisabledSuccesfullTestFunctions();

        // [GIVEN] One disabled test codeunit with three disabled succesfull test functions
        CreateOneDisabledTestCodeunitWithThreeDisabledSuccesfullTestFunctions();

        // [WHEN] Perform Select on All
        PerformSelectOnAll(NoFilterOnCodeunit());

        // [THEN] Run is set on all test codeunits and functions
        VerifyRunIsSetOnAllTestCodeunitsAndFunctions(NoFilterOnCodeunit());
        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure DeselectOnAllOnUnfilteredEnabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Unfiltered
    begin
        // [SCENARIO #0005] Deselect on All on unfiltered enabled succesfull test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled succesfull test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledSuccesfullTestFunctions();

        // [GIVEN] One enabled test codeunit with three enabled succesfull test functions
        CreateOneEnabledTestCodeunitWithThreeEnabledSuccesfullTestFunctions();

        // [WHEN] Perform Deselect on All
        PerformDeselectOnAll(NoFilterOnCodeunit());

        // [THEN] Run is not set on all test codeunits and functions
        VerifyRunIsNotSetOnAllTestCodeunitsAndFunctions(NoFilterOnCodeunit());
        // [THEN] Select on All is enabled
        VerifySelectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is disabled
        VerifyDeselectOnAllIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is enabled
        VerifySelectOnNonFailuresIsEnabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure SelectOnFailuresOnUnfilteredDisabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Unfiltered
    begin
        // [SCENARIO #0006] Select on Failures on unfiltered disabled succesfull test functions
        Initialize();

        // [GIVEN] One disabled test codeunit with five disabled succesfull test functions
        CreateOneDisabledTestCodeunitWithFiveDisabledSuccesfullTestFunctions();

        // [GIVEN] One disabled test codeunit with three disabled succesfull test functions
        CreateOneDisabledTestCodeunitWithThreeDisabledSuccesfullTestFunctions();

        // [WHEN] Perform Select on Non Failures
        PerformSelectOnNonFailures(NoFilterOnCodeunit());

        // [THEN] Run is set on all test codeunits and functions
        VerifyRunIsSetOnAllTestCodeunitsAndFunctions(NoFilterOnCodeunit());
        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure SelectOnFailuresOnUnfilteredEnabledAndDisabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Unfiltered
    begin
        // [SCENARIO #0007] Select on Failures on unfiltered enabled and disabled succesfull test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled succesfull test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledSuccesfullTestFunctions();

        // [GIVEN] One disabled test codeunit with three disabled succesfull test functions
        CreateOneDisabledTestCodeunitWithThreeDisabledSuccesfullTestFunctions();

        // [WHEN] Perform Select on Non Failures
        PerformSelectOnNonFailures(NoFilterOnCodeunit());

        // [THEN] Run is set on all test codeunits and functions
        VerifyRunIsSetOnAllTestCodeunitsAndFunctions(NoFilterOnCodeunit());
        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure FilteredDisabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0008] Filtered disabled succesfull test functions
        Initialize();

        // [GIVEN] One disabled test codeunit with five disabled succesfull test functions
        CreateOneDisabledTestCodeunitWithFiveDisabledSuccesfullTestFunctions();

        // [GIVEN] One disabled test codeunit with three disabled succesfull test functions
        SecondCodeunitID := CreateOneDisabledTestCodeunitWithThreeDisabledSuccesfullTestFunctions();

        // [WHEN] Set filter on second test codeunit
        // handled by Verify... task in [THEN] part based on SecondCodeunitID

        // [THEN] Select on All is enabled
        VerifySelectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is disabled
        VerifyDeselectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is enabled
        VerifySelectOnNonFailuresIsEnabled(SetFilterOn(SecondCodeunitID));
    end;

    [Test]
    procedure FilteredEnabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0009] Filtered enabled succesfull test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled succesfull test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledSuccesfullTestFunctions();

        // [GIVEN] One enabled test codeunit with three enabled succesfull test functions
        SecondCodeunitID := CreateOneEnabledTestCodeunitWithThreeEnabledSuccesfullTestFunctions();

        // [WHEN] Set filter on second test codeunit
        // handled by Verify... task in [THEN] part based on SecondCodeunitID

        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
    end;

    [Test]
    procedure FilteredEnabledAndDisabledSuccesfullTestFunctions1()
    // [FEATURE] Enabling Actions on Non Failures Filtered
    var
        FirstCodeunitID: Integer;
    begin
        // [SCENARIO #0010] Filtered enabled and disabled succesfull test functions 1
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled succesfull test functions
        FirstCodeunitID := CreateOneEnabledTestCodeunitWithFiveEnabledSuccesfullTestFunctions();

        // [GIVEN] One disabled test codeunit with three disabled succesfull test functions
        CreateOneDisabledTestCodeunitWithThreeDisabledSuccesfullTestFunctions();

        // [WHEN] Set filter on first test codeunit
        // handled by Verify... task in [THEN] part based on FirstCodeunitID

        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(SetFilterOn(FirstCodeunitID));
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(SetFilterOn(FirstCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(FirstCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(FirstCodeunitID));
    end;

    [Test]
    procedure FilteredEnabledAndDisabledSuccesfullTestFunctions2()
    // [FEATURE] Enabling Actions on Non Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0011] Filtered enabled and disabled succesfull test functions 2
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled succesfull test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledSuccesfullTestFunctions();

        // [GIVEN] One disabled test codeunit with three disabled succesfull test functions
        SecondCodeunitID := CreateOneDisabledTestCodeunitWithThreeDisabledSuccesfullTestFunctions();

        // [WHEN] Set filter on second test codeunit
        // handled by Verify... task in [THEN] part based on SecondCodeunitID

        // [THEN] Select on All is enabled
        VerifySelectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is disabled
        VerifyDeselectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is enabled
        VerifySelectOnNonFailuresIsEnabled(SetFilterOn(SecondCodeunitID));
    end;

    [Test]
    procedure SelectOnAllOnFilteredDisabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0012] Select on All on filtered disabled succesfull test functions
        Initialize();

        // [GIVEN] One disabled test codeunit with five disabled succesfull test functions
        CreateOneDisabledTestCodeunitWithFiveDisabledSuccesfullTestFunctions();

        // [GIVEN] One disabled test codeunit with three disabled succesfull test functions
        SecondCodeunitID := CreateOneDisabledTestCodeunitWithThreeDisabledSuccesfullTestFunctions();

        // [GIVEN] Filter on second test codeunit
        // handled by Perform ... task in [WHEN] part based on SecondCodeunitID

        // [WHEN] Perform Select on All
        PerformSelectOnAll(SetFilterOn(SecondCodeunitID));

        // [THEN] Run is set on all filtered test codeunits and functions
        VerifyRunIsSetOnAllFilteredTestCodeunitsAndFunctions(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
    end;

    [Test]
    procedure DeselectOnAllOnFilteredEnabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0013] Deselect on All on filtered enabled succesfull test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled succesfull test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledSuccesfullTestFunctions();

        // [GIVEN] One enabled test codeunit with three enabled succesfull test functions
        SecondCodeunitID := CreateOneEnabledTestCodeunitWithThreeEnabledSuccesfullTestFunctions();

        // [GIVEN] Filter on second test codeunit
        // handled by Perform ... task in [WHEN] part based on SecondCodeunitID

        // [WHEN] Perform Deselect on All
        PerformDeselectOnAll(SetFilterOn(SecondCodeunitID));

        // [THEN] Run is not set on all filtered test codeunits and functions
        VerifyRunIsNotSetOnAllFilteredTestCodeunitsAndFunctions(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on All is enabled
        VerifySelectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is disabled
        VerifyDeselectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is enabled
        VerifySelectOnNonFailuresIsEnabled(SetFilterOn(SecondCodeunitID));
    end;

    [Test]
    procedure SelectOnFailuresOnFilteredDisabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0014] Select on Failures on filtered disabled succesfull test functions
        Initialize();

        // [GIVEN] One disabled test codeunit with five disabled succesfull test functions
        CreateOneDisabledTestCodeunitWithFiveDisabledSuccesfullTestFunctions();

        // [GIVEN] One disabled test codeunit with three disabled succesfull test functions
        SecondCodeunitID := CreateOneDisabledTestCodeunitWithThreeDisabledSuccesfullTestFunctions();

        // [GIVEN] Filter on second test codeunit
        // handled by Perform ... task in [WHEN] part based on SecondCodeunitID

        // [WHEN] Perform Select on Non Failures
        PerformSelectOnNonFailures(SetFilterOn(SecondCodeunitID));

        // [THEN] Run is set on all filtered test codeunits and functions
        VerifyRunIsSetOnAllFilteredTestCodeunitsAndFunctions(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
    end;

    [Test]
    procedure SelectOnFailuresOnFilteredEnabledAndDisabledSuccesfullTestFunctions()
    // [FEATURE] Enabling Actions on Non Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0015] Select on Failures on filtered enabled and disabled succesfull test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled succesfull test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledSuccesfullTestFunctions();

        // [GIVEN] One disabled test codeunit with three disabled succesfull test functions
        SecondCodeunitID := CreateOneDisabledTestCodeunitWithThreeDisabledSuccesfullTestFunctions();

        // [GIVEN] Filter on second test codeunit
        // handled by Perform ... task in [WHEN] part based on SecondCodeunitID

        // [WHEN] Perform Select on Non Failures
        PerformSelectOnNonFailures(SetFilterOn(SecondCodeunitID));

        // [THEN] Run is set on all filtered test codeunits and functions
        VerifyRunIsSetOnAllFilteredTestCodeunitsAndFunctions(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
    end;

    var
        Assert: Codeunit Assert;
        LibraryPerformSelect: Codeunit "Lib. - Perf. Select ALTT FLX";
        LibraryTestFunctions: Codeunit "Lib. - Test Funct Lns ALTT FLX";
        LibraryVerifyActions: Codeunit "Lib. - Verify Actns. ALTT FLX";
        TestSuiteName: Code[10];

    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
        LibraryUtility: Codeunit "Library - Utility";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"Enabl. Actns Non Flrs ALTT FLX");

        TestSuiteName := LibraryUtility.GenerateGUID();
        LibraryTestFunctions.CreateTestSuite(TestSuiteName);
        LibraryTestFunctions.SetCodeunitBaseID(-Codeunit::"Enabl. Actns. Flrs ALTT FLX");
    end;

    local procedure CreateOneDisabledTestCodeunitWithFiveDisabledSuccesfullTestFunctions(): Integer
    begin
        with LibraryTestFunctions do begin
            CreateTestCodeunit(TestSuiteName, GetNextCodeunitID(), IsDisabled());
            CreateTestFunctions(TestSuiteName, GetCurrentCodeunitID(), IsDisabled(), 5, 0);
            SetTestCodeunitResult(TestSuiteName, GetCurrentCodeunitID());
            exit(GetCurrentCodeunitID());
        end;
    end;

    local procedure CreateOneDisabledTestCodeunitWithThreeDisabledSuccesfullTestFunctions(): Integer
    begin
        with LibraryTestFunctions do begin
            CreateTestCodeunit(TestSuiteName, GetNextCodeunitID(), IsDisabled());
            CreateTestFunctions(TestSuiteName, GetCurrentCodeunitID(), IsDisabled(), 3, 0);
            SetTestCodeunitResult(TestSuiteName, GetCurrentCodeunitID());
            exit(GetCurrentCodeunitID());
        end;
    end;

    local procedure CreateOneEnabledTestCodeunitWithFiveEnabledSuccesfullTestFunctions(): Integer
    begin
        with LibraryTestFunctions do begin
            CreateTestCodeunit(TestSuiteName, GetNextCodeunitID(), IsEnabled());
            CreateTestFunctions(TestSuiteName, GetCurrentCodeunitID(), IsEnabled(), 5, 0);
            SetTestCodeunitResult(TestSuiteName, GetCurrentCodeunitID());
            exit(GetCurrentCodeunitID());
        end;
    end;

    local procedure CreateOneEnabledTestCodeunitWithThreeEnabledSuccesfullTestFunctions(): Integer
    begin
        with LibraryTestFunctions do begin
            CreateTestCodeunit(TestSuiteName, GetNextCodeunitID(), IsEnabled());
            CreateTestFunctions(TestSuiteName, GetCurrentCodeunitID(), IsEnabled(), 3, 0);
            SetTestCodeunitResult(TestSuiteName, GetCurrentCodeunitID());
            exit(GetCurrentCodeunitID());
        end;
    end;

    local procedure DoNothing()
    begin
    end;

    local procedure PerformDeselectOnAll(CodeunitID: Integer)
    begin
        LibraryPerformSelect.PerformDeselectOnAll(TestSuiteName, CodeunitID)
    end;

    local procedure PerformSelectOnAll(CodeunitID: Integer)
    begin
        LibraryPerformSelect.PerformSelectOnAll(TestSuiteName, CodeunitID)
    end;

    local procedure PerformSelectOnNonFailures(CodeunitID: Integer)
    begin
        LibraryPerformSelect.PerformSelectOnNonFailures(TestSuiteName, CodeunitID)
    end;

    local procedure NoFilterOnCodeunit(): Integer
    begin
        exit(0)
    end;

    local procedure SetFilterOn(CodeunitID: Integer): Integer
    begin
        exit(CodeunitID)
    end;

    local procedure IsEnabled(): Boolean
    begin
        exit(true)
    end;

    local procedure IsDisabled(): Boolean
    begin
        exit(false)
    end;

    local procedure VerifyDeselectOnAllIsDisabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifyDeselectOnAllIsDisabled(TestSuiteName, CodeunitID);
    end;

    local procedure VerifyDeselectOnAllIsEnabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifyDeselectOnAllIsEnabled(TestSuiteName, CodeunitID);
    end;

    local procedure VerifyRunIsNotSetOnAllFilteredTestCodeunitsAndFunctions(CodeunitID: Integer)
    begin
        VerifyRunIsNotSetOnAllTestCodeunitsAndFunctions(CodeunitID) // for the time being
    end;

    local procedure VerifyRunIsNotSetOnAllTestCodeunitsAndFunctions(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifyRunOnAll(TestSuiteName, CodeunitID, IsDisabled())
    end;

    local procedure VerifyRunIsSetOnAllFilteredTestCodeunitsAndFunctions(CodeunitID: Integer)
    begin
        VerifyRunIsSetOnAllTestCodeunitsAndFunctions(CodeunitID) // for the time being
    end;

    local procedure VerifyRunIsSetOnAllTestCodeunitsAndFunctions(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifyRunOnAll(TestSuiteName, CodeunitID, IsEnabled())
    end;

    local procedure VerifySelectOnAllIsDisabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifySelectOnAllIsDisabled(TestSuiteName, CodeunitID);
    end;

    local procedure VerifySelectOnAllIsEnabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifySelectOnAllIsEnabled(TestSuiteName, CodeunitID);
    end;

    local procedure VerifySelectOnFailuresIsDisabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifySelectOnFailuresIsDisabled(TestSuiteName, CodeunitID);
    end;

    local procedure VerifySelectOnNonFailuresIsDisabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifySelectOnNonFailuresIsDisabled(TestSuiteName, CodeunitID);
    end;

    local procedure VerifySelectOnNonFailuresIsEnabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifySelectOnNonFailuresIsEnabled(TestSuiteName, CodeunitID);
    end;
}