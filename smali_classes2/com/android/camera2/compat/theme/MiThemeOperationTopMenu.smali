.class public Lcom/android/camera2/compat/theme/MiThemeOperationTopMenu;
.super Ljava/lang/Object;
.source "MiThemeOperationTopMenu.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeOperationTopMenuInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCircle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr p3, p4

    .line 2
    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getChildMarginWidth(F)F
    .locals 0

    return p1
.end method

.method public getCircleRadius(F)F
    .locals 0

    return p1
.end method

.method public getClickAnimation(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    return-void
.end method

.method public getColorCircleBackgroundView(Lcom/android/camera/ui/ColorCircleBackgroundView;)V
    .locals 0

    return-void
.end method

.method public getConfigSelectColor(ZLcom/airbnb/lottie/LottieAnimationView;FLcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p6

    const v0, 0x7f060369

    invoke-virtual {p6, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p6

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isSwitchOn()Z

    move-result p5

    if-eqz p5, :cond_0

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 4
    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->getTopResourceId()I

    move-result p5

    invoke-virtual {p2, p5}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p5

    const p6, 0x7f0600ac

    invoke-virtual {p5, p6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 7
    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->getTopResourceId()I

    move-result p5

    invoke-virtual {p2, p5}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 8
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p5

    const p6, 0x7f0600aa

    invoke-virtual {p5, p6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 11
    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->getTopSelectedAnimID()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 13
    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_2
    return-void
.end method

.method public getDuration()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public getExtraMenuAnimator(Ljava/lang/Boolean;Landroid/view/ViewGroup;Lcom/android/camera/ui/ShapeBackGroundView;IIIIILandroid/animation/Animator$AnimatorListener;)V
    .locals 12

    move-object v0, p2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    sub-int v1, p4, p5

    int-to-float v1, v1

    .line 3
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 4
    :goto_0
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 6
    invoke-virtual {p3}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentRadius()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/MiThemeOperationTopMenu;->getShapeBackGroundViewRadius()I

    move-result v9

    const/16 v10, 0xc8

    move-object v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v11, p9

    .line 7
    invoke-virtual/range {v3 .. v11}, Lcom/android/camera/ui/ShapeBackGroundView;->startBackGroundAnimator(IIIIIIILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-object v0
.end method

.method public getItemWidth(IIIIF)F
    .locals 0

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p5, p2

    int-to-float p2, p4

    mul-float/2addr p5, p2

    sub-float/2addr p1, p5

    div-float/2addr p1, p2

    return p1
.end method

.method public getMulitItem()I
    .locals 1

    const v0, 0x7f0d00c0

    return v0
.end method

.method public getRectHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScaleValue()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getShapeBackGroundViewRadius()I
    .locals 1

    const/16 v0, 0x42

    return v0
.end method

.method public getSlideSwitchBtnBackgroundColor()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f060369

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getSlideSwitchBtnBackgroundPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 2

    .line 1
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object p1
.end method

.method public getSlideSwitchBtnDisableColor()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f06035b

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getSlideSwitchBtnIndicatorColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    return v0
.end method

.method public getSlideSwitchBtnNormalColor()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f0600dd

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getSlideSwitchBtnTextSelectColor()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f0600ac

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getTimerBurstBackgroundCircleRadius(F)F
    .locals 0

    return p1
.end method

.method public getTimerBurstBackgroundColor()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f06036d

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getTimerBurstBackgroundPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 2

    .line 1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f06036d

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-object p1
.end method

.method public getTimerBurstCircleRadius(F)F
    .locals 0

    return p1
.end method

.method public getTimerBurstCurrentTextColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    return v0
.end method

.method public getTimerBurstSeekBarAnimator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTimerBurstTextColor()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f060369

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getToggleItem()I
    .locals 1

    const v0, 0x7f0d00c1

    return v0
.end method

.method public getTopMenuOpenAnimation(Ljava/util/List;IIILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x3e3851ec    # 0.18f

    const/4 v2, 0x1

    add-int/lit8 v3, p3, -0x1

    sub-int v4, v3, p2

    int-to-float v4, v4

    const v5, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v4

    sub-float/2addr v1, v5

    const v5, 0x3fae147b    # 1.36f

    const v6, 0x3ca3d70a    # 0.02f

    mul-float/2addr v4, v6

    sub-float/2addr v5, v4

    .line 3
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    neg-int v9, p4

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x0

    aput v8, v7, v2

    invoke-static {v0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    mul-int/lit8 v1, v3, 0x14

    mul-int/lit8 v4, p2, 0x14

    sub-int/2addr v1, v4

    rsub-int v4, v1, 0x208

    int-to-long v4, v4

    .line 5
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v4, v1

    .line 6
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 7
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 8
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 10
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x190

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    mul-int/lit8 v3, v3, 0x32

    mul-int/lit8 v1, p2, 0x32

    sub-int/2addr v3, v1

    int-to-long v1, v3

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 13
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 14
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getTopMenuRes(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public reInit(IILjava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v9, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f08048f

    const v3, 0x7f08048f

    const v4, 0x7f12077f

    const v5, 0x7f12077f

    const-string v6, "jiugongge"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f080465

    const v12, 0x7f080465

    const v13, 0x7f12077e

    const v14, 0x7f12077e

    const-string v15, "golden_section"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f08046b

    const v4, 0x7f08046b

    const v5, 0x7f120780

    const v6, 0x7f120780

    const-string v7, "left_golden_spiral"

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f080493

    const v12, 0x7f080493

    const v13, 0x7f120781

    const v14, 0x7f120781

    const-string v15, "right_golden_spiral"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public scaleExtraSubMenu(Landroid/view/View;Landroid/view/View;Z)V
    .locals 11

    const-wide/16 v0, 0x12c

    if-eqz p3, :cond_0

    .line 1
    new-instance p2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v2, p2

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 3
    new-instance p3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f8851ec    # 1.065f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f8851ec    # 1.065f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 7
    new-instance p3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public setBackgroundAlphaAndRadius(Lcom/android/camera/ui/ShapeBackGroundView;FIIII)V
    .locals 1

    int-to-float v0, p3

    sub-int/2addr p4, p3

    int-to-float p3, p4

    mul-float/2addr p3, p2

    add-float/2addr v0, p3

    float-to-int p3, v0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/MiThemeOperationTopMenu;->getShapeBackGroundViewRadius()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p2, p4

    .line 2
    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/android/camera/ui/ShapeBackGroundView;->setBackgroundAlphaAndRadius(IIII)V

    return-void
.end method
