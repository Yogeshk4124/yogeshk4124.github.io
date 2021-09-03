import 'package:flutter/cupertino.dart';
import 'package:portfolio/Pages/PageOutlook.dart';
import 'package:portfolio/Pages/ProjectsPage.dart';
import 'package:portfolio/Pages/AnimatedSkillDisplay.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../Components/InfoSection/InfoPanel.dart';

final GlobalKey<SfPdfViewerState> pdfViewerKey = GlobalKey();

GlobalKey<PageOutlookState> POKey = GlobalKey<PageOutlookState>();
GlobalKey<InfoPanelState> infoPanelKey = GlobalKey<InfoPanelState>();
GlobalKey<ProjectsState> projectKey = GlobalKey<ProjectsState>();
GlobalKey<AnimatedSkillDisplayState> skillKey =
    GlobalKey<AnimatedSkillDisplayState>();
