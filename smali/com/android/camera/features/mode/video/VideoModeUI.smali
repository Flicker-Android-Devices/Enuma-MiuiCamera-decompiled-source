.class public Lcom/android/camera/features/mode/video/VideoModeUI;
.super Lcom/android/camera/fragment/modeui/BaseModeUI;
.source "VideoModeUI.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/features/mode/video/VideoModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/video/VideoModeUI;->showOrHideVideoBeautyPanel(Landroid/view/View;)V

    return-void
.end method

.method private showOrHideVideoBeautyPanel(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    const/4 v0, 0x0

    const/16 v1, 0xa0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->show()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    new-array v3, v0, [I

    .line 5
    invoke-interface {p1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0xe0

    aput v3, v2, v0

    .line 7
    invoke-interface {p1, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getExtraTopConfigItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/features/mode/video/VideoModeUI;->getModuleId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result v4

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v5

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v6

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isTwoComponent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getVideoSubQualityExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getVideoSubFpsExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getVideoQualityExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v1, :cond_2

    goto/16 :goto_1

    .line 14
    :cond_2
    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedVideoMiMovie(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v4, :cond_3

    .line 15
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getCinematicAspectRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    .line 17
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfig()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_4
    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedVideoMiMovie(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v4, :cond_5

    .line 21
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getCinematicAspectRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_5
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v7

    .line 23
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfig()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v7

    .line 24
    invoke-virtual {v7}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v7

    .line 25
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/features/mode/video/VideoModeUI;->getModuleId()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 27
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getMacroModeExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v6, :cond_7

    .line 28
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO00o()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v4, :cond_7

    .line 29
    invoke-static {}, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getAutoZoomExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v6, :cond_8

    .line 30
    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportAiEnhancedVideo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v4, :cond_8

    .line 31
    invoke-static {}, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getAiEnhancedVideoExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_8
    :goto_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO000()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v6, :cond_9

    if-nez v4, :cond_9

    .line 33
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSubtitleExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0ooo()Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v4, :cond_b

    if-nez v5, :cond_a

    .line 35
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getAiAudioNewExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-ne v5, v1, :cond_b

    .line 36
    invoke-static {}, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getAiAudioSingleExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v0
.end method

.method public getFragmentInfo()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getFragmentInfo()Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->addFragmentInfo(I[I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0xfffe

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->addFragmentInfo(I[I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseArray;

    return-object v0

    nop

    :array_0
    .array-data 4
        0xff1
        0xffc
    .end array-data
.end method

.method public getModuleId()I
    .locals 1

    const/16 v0, 0xa2

    return v0
.end method

.method public getPanelEntranceItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTopBeautyEntry()Z

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0xa2

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTargetShow()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 5
    invoke-static {v5, v2}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v6

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v7, 0xc2

    .line 7
    invoke-virtual {v3, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v7

    const/16 v8, 0x3a6

    .line 9
    invoke-virtual {v7, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v7

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    .line 10
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v6

    :cond_1
    if-eqz v3, :cond_2

    .line 11
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz v7, :cond_4

    .line 12
    invoke-interface {v7}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v2, v6

    :cond_4
    if-eqz v2, :cond_5

    .line 13
    new-instance v2, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    invoke-direct {v2, v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 14
    invoke-virtual {v2, v4}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    const v2, 0x7f080478

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 16
    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const v2, 0x7f120026

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 18
    invoke-virtual {v1, v6}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setSupportRotation(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO0oO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO0oO;-><init>(Lcom/android/camera/features/mode/video/VideoModeUI;)V

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 20
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public getTopConfigItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/features/mode/video/VideoModeUI;->getModuleId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getTopConfigItems()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result v4

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v5

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v6

    const/16 v7, 0x11

    if-nez v6, :cond_d

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oo()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v4, :cond_1

    .line 9
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getAiAudioItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v5, :cond_2

    .line 10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooO()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getHDRItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v5, :cond_4

    .line 13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO00O()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v4, :cond_4

    .line 14
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO00o()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    invoke-static {}, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSuperEisProItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {}, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSuperEisItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    if-nez v5, :cond_7

    .line 17
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    .line 18
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMasterFilterItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_5
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    .line 20
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getShineItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v4, :cond_15

    .line 21
    invoke-static {}, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSettingItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 22
    :cond_7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooO()Z

    move-result v5

    if-nez v5, :cond_8

    .line 23
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v4, :cond_8

    .line 24
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getHDRItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_8
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v4, :cond_9

    .line 26
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMasterFilterItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_9
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez v4, :cond_a

    .line 28
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getShineItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez v4, :cond_b

    .line 29
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 30
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    if-nez v4, :cond_c

    .line 31
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v4, :cond_15

    .line 32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 33
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getInvalidItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_d
    if-eqz v5, :cond_e

    if-nez v4, :cond_e

    .line 34
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 35
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getHDRItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_e
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v4, :cond_10

    .line 37
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OoOO()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 38
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMasterFilterItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    :cond_f
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMasterFilterItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_10
    :goto_1
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez v4, :cond_11

    .line 41
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getShineItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    if-eqz v5, :cond_12

    if-nez v4, :cond_12

    .line 42
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0OoO()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 43
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getVideoBokehItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    if-nez v4, :cond_14

    if-nez v5, :cond_13

    .line 44
    invoke-static {}, Lcom/android/camera/features/mode/video/VideoConfigUtils;->getSettingItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 45
    :cond_13
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_2
    if-eqz v4, :cond_15

    .line 46
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 47
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getInvalidItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_3
    return-object v1
.end method
