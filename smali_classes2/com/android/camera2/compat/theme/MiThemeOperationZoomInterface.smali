.class public interface abstract Lcom/android/camera2/compat/theme/MiThemeOperationZoomInterface;
.super Ljava/lang/Object;
.source "MiThemeOperationZoomInterface.java"


# virtual methods
.method public getIndicatorColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    return v0
.end method

.method public getInnerZoomViewType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOuterSingleZoomViewType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getOuterZoomViewType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShadowStyleRes()I
    .locals 1

    const v0, 0x7f130174

    return v0
.end method

.method public getSlideBackgroundAlpha()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSlideIndicatorColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    return v0
.end method

.method public getZoomRes(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public isSupportSlideViewShowValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
