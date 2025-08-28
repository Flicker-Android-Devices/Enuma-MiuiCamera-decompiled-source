.class public Lcom/android/camera2/compat/theme/MiThemeOperationTopAlert;
.super Ljava/lang/Object;
.source "MiThemeOperationTopAlert.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawChildRoundRect(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V
    .locals 9

    const/high16 v0, 0x40000000    # 2.0f

    div-float v6, p6, v0

    div-float v7, p7, v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v8, p8

    .line 1
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawMainRoundRect(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V
    .locals 9

    const/high16 v0, 0x40000000    # 2.0f

    div-float v6, p6, v0

    div-float v7, p7, v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v8, p8

    .line 1
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAnimatorDuration()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public getFastMotionTopAlertOtherSpace(I)I
    .locals 0

    return p1
.end method

.method public getFastMotionTopAlertSpace(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getFastmotionTopAlert(Landroid/content/Context;I)F
    .locals 0

    int-to-float p1, p2

    return p1
.end method

.method public getPaintColor()I
    .locals 1

    const/high16 v0, 0x33000000

    return v0
.end method

.method public getTopAlertBgRes(I)I
    .locals 0

    return p1
.end method

.method public getTopAlertBgRes(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public getTopAlertInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-object v0
.end method

.method public getTopAlertRes(I)I
    .locals 0

    return p1
.end method

.method public getTopAlertRes(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public isSetShadowNeedDelay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setColorAndRefresh(Lcom/android/camera/ui/ColorImageView;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    return-void
.end method

.method public setPaintAlpha(Landroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public setPaintStyle(Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public setTextShadow(Landroid/widget/TextView;I)V
    .locals 0

    return-void
.end method

.method public setTopAlertTextSize(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method
