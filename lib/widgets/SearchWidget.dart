import 'package:fitness_dashboard_ui/Utiles/Responsive.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!Responsive.isDesktop(context))
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        Expanded(
            child: TextField(
          decoration: InputDecoration(
              fillColor: Color(0xFF21222D),
              filled: true,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:
                      BorderSide(color: Theme.of(context).primaryColor)),
              contentPadding: EdgeInsets.symmetric(vertical: 5),
              hintText: 'Search',
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 21,
              )),
        )),
        if (Responsive.isMobile(context))
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 25,
                  )),
              InkWell(
                onTap: () => Scaffold.of(context).openEndDrawer(),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset('assets/images/avatar.png'),
                ),
              )
            ],
          ),
      ],
    );
  }
}
