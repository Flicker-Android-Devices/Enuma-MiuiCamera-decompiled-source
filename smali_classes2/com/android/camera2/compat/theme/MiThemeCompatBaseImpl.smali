.class public Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;
.super Ljava/lang/Object;
.source "MiThemeCompatBaseImpl.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeInterface;


# static fields
.field public static final RESOURCE_SUFFIX:Ljava/lang/String; = "_shadow"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mMiThemeOperationFragment:Lcom/android/camera2/compat/theme/MiThemeOperationFragment;

.field public mMiThemeOperationModeSelect:Lcom/android/camera2/compat/theme/MiThemeOperationTab;

.field public miThemeOperationBottom:Lcom/android/camera2/compat/theme/MiThemeOperationBottom;

.field public miThemeOperationFilter:Lcom/android/camera2/compat/theme/MiThemeOperationFilter;

.field public miThemeOperationFocus:Lcom/android/camera2/compat/theme/MithemeOperationFocus;

.field public miThemeOperationManual:Lcom/android/camera2/compat/theme/MiThemeOperationManual;

.field public miThemeOperationMimoji:Lcom/android/camera2/compat/theme/MiThemeOperationMimoji;

.field public miThemeOperationPanel:Lcom/android/camera2/compat/theme/MiThemeOperationPanel;

.field public miThemeOperationTimeFreeze:Lcom/android/camera2/compat/theme/MiThemeOperationTimeFreeze;

.field public miThemeOperationTips:Lcom/android/camera2/compat/theme/MiThemeOperationTips;

.field public miThemeOperationTop:Lcom/android/camera2/compat/theme/MiThemeOperationTop;

.field public miThemeOperationTopAlert:Lcom/android/camera2/compat/theme/MiThemeOperationTopAlert;

.field public miThemeOperationTopMenu:Lcom/android/camera2/compat/theme/MiThemeOperationTopMenu;

.field public miThemeOperationVendorTag:Lcom/android/camera2/compat/theme/MiThemeOperationVendorTag;

.field public miThemeOperationVideoResource:Lcom/android/camera2/compat/theme/MiThemeOperationVideoResource;

.field public miThemeOperationZoom:Lcom/android/camera2/compat/theme/MiThemeOperationZoom;

.field public miThemeShutterSoundBase:Lcom/android/camera2/compat/theme/MiThemeShutterSoundBase;

.field public miThemeWidgetFilter:Lcom/android/camera2/compat/theme/MiThemeWidgetFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationFragment;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationFragment;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->mMiThemeOperationFragment:Lcom/android/camera2/compat/theme/MiThemeOperationFragment;

    .line 3
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationBottom;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationBottom;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationBottom:Lcom/android/camera2/compat/theme/MiThemeOperationBottom;

    .line 4
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationTab;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationTab;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->mMiThemeOperationModeSelect:Lcom/android/camera2/compat/theme/MiThemeOperationTab;

    .line 5
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationTop;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationTop;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationTop:Lcom/android/camera2/compat/theme/MiThemeOperationTop;

    .line 6
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationTopAlert;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationTopAlert;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationTopAlert:Lcom/android/camera2/compat/theme/MiThemeOperationTopAlert;

    .line 7
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationManual;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationManual;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationManual:Lcom/android/camera2/compat/theme/MiThemeOperationManual;

    .line 8
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationTips;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationTips;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationTips:Lcom/android/camera2/compat/theme/MiThemeOperationTips;

    .line 9
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationZoom;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationZoom;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationZoom:Lcom/android/camera2/compat/theme/MiThemeOperationZoom;

    .line 10
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationPanel;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationPanel;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationPanel:Lcom/android/camera2/compat/theme/MiThemeOperationPanel;

    .line 11
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeWidgetFilter;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeWidgetFilter;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeWidgetFilter:Lcom/android/camera2/compat/theme/MiThemeWidgetFilter;

    .line 12
    new-instance v0, Lcom/android/camera2/compat/theme/MithemeOperationFocus;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MithemeOperationFocus;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationFocus:Lcom/android/camera2/compat/theme/MithemeOperationFocus;

    .line 13
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationTopMenu;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationTopMenu;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationTopMenu:Lcom/android/camera2/compat/theme/MiThemeOperationTopMenu;

    .line 14
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationFilter;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationFilter:Lcom/android/camera2/compat/theme/MiThemeOperationFilter;

    .line 15
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationVideoResource;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationVideoResource;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationVideoResource:Lcom/android/camera2/compat/theme/MiThemeOperationVideoResource;

    .line 16
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeShutterSoundBase;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeShutterSoundBase;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeShutterSoundBase:Lcom/android/camera2/compat/theme/MiThemeShutterSoundBase;

    .line 17
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationMimoji;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationMimoji;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationMimoji:Lcom/android/camera2/compat/theme/MiThemeOperationMimoji;

    .line 18
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationTimeFreeze;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationTimeFreeze;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationTimeFreeze:Lcom/android/camera2/compat/theme/MiThemeOperationTimeFreeze;

    .line 19
    new-instance v0, Lcom/android/camera2/compat/theme/MiThemeOperationVendorTag;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/MiThemeOperationVendorTag;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationVendorTag:Lcom/android/camera2/compat/theme/MiThemeOperationVendorTag;

    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/PreferenceScreen;IZZ)V
    .locals 0

    return-void
.end method

.method public create(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getDeviceWatermark(Ljava/lang/String;FZ)Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFragmentOverlay()Lcom/android/camera2/compat/theme/MiThemeOperationFragmentIf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->mMiThemeOperationFragment:Lcom/android/camera2/compat/theme/MiThemeOperationFragment;

    return-object v0
.end method

.method public getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationBottom:Lcom/android/camera2/compat/theme/MiThemeOperationBottom;

    return-object v0
.end method

.method public getOperationFilter()Lcom/android/camera2/compat/theme/MiThemeOperationFilterInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationFilter:Lcom/android/camera2/compat/theme/MiThemeOperationFilter;

    return-object v0
.end method

.method public getOperationFocus()Lcom/android/camera2/compat/theme/MithemeOperationFocusInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationFocus:Lcom/android/camera2/compat/theme/MithemeOperationFocus;

    return-object v0
.end method

.method public getOperationManual()Lcom/android/camera2/compat/theme/MiThemeOperationManualInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationManual:Lcom/android/camera2/compat/theme/MiThemeOperationManual;

    return-object v0
.end method

.method public getOperationMimoji()Lcom/android/camera2/compat/theme/MiThemeOperationMimojiInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationMimoji:Lcom/android/camera2/compat/theme/MiThemeOperationMimoji;

    return-object v0
.end method

.method public getOperationPanel()Lcom/android/camera2/compat/theme/MiThemeOperationPanelInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationPanel:Lcom/android/camera2/compat/theme/MiThemeOperationPanel;

    return-object v0
.end method

.method public getOperationTab()Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->mMiThemeOperationModeSelect:Lcom/android/camera2/compat/theme/MiThemeOperationTab;

    return-object v0
.end method

.method public getOperationTimeFreeze()Lcom/android/camera2/compat/theme/MiThemeOperationTimeFreezeInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationTimeFreeze:Lcom/android/camera2/compat/theme/MiThemeOperationTimeFreeze;

    return-object v0
.end method

.method public getOperationTips()Lcom/android/camera2/compat/theme/MiThemeOperationTipsInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationTips:Lcom/android/camera2/compat/theme/MiThemeOperationTips;

    return-object v0
.end method

.method public getOperationTop()Lcom/android/camera2/compat/theme/MiThemeOperationTopInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationTop:Lcom/android/camera2/compat/theme/MiThemeOperationTop;

    return-object v0
.end method

.method public getOperationTopAlert()Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationTopAlert:Lcom/android/camera2/compat/theme/MiThemeOperationTopAlert;

    return-object v0
.end method

.method public getOperationTopMenu()Lcom/android/camera2/compat/theme/MiThemeOperationTopMenuInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationTopMenu:Lcom/android/camera2/compat/theme/MiThemeOperationTopMenu;

    return-object v0
.end method

.method public getOperationVendorTag()Lcom/android/camera2/compat/theme/MiThemeOperationVendorTagIf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationVendorTag:Lcom/android/camera2/compat/theme/MiThemeOperationVendorTag;

    return-object v0
.end method

.method public getOperationZoom()Lcom/android/camera2/compat/theme/MiThemeOperationZoomInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationZoom:Lcom/android/camera2/compat/theme/MiThemeOperationZoom;

    return-object v0
.end method

.method public getOverlayResByDefaultSuffix(I)I
    .locals 0

    return p1
.end method

.method public getOverlayResBySuffix(ILjava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    return p1
.end method

.method public getShutterSoundIf()Lcom/android/camera2/compat/theme/MiThemeShutterSoundIf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeShutterSoundBase:Lcom/android/camera2/compat/theme/MiThemeShutterSoundBase;

    return-object v0
.end method

.method public getTestStringID()I
    .locals 1

    const v0, 0x7f120515

    return v0
.end method

.method public getVideoResource()Lcom/android/camera2/compat/theme/MiThemeOperationVideoResourceInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeOperationVideoResource:Lcom/android/camera2/compat/theme/MiThemeOperationVideoResource;

    return-object v0
.end method

.method public getWidgetFilter()Lcom/android/camera2/compat/theme/MiThemeWidgetFilterInterFace;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeCompatBaseImpl;->miThemeWidgetFilter:Lcom/android/camera2/compat/theme/MiThemeWidgetFilter;

    return-object v0
.end method

.method public processPreviewWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    return-void
.end method

.method public processWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    return-void
.end method
