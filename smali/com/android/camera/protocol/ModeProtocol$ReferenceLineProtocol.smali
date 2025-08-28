.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ReferenceLineProtocol;
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
    name = "ReferenceLineProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xd1


# virtual methods
.method public abstract getReferenceLine()Landroid/view/View;
.end method

.method public abstract hideReferenceGradienter()V
.end method

.method public abstract updateCenterMarkSwitched()V
.end method

.method public abstract updateReferenceGradienterSwitched()V
.end method
