.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;
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
    name = "ManuallyAdjust"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust$AdjustType;
    }
.end annotation


# static fields
.field public static final ADJUST_MANUAL:I = 0x1

.field public static final ADJUST_NOT_SPECIFIED:I = -0x1

.field public static final ADJUST_NULL:I = 0x0

.field public static final TYPE_TAG:I = 0xb5


# virtual methods
.method public abstract forceUpdateManualView(Z)V
.end method

.method public abstract getSelectComponentData()Lcom/android/camera/data/data/ComponentData;
.end method

.method public abstract notifyDataSetChange()V
.end method

.method public abstract onRecordingPrepare()V
.end method

.method public abstract onRecordingStop()V
.end method

.method public abstract resetManually()V
.end method

.method public abstract setManuallyLayoutVisible(Z)V
.end method

.method public abstract updateEVState(I)V
.end method

.method public abstract visibleHeight()I
.end method
