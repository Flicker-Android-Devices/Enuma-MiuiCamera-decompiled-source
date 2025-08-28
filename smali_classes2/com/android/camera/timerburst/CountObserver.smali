.class public Lcom/android/camera/timerburst/CountObserver;
.super Ljava/lang/Object;
.source "CountObserver.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CountObserver"


# instance fields
.field public mCount:I

.field public mMode:I

.field public final mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/timerburst/CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(ILcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 0

    .line 4
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    return-void
.end method

.method public static synthetic OooO0O0(ILcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideDelayNumber()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    const-string v0, "CountObserver"

    const-string/jumbo v1, "onError - module is null, returning."

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/camera/timerburst/TimerBurstManager;->mIsStartCount:Z

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstManager;->tryRemoveCountDownMessage()V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xac

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 6
    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v3

    if-nez v3, :cond_5

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v5, 0xd4

    .line 9
    invoke-virtual {v3, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/timerburst/TimerBurstController;->isSupportTimerBurst(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/camera/timerburst/CountObserver;->mMode:I

    const/16 v6, 0x78

    if-eq v5, v6, :cond_5

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v6

    if-nez v6, :cond_5

    .line 13
    invoke-virtual {v5, v4}, Lcom/android/camera/timerburst/TimerBurstController;->setInTimerBurstShotting(Z)V

    .line 14
    invoke-virtual {v5}, Lcom/android/camera/timerburst/TimerBurstController;->resetTimerRunningData()V

    .line 15
    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    .line 16
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v3, 0xa7

    if-ne v1, v3, :cond_3

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xb5

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    .line 20
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const v3, 0xff04

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ProExtra;

    if-eqz v1, :cond_2

    .line 21
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$ProExtra;->setExtraVisibility(Z)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 22
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa6

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 23
    invoke-interface {v3, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setMaskCoverVisibility(Z)Z

    .line 24
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->recheckAndKeepAutoHibernation()V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 25
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reInitAlert(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/timerburst/CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    if-nez p1, :cond_0

    const-string p1, "CountObserver"

    const-string/jumbo v0, "onError - module is null, returning."

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/camera/timerburst/TimerBurstManager;->mIsStartCount:Z

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/camera/timerburst/CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const-string v1, "CountObserver"

    if-nez v0, :cond_0

    const-string/jumbo p1, "onNext - module is null, returning."

    .line 3
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0x3a8

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    .line 6
    iget v3, p0, Lcom/android/camera/timerburst/CountObserver;->mCount:I

    if-ne p1, v3, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0OO;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 v1, 0x8

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 9
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0Oo;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0Oo;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v2, :cond_5

    .line 10
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->startAutoHibernationCaptureDelayNumber()V

    goto/16 :goto_1

    :cond_1
    if-nez p1, :cond_4

    .line 11
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0O0;

    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isSatFallback()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setWaitingSnapshot(Z)V

    const-string p1, "capture check in startCount: sat fallback"

    .line 14
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setWaitingSnapshot(Z)V

    .line 16
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getTriggerMode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/module/Camera2Module;->startNormalCapture(I)Z

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_3

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    .line 20
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->updateTimerBurstAnimator()V

    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    .line 21
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->stopAutoHibernationCaptureDelayNumber()V

    goto :goto_1

    :cond_4
    const/4 v1, 0x6

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 23
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/oo000o/OooO00o;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/oo000o/OooO00o;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v2, :cond_5

    .line 24
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->startAutoHibernationCaptureDelayNumber()V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/timerburst/CountObserver;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/camera/timerburst/CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    if-nez p1, :cond_0

    const-string p1, "CountObserver"

    const-string/jumbo v0, "onSubscribe - module is null, returning."

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0o0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0o0;

    const-wide/16 v1, 0x78

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 4
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    :cond_1
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/timerburst/CountObserver;->mCount:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/timerburst/CountObserver;->mMode:I

    return-void
.end method
