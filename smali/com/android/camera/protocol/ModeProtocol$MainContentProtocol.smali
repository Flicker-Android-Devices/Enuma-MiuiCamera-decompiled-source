.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;
.implements Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$RoundCoverProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainContentProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xa6


# virtual methods
.method public abstract animBlackCover()V
.end method

.method public abstract checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V
.end method

.method public abstract getFocusX()I
.end method

.method public abstract getFocusY()I
.end method

.method public abstract isFocusViewMoving()Z
.end method

.method public abstract isSplitFocusExposureDown()Z
.end method

.method public abstract onViewTouchEvent(ILandroid/view/MotionEvent;)Z
.end method

.method public abstract performHapticFeedback(I)V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingStart()V
.end method

.method public abstract setIdPhotoBoxVisible(Z)V
.end method

.method public abstract setMaskCoverVisibility(Z)Z
.end method

.method public abstract setPreviewAspectRatio(F)V
.end method

.method public abstract updateContentDescription()V
.end method

.method public abstract updateFocusMode(Ljava/lang/String;)V
.end method

.method public abstract updateMaskCover(ZI)V
.end method
