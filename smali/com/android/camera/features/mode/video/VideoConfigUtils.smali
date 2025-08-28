.class public Lcom/android/camera/features/mode/video/VideoConfigUtils;
.super Ljava/lang/Object;
.source "VideoConfigUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    const v0, 0x7f0803b8

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f1200b0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showSetting()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0O0(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v1

    const v2, 0x7f0802bb

    const v3, 0x7f0802ba

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f1200bc

    goto :goto_2

    :cond_2
    const v1, 0x7f1200bb

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0O0(Landroid/view/View;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    const/16 v0, 0xda

    .line 8
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0OO(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getValueSelectedShadowDrawableIgnoreClose(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "off"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic OooO0OO(Landroid/view/View;)V
    .locals 3

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/16 v2, 0xa5

    .line 11
    invoke-interface {v0, v1, p0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static getAiAudioSingleExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xb6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mode/video/VideoConfigUtils$2;

    invoke-direct {v1}, Lcom/android/camera/features/mode/video/VideoConfigUtils$2;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getAiEnhancedVideoExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xaf

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mode/video/VideoConfigUtils$3;

    invoke-direct {v1}, Lcom/android/camera/features/mode/video/VideoConfigUtils$3;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoZoomExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xfd

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mode/video/VideoConfigUtils$1;

    invoke-direct {v1}, Lcom/android/camera/features/mode/video/VideoConfigUtils$1;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xe1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO0o0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO0o0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO00o;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getSuperEisItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xda

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO0Oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO0Oo;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO0O0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getSuperEisProItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xa5

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO0OO;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOo/OooO0o;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method
