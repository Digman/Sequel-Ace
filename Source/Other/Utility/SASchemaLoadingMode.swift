//
//  SASchemaLoadingMode.swift
//  Sequel Ace
//
//  Copyright © 2024-2026 Sequel-Ace. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

import Foundation

/// Per-favorite preference controlling how aggressively Sequel Ace introspects a
/// database's schema after connecting. Bridged to Objective-C as `NS_ENUM(NSInteger, SASchemaLoadingMode)`.
@objc public enum SASchemaLoadingMode: Int {
    /// Fetch table names and run column fan-out for autocomplete/navigator metadata.
    case auto = 0
    /// Fetch table names but skip column fan-out.
    case light = 1
    /// Do not fetch table names on connect; explicit refresh actions still work.
    case manual = 2
}
