.class public Lcom/android/camera2/compat/theme/MiThemeOperationFilter;
.super Ljava/lang/Object;
.source "MiThemeOperationFilter.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeOperationFilterInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEffectController()Lcom/android/camera/effect/EffectController;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/effect/EffectController;

    invoke-direct {v0}, Lcom/android/camera/effect/EffectController;-><init>()V

    return-object v0
.end method
