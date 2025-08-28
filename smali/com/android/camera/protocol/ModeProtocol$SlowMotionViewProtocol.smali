.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$SlowMotionViewProtocol;
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
    name = "SlowMotionViewProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xff05


# virtual methods
.method public abstract cancelRectAnimator(I)V
.end method

.method public abstract getMotionDetectionArea()Landroid/graphics/Rect;
.end method

.method public abstract motionViewState(I)V
.end method

.method public abstract setMotionDetectionCircleAlpha(IIZ)V
.end method

.method public abstract setMotionDetectionRectAlpha(IIZ)V
.end method

.method public abstract setMotionDetectionViewAlpha(I)V
.end method

.method public abstract updateMotionDetection(Z)V
.end method
