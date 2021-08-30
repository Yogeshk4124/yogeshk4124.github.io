import 'package:flutter/cupertino.dart';
import 'package:portfolio/Pages/ProjectsPage.dart';
import 'package:portfolio/Pages/AnimatedSkillDisplay.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../Components/InfoSection/InfoPanel.dart';
import '../Components/InfoSection/InfoTabItem.dart';
import '../Pages/MyHomePage.dart';

final GlobalKey<SfPdfViewerState> pdfViewerKey = GlobalKey();

GlobalKey<MyHomePageState> homeKey = GlobalKey<MyHomePageState>();
GlobalKey<InfoPanelState> infoPanelKey = GlobalKey<InfoPanelState>();
GlobalKey<ProjectsState> projectKey = GlobalKey<ProjectsState>();
GlobalKey<InfoTabItemState> k1 = GlobalKey<InfoTabItemState>();
GlobalKey<InfoTabItemState> k2 = GlobalKey<InfoTabItemState>();
GlobalKey<InfoTabItemState> k3 = GlobalKey<InfoTabItemState>();
GlobalKey<AnimatedSkillDisplayState> skillKey =
    GlobalKey<AnimatedSkillDisplayState>();
