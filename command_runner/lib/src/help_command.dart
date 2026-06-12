import 'dart:async';
import 'package:command_runner/command_runner.dart';

class HelpCommand extends Command {
  @override
  String get name => 'help';

  @override
  String get description => 'Display help information.';

  @override
  FutureOr<String> run(ArgResults args) {
    var runner = args.command?.runner;
    if (runner == null) {
      throw ArgumentException('Missing runner instance.', name);
    }

    if (args.commandArg != null) {
      var cmdName = args.commandArg!;
      var cmd = runner.commands.firstWhere(
        (c) => c.name == cmdName,
        orElse: () => throw ArgumentException('Unknown command: $cmdName', name),
      );
      return _renderCommandVerbose(cmd);
    }

    final StringBuffer buffer = StringBuffer();
    buffer.writeln('Global options:');
    buffer.writeln('  -h, --help    Print this usage information.');
    buffer.writeln('');
    buffer.writeln('Available commands:');

    for (var cmd in runner.commands) {
      buffer.write(_renderCommandVerbose(cmd));
    }

    return buffer.toString().trim();
  }

  String _renderCommandVerbose(Command cmd) {
    final StringBuffer buffer = StringBuffer();
    buffer.writeln('  ${cmd.name.padRight(14)}${cmd.description}');
    return buffer.toString();
  }
}
