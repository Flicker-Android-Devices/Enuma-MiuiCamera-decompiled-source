.class public Lcom/android/camera/module/image/MultiCaptureManager$2;
.super Ljava/lang/Object;
.source "MultiCaptureManager.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/image/MultiCaptureManager;->multiCapture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public mEyeTrackOn:Z

.field public final synthetic this$0:Lcom/android/camera/module/image/MultiCaptureManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/MultiCaptureManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackEyeOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->mEyeTrackOn:Z

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb8

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;->setSnapNumVisible(ZZ)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->hideDelayNumber()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->restoreMultiSnapUIElements()V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_2

    const-string v1, "d"

    .line 8
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->mEyeTrackOn:Z

    if-eqz v0, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO00o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->mEyeTrackOn:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO00o;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/MultiCaptureManager$2;->onNext(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$2;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iput-object p1, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mBurstDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
