.class public interface abstract Lcom/android/camera/display/device/IFoldState;
.super Ljava/lang/Object;
.source "IFoldState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/display/device/IFoldState$OnFoldedListener;,
        Lcom/android/camera/display/device/IFoldState$State;
    }
.end annotation


# static fields
.field public static final CAM_STATE_FLAT_SELFIE:I = 0x2

.field public static final CAM_STATE_FOLDED:I = 0x1

.field public static final CAM_STATE_UNFOLDED:I = 0x0

.field public static final CAM_STATE_UNKNOWN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "IFoldState"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getDisplayFoldState()Z
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/camera/display/device/IFoldState$OnFoldedListener;)V
.end method

.method public abstract reverseDisplayStateWhileUnFold(Z)V
.end method

.method public abstract switchPresentationDisplay(Z)V
.end method

.method public abstract unInit()V
.end method
