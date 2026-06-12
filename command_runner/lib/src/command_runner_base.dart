import 'dart:collection';
import 'dart:io';
import 'arguments.dart';

class CommandRunner {
  final Map<String, Command> _commands = <String, Command>{};

  UnmodifiableSetView<Command> get commands =>
      UnmodifiableSetView<Command>(<Command>{..._commands.values});

  Future<void> run(List<String> input) async {
    final ArgResults results = parse(input);
    if (results.command != null) {
      Object? output = await results.command!.run(results);
      print(output.toString());
    }
  }

  void addCommand(Command command) {
<<<<<<< HEAD
    _commands[command.name] = command;
    command.runner = this; // Inicializa a propriedade 'late' do comando
=======
    // TODO: handle error (Commands can't have names that conflict)
    _commands[command.name] = command;
    command.runner = this;
>>>>>>> 1ad52fe (Licao 5: Tarefa 4: Atualize o arquivo cli.dart para usar o novo CommandRunner.)
  }

  ArgResults parse(List<String> input) {
    var results = ArgResults();
<<<<<<< HEAD
    if (input.isNotEmpty && _commands.containsKey(input.first)) {
      results.command = _commands[input.first];
    }
    return results;
  }

=======
    results.command = _commands[input.first];
    return results;
  }

  // Returns usage for the executable only.
  // Should be overridden if you aren't using [HelpCommand]
  // or another means of printing usage.

>>>>>>> 1ad52fe (Licao 5: Tarefa 4: Atualize o arquivo cli.dart para usar o novo CommandRunner.)
  String get usage {
    final exeFile = Platform.script.path.split('/').last;
    return 'Usage: dart bin/$exeFile <command> [commandArg?] [...options?]';
  }
}

