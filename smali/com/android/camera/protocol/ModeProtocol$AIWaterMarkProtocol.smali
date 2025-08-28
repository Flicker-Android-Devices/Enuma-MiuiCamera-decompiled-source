.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$AIWaterMarkProtocol;
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
    name = "AIWaterMarkProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xbc


# virtual methods
.method public abstract moveWatermarkLayout(II)V
.end method

.method public abstract setWatermarkVisible(I)V
.end method

.method public abstract updateTopAlert(Z)V
.end method

.method public abstract updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
.end method

.method public abstract updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V
.end method
