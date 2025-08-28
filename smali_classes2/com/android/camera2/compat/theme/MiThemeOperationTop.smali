.class public Lcom/android/camera2/compat/theme/MiThemeOperationTop;
.super Ljava/lang/Object;
.source "MiThemeOperationTop.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeOperationTopInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalTagValue()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method public getAiArrays()I
    .locals 1

    const/high16 v0, 0x7f030000

    return v0
.end method

.method public getAiArraysShadow()I
    .locals 1

    const v0, 0x7f030003

    return v0
.end method

.method public getAiDetectAnim()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaDuaration()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public getCinematicAnim()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public getMacroAnim()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModeTintColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    return v0
.end method

.method public getMotionPhotoAnim()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPanoramaTintColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    return v0
.end method

.method public getPortraitAnim()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getProVideoRecordingSimpleAnim()I
    .locals 1

    const v0, 0x7f110049

    return v0
.end method

.method public getShineAnim()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTagExpandInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object v0
.end method

.method public getTagHideInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-object v0
.end method

.method public getTopConfigBgRes(I)I
    .locals 1

    const-string v0, "_shadow"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTopConfigBgRes(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p2

    :cond_0
    const-string v0, "_shadow"

    .line 1
    invoke-static {p1, p2, v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayRes(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTopConfigRes(I)I
    .locals 0

    return p1
.end method

.method public getTopConfigRes(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public getTopConfigTint(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    return-void
.end method

.method public getTopInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-object v0
.end method

.method public getTopMargin(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707dd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getTopTintColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    return v0
.end method

.method public getUseGuideBackMarginEnd(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07018c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getVibrator(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public getVideoTagExpandDuration()J
    .locals 2

    const-wide/16 v0, 0x258

    return-wide v0
.end method

.method public getVideoTagPointFValue(Landroid/graphics/PointF;)F
    .locals 0

    .line 1
    iget p1, p1, Landroid/graphics/PointF;->y:F

    return p1
.end method

.method public getVideoTagSize(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070833

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public isUseParameterDescriptionTip()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setTopColorAnimator(Landroid/view/View;JII)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p4, v0, v1

    const/4 p4, 0x1

    aput p5, v0, p4

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 2
    invoke-virtual {p4, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p4, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance p2, Lcom/android/camera2/compat/theme/MiThemeOperationTop$1;

    invoke-direct {p2, p0, p1}, Lcom/android/camera2/compat/theme/MiThemeOperationTop$1;-><init>(Lcom/android/camera2/compat/theme/MiThemeOperationTop;Landroid/view/View;)V

    invoke-virtual {p4, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setVideoTagCountLayout(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 0

    .line 1
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public setVideoTagLayout(Landroid/content/Context;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public showJsonAnimation(Landroid/view/View;Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;I)V
    .locals 0

    return-void
.end method
