.class public Lcom/android/camera/module/impl/component/DisplayGuideImp;
.super Ljava/lang/Object;
.source "DisplayGuideImp.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;
.implements Lcom/android/camera/display/device/IFoldState$OnFoldedListener;


# static fields
.field public static final FRONT_FACING_DISPLAY_TIP:Ljava/lang/String; = "front_facing_display_tip"

.field public static final TAG:Ljava/lang/String; = "DisplayGuideImp"

.field public static final ULTRA_PIXEL_SELF_DISPLAY_TIP:Ljava/lang/String; = "ultra_pixel_self_display_tip"


# instance fields
.field public mActivity:Lcom/android/camera/ActivityBase;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/DisplayGuideImp;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/DisplayGuideImp;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private processUltraPixelSelf(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;->isSupportUltraPixelSelf(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/display/device/FoldStateAdapter;->getInstance()Lcom/android/camera/display/device/FoldStateAdapter;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/camera/display/device/FoldStateAdapter;->reverseDisplayStateWhileUnFold(Z)V

    .line 4
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/display/device/FoldStateAdapter;->getInstance()Lcom/android/camera/display/device/FoldStateAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/display/device/FoldStateAdapter;->reverseDisplayStateWhileUnFold(Z)V

    .line 7
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    .line 8
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOoo;

    invoke-direct {v1, p0, v0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOoo;-><init>(Lcom/android/camera/module/impl/component/DisplayGuideImp;Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;->isShowDisplayTip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;->dismissUltraPixelSelfDisplayTip()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz p1, :cond_1

    const/16 v0, 0xaf

    .line 4
    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x5

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 8
    invoke-interface {p1, v0}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    :cond_1
    return-void
.end method

.method public dismissFrontFacingDisplayFoldTip()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "front_facing_display_tip"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public dismissUltraPixelSelfDisplayTip()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "ultra_pixel_self_display_tip"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public isShowDisplayTip()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "ultra_pixel_self_display_tip"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportFrontFacingDisplayFoldTip(I)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "close_front_facing_displayfold_tip"

    .line 1
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayFoldState()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public isSupportUltraPixelSelf(I)Z
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xaf

    if-eq p1, v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    return v0

    .line 3
    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayFoldState()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public onFolded(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",thread-id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/android/camera/ShortcutFunction;->initShortcut(Landroid/content/Context;)V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->processUltraPixelSelf(Z)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/display/device/FoldStateAdapter;->getInstance()Lcom/android/camera/display/device/FoldStateAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/display/device/FoldStateAdapter;->init(Landroid/content/Context;Lcom/android/camera/display/device/IFoldState$OnFoldedListener;)V

    return-void
.end method

.method public showFrontFacingDisplayFoldTip()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "front_facing_display_tip"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    :cond_0
    new-instance v1, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;-><init>()V

    .line 6
    new-instance v3, Lcom/android/camera/module/impl/component/DisplayGuideImp$3;

    invoke-direct {v3, p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp$3;-><init>(Lcom/android/camera/module/impl/component/DisplayGuideImp;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->setOnClick(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f120336

    .line 7
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->setTipText(I)V

    const v3, 0x7f110003

    .line 8
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->setAnimRawResId(I)V

    const/4 v3, 0x2

    const v4, 0x7f1300bc

    .line 9
    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 10
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showUltraPixelSelfDisplayFoldTip()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "ultra_pixel_self_display_tip"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 6
    new-instance v1, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;-><init>()V

    .line 7
    new-instance v3, Lcom/android/camera/module/impl/component/DisplayGuideImp$1;

    invoke-direct {v3, p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp$1;-><init>(Lcom/android/camera/module/impl/component/DisplayGuideImp;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->setOnClick(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f120335

    .line 8
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->setTipText(I)V

    const v3, 0x7f110003

    .line 9
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->setAnimRawResId(I)V

    const/4 v3, 0x2

    const v4, 0x7f1300bc

    .line 10
    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 11
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showUltraPixelSelfDisplayUnfoldTip()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "ultra_pixel_self_display_tip"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 6
    new-instance v1, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;-><init>()V

    .line 7
    new-instance v3, Lcom/android/camera/module/impl/component/DisplayGuideImp$2;

    invoke-direct {v3, p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp$2;-><init>(Lcom/android/camera/module/impl/component/DisplayGuideImp;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->setOnClick(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f120337

    .line 8
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->setTipText(I)V

    const v3, 0x7f110004

    .line 9
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->setAnimRawResId(I)V

    const/4 v3, 0x2

    const v4, 0x7f1300bc

    .line 10
    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 11
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public ultraPixelSelf(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->isSupportUltraPixelSelf(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->showUltraPixelSelfDisplayFoldTip()V

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    .line 5
    sget-object p1, Lcom/android/camera/module/impl/component/DisplayGuideImp;->TAG:Ljava/lang/String;

    const-string v0, "close ultra pixel self"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->showUltraPixelSelfDisplayUnfoldTip()V

    .line 7
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    .line 8
    sget-object p1, Lcom/android/camera/module/impl/component/DisplayGuideImp;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "open ultra pixel self"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/display/device/FoldStateAdapter;->getInstance()Lcom/android/camera/display/device/FoldStateAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/display/device/FoldStateAdapter;->unInit()V

    return-void
.end method
