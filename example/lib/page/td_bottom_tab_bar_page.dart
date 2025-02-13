import 'package:flutter/material.dart';
import 'package:tdesign_flutter/td_export.dart';

import '../../annotation/demo.dart';
import '../../base/example_widget.dart';

class TDBottomTabBarPage extends StatelessWidget {
  const TDBottomTabBarPage({Key? key}) : super(key: key);

  void onTapTab(BuildContext context, String tabName) {
    TDToast.showText('点击了 $tabName', context: context);
  }

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
        title: tdTitle(context),
        desc: '用于在不同功能模块之间进行快速切换，位于页面底部。',
        backgroundColor: const Color(0xFFF0F2F5),
        exampleCodeGroup: 'bottomTabBar',
        children: [
          ExampleModule(
            title: '组件类型',
            children: [
              ExampleItem(
                ignoreCode: true,
                  desc: '纯文本标签栏', builder: (context){
                    return Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CodeWrapper(builder: _textTypeTabBar),);
              }),
              ExampleItem(
                ignoreCode: true,builder: (context){
                    return Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CodeWrapper(builder: _textTypeTabBar3tabs),);
              }),
              ExampleItem(
                ignoreCode: true, builder: (context){
                    return Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CodeWrapper(builder: _textTypeTabBar4tabs),);
              }),
              ExampleItem(
                ignoreCode: true, builder: (context){
                    return Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CodeWrapper(builder: _textTypeTabBar5tabs),);
              }),
              ExampleItem(
                ignoreCode: true,
                  desc: '图标加文本标签栏', builder: (context){
                    return Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CodeWrapper(builder: _iconTextTypeTabBar),);
              }),
              ExampleItem(
                ignoreCode: true, builder: (context){
                    return Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CodeWrapper(builder: _iconTextTypeTabBar3tabs),);
              }),
              ExampleItem(
                ignoreCode: true, builder: (context){
                    return Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CodeWrapper(builder: _iconTextTypeTabBar4tabs),);
              }),
              ExampleItem(
                ignoreCode: true, builder: (context){
                    return Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CodeWrapper(builder: _iconTextTypeTabBar5tabs),);
              }),
              ExampleItem(
                ignoreCode: true,
                  desc: '纯图标标签栏',builder: (context){
                    return Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CodeWrapper(builder: _iconTypeTabBar),);
              }),
              ExampleItem(
                ignoreCode: true,builder: (context){
                    return Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CodeWrapper(builder: _iconTypeTabBar3tabs),);
              }),
              ExampleItem(
                ignoreCode: true,builder: (context){
                    return Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CodeWrapper(builder: _iconTypeTabBar4tabs),);
              }),
              ExampleItem(
                ignoreCode: true,builder: (context){
                    return Container(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CodeWrapper(builder: _iconTypeTabBar5tabs),);
              }),
              ExampleItem(
                desc: '双层级文本标签栏',
                builder: _expansionPannelTypeTabBar,
              ),
            ],
          ),
          ExampleModule(title: '组件样式', children: [

            ExampleItem(
                ignoreCode: true,
                desc: '弱选中标签栏',builder: (context){
              return Container(
                padding: const EdgeInsets.only(bottom: 16),
                child: CodeWrapper(builder: _weakSelectTextTabBar),);
            }),
            ExampleItem(
                ignoreCode: true,builder: (context){
              return Container(
                padding: const EdgeInsets.only(bottom: 16),
                child: CodeWrapper(builder: _weakSelectIconTabBar),);
            }),
            ExampleItem(
                ignoreCode: true,builder: (context){
              return Container(
                padding: const EdgeInsets.only(bottom: 16),
                child: CodeWrapper(builder: _weakSelectIconTextTabBar),);
            }),
            ExampleItem(
              desc: '悬浮胶囊标签栏',
              builder: _capsuleTabBar,
            ),
          ]),
        ],
    test: [
      ExampleItem(
          desc: '自定义上边线样式',
          builder: _buildCustomTopStyle)
    ],
    );
  }

  @Demo(group: 'bottomTabBar')
  Widget _textTypeTabBar(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.text,
        useVerticalDivider: false,
        navigationTabs: [
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
        ]);
  }

  @Demo(group: 'bottomTabBar')
  Widget _textTypeTabBar3tabs(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.text,
        useVerticalDivider: false,
        navigationTabs: [
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
        ]);
  }

  @Demo(group: 'bottomTabBar')
  Widget _textTypeTabBar4tabs(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.text,
        useVerticalDivider: false,
        navigationTabs: [
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
        ]);
  }

  @Demo(group: 'bottomTabBar')
  Widget _textTypeTabBar5tabs(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.text,
        useVerticalDivider: false,
        navigationTabs: [
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            tabText: '标签',
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
        ]);
  }

  @Demo(group: 'bottomTabBar')
  Widget _iconTextTypeTabBar(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.iconText,
        useVerticalDivider: false,
        navigationTabs: [
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
                IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
                IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签2');
            },
          ),
        ]);
  }

  @Demo(group: 'bottomTabBar')
  Widget _iconTextTypeTabBar3tabs(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.iconText,
        useVerticalDivider: false,
        navigationTabs: [
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
            IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
            IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签2');
            },
          ),
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
            IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签2');
            },
          ),
        ]);
  }

  @Demo(group: 'bottomTabBar')
  Widget _iconTextTypeTabBar4tabs(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.iconText,
        useVerticalDivider: false,
        navigationTabs: [
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
            IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
            IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签2');
            },
          ),
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
            IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签2');
            },
          ),
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
            IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签2');
            },
          ),
        ]);
  }

  @Demo(group: 'bottomTabBar')
  Widget _iconTextTypeTabBar5tabs(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.iconText,
        useVerticalDivider: false,
        navigationTabs: [
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
            IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签1');
            },
          ),
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
            IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签2');
            },
          ),
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
            IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签2');
            },
          ),
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
            IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签2');
            },
          ),
          TDBottomTabBarTabConfig(
            iconTextTypeConfig:
            IconTextTypeConfig(tabText: '标签', useDefaultIcon: true),
            onTap: () {
              onTapTab(context, '标签2');
            },
          ),
        ]);
  }

  @Demo(group: 'bottomTabBar')
  Widget _iconTypeTabBar(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.icon,
        useVerticalDivider: true,
        navigationTabs: [
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签1');
              }),
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签2');
              })
        ]);
  }

  @Demo(group: 'bottomTabBar')
  Widget _iconTypeTabBar3tabs(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.icon,
        useVerticalDivider: true,
        navigationTabs: [
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签1');
              }),
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签2');
              }),
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签2');
              }),
        ]);
  }

  @Demo(group: 'bottomTabBar')
  Widget _iconTypeTabBar4tabs(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.icon,
        useVerticalDivider: true,
        navigationTabs: [
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签1');
              }),
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签2');
              }),
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签2');
              }),
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签2');
              }),
        ]);
  }

  @Demo(group: 'bottomTabBar')
  Widget _iconTypeTabBar5tabs(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.icon,
        useVerticalDivider: true,
        navigationTabs: [
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签1');
              }),
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签2');
              }),
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签2');
              }),
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签2');
              }),
          TDBottomTabBarTabConfig(
              iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
              onTap: () {
                onTapTab(context, '标签2');
              }),
        ]);
  }

  @Demo(group: 'bottomTabBar')
  Widget _expansionPannelTypeTabBar(BuildContext context) {
    return TDBottomTabBar(
      TDBottomTabBarBasicType.expansionPanel,
      useVerticalDivider: true,
      navigationTabs: [
        TDBottomTabBarTabConfig(
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签1');
          },
        ),
        TDBottomTabBarTabConfig(
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签2');
          },
        ),
        TDBottomTabBarTabConfig(
            tabText: '展开项',
            onTap: () {
              onTapTab(context, '展开项');
            },
            popUpButtonConfig: TDBottomTabBarPopUpBtnConfig(
                popUpDialogConfig: TDBottomTabBarPopUpShapeConfig(
                  radius: 10,
                  arrowWidth: 16,
                  arrowHeight: 8,
                ),
                items: [
                  '展开项一',
                  '展开项二',
                  '展开项三',
                ]
                    .reversed
                    .map((e) => PopUpMenuItem(
                          value: e,
                          itemWidget: SizedBox(
                            //height: 30,
                            child: Text(
                              e,
                              style: TextStyle(
                                  color: TDTheme.of(context).fontGyColor1,
                                  fontSize: 16),
                            ),
                          ),
                        ))
                    .toList(),
                onChanged: (v) {
                  TDToast.showText('点击了 $v', context: context);
                })),
      ],
    );
  }

  @Demo(group: 'bottomTabBar')
  Widget _weakSelectTextTabBar(BuildContext context) {
    return TDBottomTabBar(
      TDBottomTabBarBasicType.text,
      componentType: TDBottomTabBarComponentType.normal,
      useVerticalDivider: true,
      navigationTabs: [
        TDBottomTabBarTabConfig(
          badgeConfig: BadgeConfig(
            showBage: true,
            tdBadge: const TDBadge(TDBadgeType.redPoint),
            badgeTopOffset: -2,
            badgeRightOffset: -10,
          ),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签1');
          },
        ),
        TDBottomTabBarTabConfig(
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签2');
          },
        ),
        TDBottomTabBarTabConfig(
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签3');
          },
        ),
      ],
    );
  }

  @Demo(group: 'bottomTabBar')
  Widget _weakSelectIconTabBar(BuildContext context) {
    return TDBottomTabBar(
      TDBottomTabBarBasicType.icon,
      componentType: TDBottomTabBarComponentType.normal,
      useVerticalDivider: false,
      navigationTabs: [
        TDBottomTabBarTabConfig(
          iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
          badgeConfig: BadgeConfig(
            showBage: true,
            tdBadge: const TDBadge(TDBadgeType.redPoint),
            badgeTopOffset: -2,
            badgeRightOffset: -10,
          ),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签1');
          },
        ),
        TDBottomTabBarTabConfig(
          iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签2');
          },
        ),
        TDBottomTabBarTabConfig(
          iconTypeConfig: IconTypeConfig(useDefaultIcon: true),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签3');
          },
        ),
      ],
    );
  }

  @Demo(group: 'bottomTabBar')
  Widget _weakSelectIconTextTabBar(BuildContext context) {
    return TDBottomTabBar(
      TDBottomTabBarBasicType.iconText,
      componentType: TDBottomTabBarComponentType.normal,
      useVerticalDivider: false,
      navigationTabs: [
        TDBottomTabBarTabConfig(
          iconTextTypeConfig:
              IconTextTypeConfig(useDefaultIcon: true, tabText: '标签'),
          badgeConfig: BadgeConfig(
            showBage: true,
            tdBadge: const TDBadge(TDBadgeType.redPoint),
            badgeTopOffset: -2,
            badgeRightOffset: -10,
          ),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签1');
          },
        ),
        TDBottomTabBarTabConfig(
          iconTextTypeConfig:
              IconTextTypeConfig(useDefaultIcon: true, tabText: '标签'),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签2');
          },
        ),
        TDBottomTabBarTabConfig(
          iconTextTypeConfig:
              IconTextTypeConfig(useDefaultIcon: true, tabText: '标签'),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签3');
          },
        ),
      ],
    );
  }

  @Demo(group: 'bottomTabBar')
  Widget _capsuleTabBar(BuildContext context) {
    return TDBottomTabBar(
      TDBottomTabBarBasicType.iconText,
      componentType: TDBottomTabBarComponentType.label,
      outlineType: TDBottomTabBarOutlineType.capsule,
      useVerticalDivider: true,
      navigationTabs: [
        TDBottomTabBarTabConfig(
          iconTextTypeConfig:
              IconTextTypeConfig(useDefaultIcon: true, tabText: '标签'),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签1');
          },
        ),
        TDBottomTabBarTabConfig(
          iconTextTypeConfig:
              IconTextTypeConfig(useDefaultIcon: true, tabText: '标签'),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签2');
          },
        ),
        TDBottomTabBarTabConfig(
          iconTextTypeConfig:
              IconTextTypeConfig(useDefaultIcon: true, tabText: '标签'),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签3');
          },
        ),
      ],
    );
  }

  @Demo(group: 'bottomTabBar')
  Widget _buildCustomTopStyle(BuildContext context) {
    return TDBottomTabBar(
      TDBottomTabBarBasicType.iconText,
      topBorder: const BorderSide(color: Colors.red, width: 5),
      componentType: TDBottomTabBarComponentType.normal,
      useVerticalDivider: false,
      navigationTabs: [
        TDBottomTabBarTabConfig(
          iconTextTypeConfig:
          IconTextTypeConfig(useDefaultIcon: true, tabText: '标签'),
          badgeConfig: BadgeConfig(
            showBage: true,
            tdBadge: const TDBadge(TDBadgeType.redPoint),
            badgeTopOffset: -2,
            badgeRightOffset: -10,
          ),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签1');
          },
        ),
        TDBottomTabBarTabConfig(
          iconTextTypeConfig:
          IconTextTypeConfig(useDefaultIcon: true, tabText: '标签'),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签2');
          },
        ),
        TDBottomTabBarTabConfig(
          iconTextTypeConfig:
          IconTextTypeConfig(useDefaultIcon: true, tabText: '标签'),
          tabText: '标签',
          onTap: () {
            onTapTab(context, '标签3');
          },
        ),
      ],
    );
  }
}
