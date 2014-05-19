// vim:et:sts=8:ts=8:filetype=c

object $suite: $base_suite;

public method .name {
    return "Strings";
};

// begin tests

public method .test_substr {
    .assertEquals(substr("12345", 1, 3), "123");
};

public method .substr_should_throw_range_when_too_long {
    catch ~range {
        substr("12345", 1, 7);
    } with {
        return;
    }

    .fail();
};

public method .should_ignore_case_when_comparing_strings {
    var a, b;
    a = "test string";
    b = "tEsT StRiNg";
    .fail_unless(a == b, "String comparisons should ignore case");
};

public method .should_parse_alternate_style_strings {
    .assertEquals("test string", 'test string');
};

public method .should_calculate_correct_booleans {
    .assertTrue("hello");
    .assertFalse("");
};

public method .should_decode_to_proper_literals {
    .assertEquals(toliteral("test string"), '"test string"');
};

public method .test_strings_from_literal {
    .assertEquals(fromliteral("''"), "");
    .assertEquals(fromliteral('"test"'), "test");
    .assertEquals(fromliteral('\'test\''), "test");
};

public method .test_string_concatenation {
    var a, b;
    a = "hello ";
    b = "world!";

    .fail_unless("hello " + "world!" == "hello world!", "Incorrect string concatenation.");
};

public method .equalStringsShouldMatch {
    .fail_unless(glob("doggy", "doggy") == 1, "Equal strings did not match with glob()");
};

public method .testSimplePatternMatching {
    var string, pattern;

    pattern = "do??y";
    string = "dolly";

    .fail_unless(glob(pattern, string) == 1, "Pattern " + pattern + " did not match against string " + string + ".");
};

public method .test_equal_string_glob {
    var glob_return, stringv;

    glob_return = glob("lol", "lol");
    stringv = tostr(glob_return);
    .assertTrue(glob_return, "String globbing does not match equal strings.");

};

public method .test_string_length {
    .fail_unless(strlen("Hello world!") == 12, "String length not correctly calculated!");
};

public method .test_string_in_string {
    var actual, expected;

    actual = "sub" in "eat subway!";
    expected = 5;
    .fail_unless(actual == expected, "\"sub\" in \"subway\" returns %d instead of %d", actual, expected);
};

public method .test_positive_string_index {
    .fail_unless("abcde"[4] == "d", "String not indexed correctly.");
    catch ~range {
        "abcde"[6];
    } with {
        return;
    }
    .fail("Illegal string-index did not throw ~range");
};


public method .test_negative_string_index {
    .fail_unless("abcde"[-3] == "c", "String not indexed correctly.");
    catch ~range {
        "abcde"[-6];
    } with {
        return;
    }
    .fail("Illegal string-index did not throw ~range");
};

public method .test_empty_string_zero_index {
    catch ~range {
        ""[0];
    } with {
        return;
    }
    .fail("Empty string-index did not throw ~range");
};

public method .test_empty_string_positive_index {
    catch ~range {
        ""[1];
    } with {
        return;
    }
    .fail("Empty string-index did not throw ~range");
};

public method .test_empty_string_negative_index {
    catch ~range {
        ""[-1];
    } with {
        return;
    }
    .fail("Empty string-index did not throw ~range");
};
