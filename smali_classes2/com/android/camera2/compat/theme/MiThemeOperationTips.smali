.class public Lcom/android/camera2/compat/theme/MiThemeOperationTips;
.super Ljava/lang/Object;
.source "MiThemeOperationTips.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeOperationTipsInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customStubViewTransition()Landroid/animation/LayoutTransition;
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    const/4 v3, 0x0

    invoke-static {v3, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2
    new-instance v4, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v0, [F

    .line 3
    fill-array-data v4, :array_1

    invoke-static {v3, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4
    new-instance v3, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v4, 0x0

    .line 6
    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const-wide/16 v6, 0x12c

    .line 7
    invoke-virtual {v3, v0, v6, v7}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 8
    invoke-virtual {v3, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const/4 v0, 0x3

    .line 9
    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const-wide/16 v4, 0xc8

    .line 10
    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 11
    invoke-virtual {v3, v0, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public customToastLayoutTransition(Landroid/animation/AnimatorListenerAdapter;)Landroid/animation/LayoutTransition;
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    const/4 v3, 0x0

    invoke-static {v3, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2
    new-instance v4, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v0, [F

    .line 3
    fill-array-data v4, :array_1

    invoke-static {v3, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4
    new-instance v3, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    invoke-virtual {v2, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v3, 0x0

    .line 7
    invoke-virtual {p1, v0, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const-wide/16 v5, 0x12c

    .line 8
    invoke-virtual {p1, v0, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const/4 v0, 0x3

    .line 10
    invoke-virtual {p1, v0, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const-wide/16 v3, 0xc8

    .line 11
    invoke-virtual {p1, v0, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 12
    invoke-virtual {p1, v0, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getAiAudioZoomIndicatorColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    return v0
.end method

.method public getBottomTipsBg()I
    .locals 1

    const v0, 0x7f08012b

    return v0
.end method

.method public getGuideToastBgColor()I
    .locals 1

    const v0, 0x7f080154

    return v0
.end method

.method public getLiveMusicBackgroundDrawable()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRecommendTopTipLayout()I
    .locals 1

    const v0, 0x7f0d017b

    return v0
.end method

.method public getZoomTipsAnimationEndValue(Landroid/content/Context;)F
    .locals 0

    const/high16 p1, 0x422c0000    # 43.0f

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->pixelToXxhdp(F)F

    move-result p1

    return p1
.end method

.method public getZoomTipsAnimationStartValue(Landroid/content/Context;)F
    .locals 0

    const/high16 p1, 0x428c0000    # 70.0f

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->pixelToXxhdp(F)F

    move-result p1

    return p1
.end method

.method public getZoomTipsValue(Landroid/content/Context;)F
    .locals 0

    const/high16 p1, 0x422c0000    # 43.0f

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->pixelToXxhdp(F)F

    move-result p1

    return p1
.end method

.method public isNormalThemeWhenYellowTintColor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
