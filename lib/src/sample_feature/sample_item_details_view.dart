import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({Key? key}) : super(key: key);

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Spacer(),
              Expanded(
                child: TextFormField(
                  initialValue: "%X%",
                  decoration: const InputDecoration(
                    labelText: "Variable",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                child: TextFormField(
                  initialValue: "1",
                  decoration: const InputDecoration(
                    labelText: "Startwert",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                child: TextFormField(
                  initialValue: "30",
                  decoration: const InputDecoration(
                    labelText: "Endwert",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                child: TextFormField(
                  initialValue: "1",
                  decoration: const InputDecoration(
                    labelText: "Inkrement",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Spacer(),
              Expanded(child: CheckboxListTile(value: true, onChanged: (_) {},  title: const Text("Auto copy"),)),
              Spacer(),
              // ElevatedButton(onPressed: () {}, child: const Text("Berechnen")),
              // const Spacer(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          Row(
            children: [
              const Spacer(),
              Flexible(
                flex: 1,
                  child: TextFormField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  labelText: "Roheingabe",
                ),
              )),
              IconButton(onPressed: () {}, icon: const Icon(Icons.check)),
          const Spacer(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Spacer(),
              Flexible(
                flex: 1,
                child: TextFormField(
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    readOnly: true,
                    decoration: const InputDecoration(
                      labelText: "Ergebnis",
                    )),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.copy)),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
