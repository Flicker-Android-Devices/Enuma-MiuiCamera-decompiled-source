.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$VideoReviewProtocol;
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
    name = "VideoReviewProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xbb


# virtual methods
.method public abstract hideReviewViews()V
.end method

.method public abstract isShowReviewViews()Z
.end method

.method public abstract showReviewViews(Landroid/graphics/Bitmap;)V
.end method
