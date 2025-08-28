.class public Lcom/android/camera/features/mode/portrait/PortraitModeUI;
.super Lcom/android/camera/fragment/modeui/BaseModeUI;
.source "PortraitModeUI.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic OooO00o(ZI)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 1

    .line 17
    new-instance p1, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    const v0, 0x7f08041f

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    .line 21
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationTopInterface;->getPortraitAnim()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    if-eqz p0, :cond_0

    const p0, 0x7f12003a

    goto :goto_0

    :cond_0
    const p0, 0x7f120039

    .line 22
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    .line 2
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v0, 0x7f0a008a

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyLens()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningBeautyLens()Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    move-result-object v3

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/ComponentData;->getValueSelectedDrawable(I)I

    move-result v3

    .line 7
    invoke-interface {v2, v1, v3}, Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;->getBeautyLensIcon(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a008f

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;->setTextShadow(Landroid/widget/TextView;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :pswitch_1
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :pswitch_2
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :pswitch_3
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :pswitch_4
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "f%s"

    if-eqz v1, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    goto :goto_2

    :cond_1
    new-array v1, v7, [Ljava/lang/Object;

    const-string v3, "1.4"

    aput-object v3, v1, v6

    .line 11
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    new-array v1, v7, [Ljava/lang/Object;

    const-string v3, "1.2"

    aput-object v3, v1, v6

    .line 12
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    new-array v1, v7, [Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/android/camera/CameraSettings;->readFNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->popupSolidPattern()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f080987

    goto :goto_3

    :cond_4
    const v0, 0x7f0800c1

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 15
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;->setBeautyIconBg(Landroid/view/View;)V

    new-array v0, v7, [Landroid/view/View;

    aput-object p0, v0, v6

    .line 16
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic OooO00o(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->showLighting(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0O0(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_0

    const/16 v1, 0xcf

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 4
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->onTopAnimClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->showBokehLens(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->showBokeh(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->showBokeh(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->scrollFnumberSlide(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private getBokehLensUpdater()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;
    .locals 1

    .line 1
    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOOO/OooO0o0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOOO/OooO0o0;

    return-object v0
.end method

.method private getGestureListener()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;-><init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V

    return-object v0
.end method

.method private getUltraWideBokehItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 2
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v2, 0xcf

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOOO/OooO00o;

    invoke-direct {v2, v0}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOOO/OooO00o;-><init>(Z)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOOO/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOOO/OooO0O0;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private scrollFnumberSlide(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FNumberController;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$FNumberController;->scrollFnumberSlide(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private showBokeh(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "bokeh_adjust_entry"

    const-string v1, "click"

    invoke-static {v0, p1, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$FNumberController;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$FNumberController;->showBokehPanel()V

    :cond_0
    return-void
.end method

.method private showBokehLens(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "beauty_lens_entry"

    const-string v1, "click"

    invoke-static {v0, p1, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$FNumberController;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$FNumberController;->showBeautyLensPanel()V

    :cond_0
    return-void
.end method

.method private showLighting(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_0

    const/16 v0, 0xcb

    .line 2
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExtraTopConfigItems()Ljava/util/List;
    .locals 3
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
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O0oO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getCinematicAspectRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getHandGestureExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSpeechShutterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfig()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getFragmentInfo()Landroid/util/SparseArray;
    .locals 5
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

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oO()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    new-array v3, v2, [I

    const/16 v4, 0xffb

    aput v4, v3, v1

    .line 3
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/fragment/modeui/BaseModeUI;->addFragmentInfo(I[I)V

    :cond_0
    const/16 v0, 0x15

    new-array v2, v2, [I

    const/16 v3, 0xff8

    aput v3, v2, v1

    .line 4
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/fragment/modeui/BaseModeUI;->addFragmentInfo(I[I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    const/16 v0, 0xab

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

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->isLightingVersion1()Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v2

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeautyLensOn()Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v5, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7
    invoke-virtual {p0, v6, v3}, Lcom/android/camera/fragment/modeui/BaseModeUI;->createShine(II)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    if-nez v5, :cond_5

    if-eqz v1, :cond_2

    if-eqz v2, :cond_5

    .line 9
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oOOO()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oOo0()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    :cond_4
    new-instance v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    invoke-direct {v1, v6}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 12
    invoke-virtual {v1, v8}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    const v2, 0x7f080488

    .line 13
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 14
    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const v2, 0x7f12007b

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v8

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOOO/OooO0OO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOOO/OooO0OO;-><init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 20
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedBeautyLens()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 23
    new-instance v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    invoke-direct {v1, v8}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;-><init>(I)V

    const v3, 0x7f0d0033

    .line 24
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setCustomView(I)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    move-result-object v1

    .line 25
    invoke-direct {p0}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->getBokehLensUpdater()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setUpdateListener(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setSupportRotation(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOOO/OooO0Oo;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOOO/OooO0Oo;-><init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V

    .line 27
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    .line 28
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oO()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 31
    new-instance v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const/16 v3, 0x13

    invoke-direct {v1, v3}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 32
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    const v2, 0x7f080433

    .line 33
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 34
    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 35
    invoke-direct {p0}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->getGestureListener()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGestureListener(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    const v2, 0x7f120098

    .line 36
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOOO/OooO0o;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOOOO/OooO0o;-><init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V

    .line 37
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 38
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    return-object v0
.end method

.method public getTopConfigItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getTopConfigItems()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOOO0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo0Oo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOOOO()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->getUltraWideBokehItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getAiSceneItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getShineItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
