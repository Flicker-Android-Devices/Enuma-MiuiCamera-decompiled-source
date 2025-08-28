.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$HaloProtocol;
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
    name = "HaloProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xbd


# virtual methods
.method public abstract disableFrontFlashAndHalo(Z)V
.end method

.method public abstract disableFrontHalo()V
.end method

.method public abstract showHalo(ZZ)V
.end method

.method public abstract updateHaloViewSize()V
.end method

.method public abstract updateSystemUIVisibility()V
.end method
