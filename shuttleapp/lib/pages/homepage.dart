import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shuttleapp/model/app.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: true,
            title: const Text("EasyGo"),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.transparent,
                child: Center(child: Consumer<App>(
                  builder: (context, value, child) {
                    return TextField(
                      controller: inputController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Search for app...',
                          prefixIcon: const Icon(Icons.search)),
                      onChanged: (val) {
                        inputController.text = val.toString();
                        var app = context.read<App>();
                        app.setKeyword = inputController.text.toString();
                      },
                    );
                  },
                )),
              ),
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 400,
                child: Center(
                  child: Text(
                    'Sample text 1',
                  ),
                ),
              ),
              Container(
                height: 1000,
                color: Colors.pink,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
