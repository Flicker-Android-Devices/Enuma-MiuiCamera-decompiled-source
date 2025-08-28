.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraAction"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xa1


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/ModeProtocol$CameraAction;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract isBlockSnap()Z
.end method

.method public abstract isDoingAction()Z
.end method

.method public isDownCapturing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isRecording()Z
.end method

.method public isRecordingPaused()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCameraPickerClicked(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract onReviewCancelClicked()V
.end method

.method public abstract onReviewDoneClicked()V
.end method

.method public onShutterButtonCancel(Z)V
    .locals 0

    return-void
.end method

.method public abstract onShutterButtonClick(I)Z
.end method

.method public abstract onShutterButtonFocus(ZI)V
.end method

.method public abstract onShutterButtonLongClick()Z
.end method

.method public abstract onShutterButtonLongClickCancel(Z)V
.end method

.method public abstract onShutterDragging()Z
.end method

.method public abstract onThumbnailClicked(Landroid/view/View;)V
.end method

.method public onTouchDownEvent()V
    .locals 0

    return-void
.end method

.method public abstract supportMultiCaptureByRunningCondition()Z
.end method

.method public abstract supportMultiCaptureByStableCondition()Z
.end method
