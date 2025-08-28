.class public interface abstract Lcom/android/camera/module/loader/camera2/FocusManager$Listener;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract cancelFocus(Z)V
.end method

.method public abstract multiCapture()Z
.end method

.method public notifyFocusAreaUpdate(Z)V
    .locals 0

    return-void
.end method

.method public abstract onWaitingFocusFinished()Z
.end method

.method public onWaitingFocusFinishedFailed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract shouldCaptureDirectly()Z
.end method

.method public showFocusViewWhenCaf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract startFocus()V
.end method
