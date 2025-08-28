.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ProExtra;
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
    name = "ProExtra"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xff04


# virtual methods
.method public abstract animateOut()V
.end method

.method public abstract getCurrentTitle()I
.end method

.method public abstract isAdded()Z
.end method

.method public abstract notifyDataChanged(II)V
.end method

.method public abstract provideRotateItem(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract resetData(Lcom/android/camera/data/data/ComponentData;)V
.end method

.method public abstract setClickEnable(Z)V
.end method

.method public abstract setDegree(I)V
.end method

.method public abstract setExtraVisibility(Z)Z
.end method

.method public abstract showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;Z)V
.end method

.method public abstract toUpdateAutoButton()V
.end method

.method public abstract updateData()V
.end method

.method public abstract updateRecordingState(Z)V
.end method
