variables {
    app_name = "test-app"
    description = "This is a test app"
}

run "valid_app_name" {
    command = plan
}

run "invalid_app_name" {
    command = plan
    variables {
        app_name = "invalid_app_name"
    }
    expect_failures = [
        var.app_name
    ]
}