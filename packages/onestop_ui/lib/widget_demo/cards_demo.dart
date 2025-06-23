import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:onestop_ui/index.dart';

class CardsDemo extends StatelessWidget {
  const CardsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          OHomeCardLarge(
            dataMap: {
              // this is the map of data which has to be mapped into the blocks of main home card
              'breakfast': ['Eggs', 'Toast', 'Coffee', 'Cereal'],
              'lunch': ['Sandwich', 'Salad', 'Soup', 'Pizza'],
              'dinner': ['Pasta', 'Chicken', 'Rice', 'Vegetables'],
              'snacks': ['Chips', 'Cookies', 'Fruits', 'Nuts'],
              'beverages': ['Water', 'Juice', 'Soda', 'Tea'],
            },
            blockHeight:
                140, // adjust the height  of the block containing item list
            blockWidth:
                150, // adjust the width of the block containing item list
            heading: "Card Header",
            icon: TablerIcons.arrow_rotary_first_left,
            mainText: "Main Card Information",
            cardSubText: "Card Sub Text",
            subheading: "Sub Heading",
            onArrowPressed:
                () {}, // triggers the right chevron button at the top right corner of the card,
          ),
          OProductRequestCard(
            itemName: "Item Name",
            price: 'Price',
            priceLabel: 'Price Label',
            imageURl: // Image of item posted in the ad
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            isEditingEnabled:
                false, // this toggle b/w the modes where user can edit or not there posted ads
            delete: () {}, // triggers the delete button when editing mode is on
            edit: () {}, // triggers the edit button when editing mode is on
            message:
                () {}, // triggers the message button when editing mode is off
            phone: () {}, // triggers the phone button when editing mode is off
            userImageURl: // Image of user who posted the ad
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            userName: "John Doe",
            onArrowPressed: () {},
          ),
          OProductRequestCard(
            itemName: "Item Name",
            price: 'Price',
            priceLabel: 'Price Label',
            imageURl: // Image of item posted in the ad
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            isEditingEnabled:
                true, // this toggle b/w the modes where user can edit or not there posted ads
            delete: () {}, // triggers the delete button when editing mode is on
            edit: () {}, // triggers the edit button when editing mode is on
            message:
                () {}, // triggers the message button when editing mode is off
            phone: () {}, // triggers the phone button when editing mode is off
            userImageURl: // Image of user who posted the ad
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            userName: "John Doe",
            onArrowPressed: () {},
          ),
          OProductRequestCard(
            itemName: "Item Name",
            price: 'Price',
            priceLabel: 'Price Label',
            isEditingEnabled:
                true, // this toggle b/w the modes where user can edit or not there posted ads
            delete: () {}, // triggers the delete button when editing mode is on
            edit: () {}, // triggers the edit button when editing mode is on
            message:
                () {}, // triggers the message button when editing mode is off
            phone: () {}, // triggers the phone button when editing mode is off
            userImageURl: // Image of user who posted the ad
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            userName: "John Doe",
            onArrowPressed: () {},
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OProductListingCard(
                price: "40",
                tag: "BRAND NEW",
                productName: "Product Name",
                delete:
                    () {}, // triggers the delete button when editing mode is on
                edit: () {}, // triggers the edit button when editing mode is on
                isEditingEnabled:
                    true, // this toggle b/w the modes where user can edit or not there posted ads
                imageUrl: // image of item listed for sell
                    "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
              ),
              OProductListingCard(
                price: "40",
                tag: "BRAND NEW",
                productName: "Product Name",
                edit: () {},
                delete: () {},
                isEditingEnabled: true,
                imageUrl: // image of item listed for sell
                    "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OProductListingCard(
                price: "40",
                tag: "BRAND NEW",
                productName: "Product Name",
                edit: () {},
                delete: () {},
                isEditingEnabled: false,
                imageUrl: // image of item listed for sell
                    "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
              ),
              OProductListingCard(
                price: "40",
                tag: "BRAND NEW",
                productName: "Product Name",
                edit: () {},
                delete: () {},
                isEditingEnabled: false,
                imageUrl: // image of item listed for sell
                    "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
              ),
            ],
          ),
          OLostFoundCard(
            isFound: true, // this toggle b/w card mode for lost or found item
            isEditingEnabled:
                false, // this toggle b/w the modes where user can edit or not there posted ads
            heading: "Card header", // Lost Item Name
            userName: "john Doe",
            submittedAt:
                'Security Desk', // this string is for location where found item was submitted
            userImageURl: // image of user who put the ad
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            location: "Location", // location where item was lost or found
            time: "Time", // time of item lost or found
            imageURl: // image of item lost or found
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            onArrowPressed:
                () {}, // triggers the chevron button at top right corner
            delete: () {}, // triggers the delete button when editing mode is on
            edit: () {}, // triggers the edit button when editing mode is on
            message:
                () {}, // triggers the message button when editing mode is off
            phone: () {}, // triggers the phone button when editing mode is off
          ),
          OLostFoundCard(
            isFound: false,
            isEditingEnabled: false,
            heading: "Card header",
            userName: "john Doe",
            submittedAt: 'Security Desk',
            userImageURl:
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            location: "Location",
            time: "Time",
            imageURl:
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            onArrowPressed: () {},
            delete: () {},
            edit: () {},
            message: () {},
            phone: () {},
          ),
          OLostFoundCard(
            isFound: true,
            isEditingEnabled: true,
            heading: "Card header",
            userName: "john Doe",
            submittedAt: 'Security Desk',
            userImageURl:
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            location: "Location",
            time: "Time",
            imageURl:
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            onArrowPressed: () {},
            delete: () {},
            edit: () {},
            message: () {},
            phone: () {},
          ),
          OEventCard(
            isEnabled:
                true, // toggle between enabled and disabled states of card
            onArrowPressed:
                () {}, // triggers the chevron button at top right corner
            buttonIcon:
                TablerIcons
                    .arrow_rotary_first_left, // Icon for the main button at bottom
            buttonLabel: "Label", // Label for the main button at bottom
            pressedButton: () {}, // Function for the main button at bottom
            label: "LABEL", // name for the label/status of card
            labelIcon:
                TablerIcons
                    .arrow_rotary_first_left, //icon for the label/status of card
            heading: 'Card Header',
            subLabel1: "Sub Label Text",
            subLabel2: "Sub Label Text",
            subLabelIcon1: TablerIcons.arrow_rotary_first_left,
            subLabelIcon2: TablerIcons.arrow_rotary_first_left,
          ),
          OEventCard(
            isEnabled: false,
            onArrowPressed: () {},
            buttonIcon: TablerIcons.arrow_rotary_first_left,
            buttonLabel: "Label",
            pressedButton: () {},
            label: "LABEL",
            labelIcon: TablerIcons.arrow_rotary_first_left,
            heading: 'Card Header',
            subLabel1: "Sub Label Text",
            subLabel2: "Sub Label Text",
            subLabelIcon1: TablerIcons.arrow_rotary_first_left,
            subLabelIcon2: TablerIcons.arrow_rotary_first_left,
          ),
          OCabSharingCard(
            isUserAvailable:
                true, // this toggle b/w card mode with and without user Avatar
            isEnabled: true, //toggles the enabled state of card
            byTrain:
                false, // toggles b/w flight and train:- false means flight and true means train
            origin: "IITG",
            destination: "Home",
            status: "Status", // status for card
            statusIcon: TablerIcons.armchair,
            date: "Date",
            time: "Time",
            subHeading: "Sub heading Text", // Body for card
            imageURl: // url for user image via NetworkImage widget
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            userName: "John Doe",
            onArrowPressed:
                () {}, // triggers the chevron button on top right corner
            buttonIcon1: TablerIcons.user_plus,
            buttonIcon2: TablerIcons.user_plus,
            pressedButton1: () {},
            pressedButton2: () {},
            buttonLabel1: "Join 1",
            buttonLabel2: "Join 2",
          ),
          OCabSharingCard(
            isUserAvailable: false,
            isEnabled: true,
            byTrain: true,
            origin: "IITG",
            destination: "Home",
            status: "Status",
            statusIcon: TablerIcons.armchair,
            date: "Date",
            time: "Time",
            subHeading: "Sub heading Text",
            imageURl:
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            userName: "John Doe",
            onArrowPressed: () {},
            buttonIcon1: TablerIcons.user_plus,
            buttonIcon2: TablerIcons.user_plus,
            pressedButton1: () {},
            pressedButton2: () {},
            buttonLabel1: "Join 1",
            buttonLabel2: "Join 2",
          ),
          OCabSharingCard(
            isUserAvailable: true,
            isEnabled: false,
            byTrain: true,
            origin: "IITG",
            destination: "Home",
            status: "Status",
            statusIcon: TablerIcons.armchair,
            date: "Date",
            time: "Time",
            subHeading: "Sub heading Text",
            imageURl:
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            userName: "John Doe",
            onArrowPressed: () {},
            buttonIcon1: TablerIcons.user_plus,
            buttonIcon2: TablerIcons.user_plus,
            pressedButton1: () {},
            pressedButton2: () {},
            buttonLabel1: "Join 1",
            buttonLabel2: "Join 2",
          ),
          OCabSharingCard(
            isUserAvailable: false,
            isEnabled: false,
            byTrain: true,
            origin: "IITG",
            destination: "Home",
            status: "Status",
            statusIcon: TablerIcons.armchair,
            date: "Date",
            time: "Time",
            subHeading: "Sub heading Text",
            imageURl:
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            userName: "John Doe",
            onArrowPressed: () {},
            buttonIcon1: TablerIcons.user_plus,
            buttonIcon2: TablerIcons.user_plus,
            pressedButton1: () {},
            pressedButton2: () {},
            buttonLabel1: "Join 1",
            buttonLabel2: "Join 2",
          ),
          FoodOutletCard(
            heading: "Card Header",
            imageUrl: // Image of food outlet via NetworkImage widget
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            onArrowPressed:
                () {}, // triggers the chevron button on top right corner
            isEnabled: true,
            subHeading: "Sub Heading",
            tag: "TAG", // tag for food outlet
            subLabelText1: "Sub Label Text 1",
            subLabelText2: "Sub Label Text 2",
            subLabelIcon1: TablerIcons.arrow_rotary_first_left,
            subLabelIcon2: TablerIcons.arrow_rotary_first_left,
          ),
          FoodOutletCard(
            heading: "Card Header",
            imageUrl:
                "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
            onArrowPressed: () {},
            isEnabled: false,
            subHeading: "Sub Heading",
            tag: "TAG",
            subLabelText1: "Sub Label Text 1",
            subLabelText2: "Sub Label Text 2",
            subLabelIcon1: TablerIcons.arrow_rotary_first_left,
            subLabelIcon2: TablerIcons.arrow_rotary_first_left,
          ),
          Padding(
            padding: const EdgeInsets.all(OSpacing.xs),
            child: OMessMenuCard(
              heading: 'Card Header',
              subLabelText: ['Sub Label Text'], // this will be corrected soon
              blockHeading1: 'Block Header 1',
              blockHeading2: 'Block Header 2',
              blockHeading3: 'Block Header 3',
              blockItems1: [
                'Block Item 1',
                'Block Item 2',
                'Block Item 3',
                'Block Item 4',
              ],
              blockItems2: [
                'Block Item 5',
                'Block Item 6',
                'Block Item 7',
                'Block Item 8',
              ],
              blockItems3: [
                'Block Item 9',
                'Block Item 10',
                'Block Item 11',
                'Block Item 12',
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(OSpacing.xxs),
                  child: OHomeCard(
                    activateButton1: true,
                    activateButton2: true,
                    buttonAction1: () {},
                    buttonAction2: () {},
                    onArrowPressed: () {},
                    icon: TablerIcons.arrow_rotary_first_left,
                    header: "Card Header",
                    labelItems: ["Label 1", "label 2"],
                    listItems: ['list 1', 'list 2', 'list 3', 'list 4'],
                    subListItems: [
                      'sub-list 1',
                      'sub-list 2',
                      'sub-list 3',
                      'sub-list 4',
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(OSpacing.xxs),
                  child: OHomeCard(
                    activateButton2: true,
                    activateButton1: true,
                    onArrowPressed: () {},
                    buttonAction1: () {},
                    buttonAction2: () {},
                    icon: TablerIcons.arrow_rotary_first_left,
                    header: "Card Header",
                    labelItems: ["Label 1", "label 2"],
                    listItems: ['list 1', 'list 2', 'list 3', 'list 4'],
                    subListItems: [
                      'sub-list 1',
                      'sub-list 2',
                      'sub-list 3',
                      'sub-list 4',
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
