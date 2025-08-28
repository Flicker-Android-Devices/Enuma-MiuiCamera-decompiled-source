.class public Lcom/android/camera/module/image/asd/AsdManager;
.super Ljava/lang/Object;
.source "AsdManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AsdManager"


# instance fields
.field public mAsdScenes:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

.field public mCurrentAsdScene:I

.field public final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingAsdScene:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x3

    .line 2
    iput v0, p0, Lcom/android/camera/module/image/asd/AsdManager;->mCurrentAsdScene:I

    const/4 v0, -0x2

    .line 3
    iput v0, p0, Lcom/android/camera/module/image/asd/AsdManager;->mPendingAsdScene:I

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/image/asd/AsdManager;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/image/asd/AsdManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/image/asd/AsdManager;->updateAsdSceneResult(I)V

    return-void
.end method

.method private closeHdr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/asd/AsdManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getHdrCheckerCallback()Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->onHdrSceneChanged(Z)V

    :cond_0
    return-void
.end method

.method private enterAsdScene(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/asd/AsdManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1}, Lcom/android/camera/module/image/asd/AsdManager;->setAutoFlashTargetState(Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    .line 4
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const-string v5, "105"

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-eq p1, v4, :cond_6

    const-string v4, "AsdManager"

    const-string v8, "3"

    const-string v9, "1"

    if-eqz p1, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 6
    :pswitch_0
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 7
    invoke-direct {p0, v7}, Lcom/android/camera/module/image/asd/AsdManager;->setAutoFlashTargetState(Z)V

    .line 8
    invoke-interface {v2, v1, v9, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    .line 9
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v7, [I

    aput v6, v0, v1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    goto/16 :goto_1

    .line 10
    :pswitch_1
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "103"

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    invoke-direct {p0, v7}, Lcom/android/camera/module/image/asd/AsdManager;->setAutoFlashTargetState(Z)V

    .line 14
    invoke-interface {v2, v1, v9, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    const-string p1, "enterAsdScene(): turn off HDR as FLASH has higher priority than HDR"

    .line 15
    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/image/asd/AsdManager;->closeHdr()V

    .line 17
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v7, [I

    aput v6, v0, v1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    invoke-direct {p0, v7}, Lcom/android/camera/module/image/asd/AsdManager;->setAutoFlashTargetState(Z)V

    .line 19
    invoke-interface {v2, v1, v9, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    .line 20
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v7, [I

    aput v6, v0, v1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    invoke-direct {p0, v7}, Lcom/android/camera/module/image/asd/AsdManager;->setAutoFlashTargetState(Z)V

    .line 23
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    const/16 v3, 0xb6

    if-eq p1, v3, :cond_5

    const-string p1, "alertFlash"

    .line 24
    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-interface {v2, v1, v9, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    .line 26
    :cond_5
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v7, [I

    const/16 v2, 0xb

    aput v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    goto :goto_1

    .line 27
    :cond_6
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 28
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v7, [I

    aput v6, v0, v1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private exitAsdScene(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/asd/AsdManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, -0x1

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v2, :cond_4

    const/16 v2, 0x8

    const-string v6, "1"

    if-eqz p1, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p1

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v7, "3"

    .line 5
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "105"

    .line 6
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "103"

    .line 7
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    :cond_1
    invoke-interface {v1, v2, v6, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    .line 9
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v4, [I

    aput v3, v0, v5

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p1

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "101"

    .line 12
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "2"

    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "5"

    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 15
    invoke-interface {v1, v2, v6, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    .line 16
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v4, [I

    const/16 v1, 0xb

    aput v1, v0, v5

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    goto :goto_0

    .line 17
    :cond_4
    :pswitch_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v4, [I

    aput v3, v0, v5

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private moduleStatusInvalid()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/asd/AsdManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isInCountDown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private setAutoFlashTargetState(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;->setAutoFlashTargetState(Z)V

    :cond_0
    return-void
.end method

.method private updateAsdSceneResult(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update asd scene result,newResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsdManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/module/image/asd/AsdManager;->mCurrentAsdScene:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/image/asd/AsdManager;->exitAsdScene(I)V

    .line 3
    iput p1, p0, Lcom/android/camera/module/image/asd/AsdManager;->mCurrentAsdScene:I

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/module/image/asd/AsdManager;->enterAsdScene(I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/module/image/asd/AsdManager;->updateAsdSceneResult(I)V

    return-void
.end method

.method public consumeAsdSceneResult(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/image/asd/AsdManager;->mPendingAsdScene:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 2
    iput v1, p0, Lcom/android/camera/module/image/asd/AsdManager;->mPendingAsdScene:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/image/asd/AsdManager;->moduleStatusInvalid()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/module/image/asd/AsdManager;->updateAsdSceneResult(I)V

    move p1, v0

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/module/image/asd/AsdManager;->mCurrentAsdScene:I

    if-eq v0, p1, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/image/asd/AsdManager;->moduleStatusInvalid()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/module/image/asd/AsdManager;->updateAsdSceneResult(I)V

    :cond_3
    return-void
.end method

.method public resetAsdSceneInExtraMenuVisibilityChange()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0oO/OooO00o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0oO/OooO00o;-><init>(Lcom/android/camera/module/image/asd/AsdManager;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public resetAsdSceneInHdrOrFlashChange(ZLandroid/os/Handler;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    iget p1, p0, Lcom/android/camera/module/image/asd/AsdManager;->mCurrentAsdScene:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 2
    :cond_1
    new-instance p1, Lcom/android/camera/module/image/asd/AsdManager$1;

    invoke-direct {p1, p0}, Lcom/android/camera/module/image/asd/AsdManager$1;-><init>(Lcom/android/camera/module/image/asd/AsdManager;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
