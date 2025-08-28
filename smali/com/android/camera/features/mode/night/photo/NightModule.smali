.class public Lcom/android/camera/features/mode/night/photo/NightModule;
.super Lcom/android/camera/module/Camera2Module;
.source "NightModule.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NightModule"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    return-void
.end method

.method private finishSuperNightState(Z)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightModeSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0, v3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setNightCaptureInProgress(Z)V

    .line 5
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v4, v3}, Lcom/android/camera2/Camera2Proxy;->setMiviSuperNightMode(I)V

    :cond_2
    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isShortNightCaptureAnimEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/module/Camera2Module;->showOrHideLoadingProgress(ZZ)V

    if-nez v1, :cond_3

    .line 10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result v4

    if-nez v4, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 12
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->requestReadPixels()V

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    .line 13
    :goto_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result v5

    if-nez v5, :cond_5

    return-void

    :cond_4
    move v4, v3

    .line 14
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xd4

    .line 15
    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v5, :cond_a

    if-eqz p1, :cond_9

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightModeSupported()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result p1

    if-nez p1, :cond_6

    if-nez v1, :cond_7

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->requestReadPixels()V

    move v4, v2

    goto :goto_3

    .line 19
    :cond_6
    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1, v6}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    .line 20
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 21
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    :cond_8
    const/4 p1, 0x5

    .line 22
    invoke-interface {v5, p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    .line 23
    :cond_9
    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    :cond_a
    if-eqz v4, :cond_b

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {v0, v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setReadPixelRequested(Z)V

    .line 25
    :cond_b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_c

    move v3, v2

    :cond_c
    if-eqz v0, :cond_e

    if-nez v4, :cond_e

    .line 26
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz v3, :cond_e

    if-nez v1, :cond_e

    .line 27
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isCapAnimPlayed()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 28
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->requestReadPixelsNoAnimation()V

    goto :goto_4

    .line 29
    :cond_d
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->requestReadPixels()V

    .line 30
    :goto_4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setReadPixelRequested(Z)V

    :cond_e
    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/night/photo/NightModule;->finishSuperNightState(Z)V

    return-void
.end method

.method public calculateTimeout(I)J
    .locals 4

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_0

    const p1, 0x7f12069f

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "pref_qc_camera_exposuretime_key"

    .line 2
    invoke-static {v0, p1}, Lcom/android/camera/module/image/ImageModuleUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    .line 4
    div-long/2addr v0, v2

    const-wide/16 v2, 0x2ee0

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x5dc0

    return-wide v0
.end method

.method public getRawCallbackType(I)I
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0ooOO()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00000()I

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->mapRawSuperNightImplTypeToCallbackType(I)I

    move-result p1

    const/16 v1, 0x10

    if-ne v1, p1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 6
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    sget-object p1, Lcom/android/camera/features/mode/night/photo/NightModule;->TAG:Ljava/lang/String;

    const-string v1, "mivi raw super night is not enabled in night mode"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, p1

    :cond_2
    :goto_0
    return v0
.end method

.method public handleSuperNightResultIfNeed()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->stopCpuBoost()V

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpAndQuickShot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo0()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    :cond_2
    return v1

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightEventEmitter:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_4
    return v1

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    .line 15
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mWaitingSuperNightResult:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 16
    sget-object v2, Lcom/android/camera/features/mode/night/photo/NightModule;->TAG:Ljava/lang/String;

    const-string v3, "SuperNight: force trigger shutter animation, sound and post saving"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_7
    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 18
    invoke-direct {p0, v0}, Lcom/android/camera/features/mode/night/photo/NightModule;->finishSuperNightState(Z)V

    goto :goto_0

    .line 19
    :cond_8
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOO0o/OooO00o/OooO00o;

    invoke-direct {v3, p0, v0}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooOO0o/OooO00o/OooO00o;-><init>(Lcom/android/camera/features/mode/night/photo/NightModule;Z)V

    invoke-virtual {v2, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return v1
.end method

.method public isFrontSuperNightQuickShot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpAndQuickShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedDelaySound()Z
    .locals 4

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0oOOo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpAndQuickShot()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isShortNightCaptureAnimEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 6
    :cond_2
    sget-object v0, Lcom/android/camera/features/mode/night/photo/NightModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedDelaySound: isSuperNight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isParallelSessionEnable()Z
    .locals 4

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRawOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightHalfAlgoUp()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0xad

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mode/night/photo/NightModule;->getRawCallbackType(I)I

    move-result v0

    const/16 v3, 0x8

    if-eq v3, v0, :cond_9

    const/16 v3, 0x10

    if-ne v3, v0, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isStandaloneMacroCamera(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0OoO()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 8
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getActualCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOoo()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 9
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_8

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O0O0()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 10
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isForceMainBackCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    :goto_0
    return v2
.end method

.method public needShowThumbProgressImmediately()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepareSuperNightModule()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mWaitingSuperNightResult:Z

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CaptureResultParser;->getSuperNightCheckerEv(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getTotalExposureTime([B)I

    move-result v2

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->initMultiFrameTotalCaptureDuration(I)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    sget-object v2, Lcom/android/camera/features/mode/night/photo/NightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareSuperNight: startCpuBoost"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    .line 11
    invoke-virtual {p0, v2}, Lcom/android/camera/module/Camera2Module;->startCpuBoost(I)V

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpAndQuickShot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo0()Z

    move-result v2

    if-nez v2, :cond_4

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 15
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightModeSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 16
    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_8

    .line 17
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightTripodOwlDetected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/camera2/Camera2Proxy;->setMiviSuperNightMode(I)V

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightTripodSeDetected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 20
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/camera2/Camera2Proxy;->setMiviSuperNightMode(I)V

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightOwlDetected()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 22
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/camera2/Camera2Proxy;->setMiviSuperNightMode(I)V

    goto :goto_0

    .line 23
    :cond_7
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightSE()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 24
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera2/Camera2Proxy;->setMiviSuperNightMode(I)V

    .line 25
    :cond_8
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightEventConsumer:Lio/reactivex/functions/Consumer;

    if-nez v3, :cond_9

    .line 26
    new-instance v3, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;

    invoke-direct {v3, p0}, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v3, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightEventConsumer:Lio/reactivex/functions/Consumer;

    .line 27
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 28
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightEventEmitter:Lio/reactivex/subjects/PublishSubject;

    .line 29
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightEventConsumer:Lio/reactivex/functions/Consumer;

    .line 30
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    .line 31
    sget-object v0, Lcom/android/camera/features/mode/night/photo/NightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepareSuperNight: emitter STATE START"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightEventEmitter:Lio/reactivex/subjects/PublishSubject;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_a
    if-eqz v1, :cond_b

    .line 33
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isNightPreviewAnimEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 34
    iget-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3, v4}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    :cond_b
    if-eqz v1, :cond_c

    .line 35
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isShortNightCaptureAnimEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 36
    invoke-virtual {v1, v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setNightCaptureInProgress(Z)V

    .line 37
    invoke-virtual {p0, v2, v0}, Lcom/android/camera/module/Camera2Module;->showOrHideLoadingProgress(ZZ)V

    return-void

    :cond_c
    if-eqz v1, :cond_d

    .line 38
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightModeSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setNightCaptureInProgress(Z)V

    .line 40
    :cond_d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_e

    .line 42
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onLongExposePrepare()V

    .line 43
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onLongExposeStart()V

    :cond_e
    const/16 v0, 0x12c

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x7d0

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mode/night/photo/NightModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mode/night/photo/NightModule$1;-><init>(Lcom/android/camera/features/mode/night/photo/NightModule;)V

    .line 47
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 48
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightEventConsumer:Lio/reactivex/functions/Consumer;

    .line 49
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public showDisableNightAlgoTipIfNeeded()V
    .locals 3

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mDisableAlgoTipAlreadyShown:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f1202c8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    .line 6
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mDisableAlgoTipAlreadyShown:Z

    :cond_2
    return-void
.end method

.method public updateBeauty()V
    .locals 5

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoO00()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->initBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;Lcom/android/camera2/CameraCapabilities;I)V

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    .line 6
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mCurrentAiScene:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->isFaceBeautyOn(Lcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyLevel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const-string v1, "i:1"

    iput-object v1, v0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    .line 13
    :goto_0
    sget-object v0, Lcom/android/camera/features/mode/night/photo/NightModule;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "i:0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    iget-object v4, v4, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Human scene mode detected, auto set beauty level from %s to %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_3
    sget-object v0, Lcom/android/camera/features/mode/night/photo/NightModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBeauty(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyBodyOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsBeautyBodySlimOn:Z

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateFaceAgeAnalyze()V

    return-void
.end method

.method public updateEnablePreviewThumbnail(Z)V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isPreviewThumbnailWhenFlash()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    if-eqz p1, :cond_2

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightModeSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpAndQuickShot()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo0()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    :cond_5
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 14
    :cond_6
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->setPreviewThumbnail(Z)V

    return-void
.end method

.method public updateSuperResolution()V
    .locals 0

    return-void
.end method
