.class public Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuperNightEventConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATE_ON_CAPTURE_COMPLETE:I = 0x2

.field public static final STATE_ON_PICTURE_COMPLETE:I = 0x4

.field public static final STATE_ON_SPECIFIED_TIME_COMPLETE:I = 0x8

.field public static final STATE_START:I = 0x1


# instance fields
.field public final mCamera2ModuleRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field

.field public mState:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mState:I

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private handleNewAnimation(I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNewAnimation: E > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v1, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mState:I

    or-int v2, v1, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNewAnimation: startAnimation  duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMultiFrameTotalCaptureDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->calCaptureDuration(I)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    goto/16 :goto_1

    :cond_1
    or-int v2, v1, p1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    or-int v2, v1, p1

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    or-int v2, v1, p1

    const/16 v5, 0x9

    if-ne v2, v5, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleNewAnimation: specified time complete "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {v3}, Lcom/xiaomi/camera/base/PerformanceTracker;->calCaptureDuration(I)V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v0, :cond_6

    .line 12
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPostAction(I)V

    goto :goto_1

    :cond_3
    or-int/2addr v1, p1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->resetMultiFrameTotalCaptureDuration()V

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/Camera2Module;->mSuperNightEventEmitter:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/Camera2Module;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_4

    .line 18
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/camera/module/Camera2Module;->mSuperNightEventDisposable:Lio/reactivex/disposables/Disposable;

    .line 21
    :cond_4
    iput v3, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mState:I

    return-void

    .line 22
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleNewAnimation: startWaitingImage >> "

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {v3}, Lcom/xiaomi/camera/base/PerformanceTracker;->calCaptureDuration(I)V

    const/4 v1, 0x4

    .line 24
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    .line 25
    :cond_6
    :goto_1
    iget v0, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mState:I

    .line 26
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNewAnimation: mstate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SuperNight: state > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_b

    .line 4
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_a

    const/4 v3, 0x4

    if-eq v1, v3, :cond_a

    const/16 v3, 0xac

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq v1, v4, :cond_7

    const/16 p1, 0x12c

    if-eq v1, p1, :cond_6

    const/16 p1, 0x7d0

    if-eq v1, p1, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SuperNight: trigger shutter animation, sound and post saving"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iput-boolean v2, v0, Lcom/android/camera/module/Camera2Module;->mWaitingSuperNightResult:Z

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isNightPreviewAnimEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    :cond_2
    iget-boolean v1, v0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1, v3}, Lcom/android/camera/module/image/ImageModuleUtil;->animateCapture(ZLcom/android/camera/Camera;)V

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1, v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setCapAnimPlayed(Z)V

    :cond_3
    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightModeSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isReadPixelRequested()Z

    move-result v1

    if-nez v1, :cond_5

    .line 14
    invoke-virtual {p1, v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setReadPixelRequested(Z)V

    .line 15
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->requestReadPixels()V

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SuperNightEventConsumer: playCameraSound."

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {v0, v5}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p1, v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setSoundPlayed(Z)V

    .line 19
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 20
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd4

    .line 21
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p1, :cond_b

    const/4 v0, 0x5

    .line 22
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    goto :goto_2

    .line 23
    :cond_6
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SuperNight: show capture instruction hint"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_b

    .line 26
    invoke-interface {p1, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSuperNightSeTip(I)V

    goto :goto_2

    .line 27
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 28
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightCaptureInProgress()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 29
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v3, :cond_8

    .line 30
    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSuperNightSeTip(I)V

    .line 31
    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 32
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 33
    invoke-virtual {v0, v5}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    goto :goto_1

    .line 34
    :cond_9
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isReadPixelRequested()Z

    move-result v3

    if-nez v3, :cond_a

    .line 35
    invoke-virtual {v1, v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->setReadPixelRequested(Z)V

    .line 36
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 37
    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->requestReadPixels()V

    .line 38
    :cond_a
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->handleNewAnimation(I)V

    :cond_b
    :goto_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module$SuperNightEventConsumer;->accept(Ljava/lang/Integer;)V

    return-void
.end method
