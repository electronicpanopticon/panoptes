// Copyright (c) 2019, Christopher R. Baker. All rights reserved. 
// Use of this source code is governed by the license that can be 
// found in the LICENSE file.

import 'package:meta/meta.dart';

@immutable
class SubstantialString {
  final String value;

  SubstantialString(this.value) {
    if (this.value == null) {
      throw new FormatException("SubstantialString cannot be null");
    }
    if (this.value.trim().isEmpty) {
      throw new FormatException("SubstantialString cannot be empty");
    }
  }

  @override
  String toString() {
    return this.value;
  }
}
