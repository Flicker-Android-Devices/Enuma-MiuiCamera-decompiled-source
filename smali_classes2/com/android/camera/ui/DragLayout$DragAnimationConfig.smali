.class public Lcom/android/camera/ui/DragLayout$DragAnimationConfig;
.super Ljava/lang/Object;
.source "DragLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/DragLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragAnimationConfig"
.end annotation


# instance fields
.field public mAlphaThreshold:F

.field public mBgAlphaRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mBottomMargin:I

.field public mCornerRadiusRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mDisappearAlphaRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mDisappearRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayAlphaRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mDragThreshold:F

.field public mDuration:I

.field public mSpringDistance:F

.field public mTotalDragDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41400000    # 12.0f

    .line 2
    iput v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDragThreshold:F

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDuration:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070652

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDragThreshold:F

    .line 6
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070650

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisappearRange:Landroid/util/Range;

    .line 7
    new-instance v0, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070651

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisplayRange:Landroid/util/Range;

    .line 9
    new-instance v0, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07064f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mCornerRadiusRange:Landroid/util/Range;

    .line 10
    new-instance v0, Landroid/util/Range;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisappearAlphaRange:Landroid/util/Range;

    .line 11
    new-instance v0, Landroid/util/Range;

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisplayAlphaRange:Landroid/util/Range;

    .line 12
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBgAlphaRange:Landroid/util/Range;

    .line 13
    iget v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mSpringDistance:F

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mAlphaThreshold:F

    return-void
.end method


# virtual methods
.method public calDragLayoutHeight(Landroid/content/Context;I)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;->getMoreItemBottomMargin(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;->getModeItemHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getPopupTopMargin(Landroid/content/Context;)I

    move-result v2

    .line 4
    invoke-static {p2}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getRow4PopupStyle(I)I

    move-result p2

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->isScreenOrientationPortrait()Z

    move-result v3

    const v4, 0x7f070621

    const v5, 0x7f070620

    const/4 v6, 0x1

    if-nez v3, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v3

    const/4 v7, 0x5

    if-ne v3, v7, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 11
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result v3

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v3, v7, :cond_4

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    .line 15
    :goto_1
    iget p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    mul-int/2addr v1, p2

    sub-int/2addr p2, v6

    mul-int/2addr v0, p2

    add-int/2addr v1, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 16
    invoke-static {}, Lcom/android/camera/display/Display;->getDragDistanceFix()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    .line 17
    sget-object p1, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTotalDragDistance "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 18
    :cond_5
    invoke-static {}, Lcom/android/camera/display/Display;->getNavigationBarHeight()I

    move-result p1

    add-int/2addr v1, v0

    mul-int/2addr v1, p2

    add-int/2addr p1, v1

    add-int/2addr p1, v2

    .line 19
    invoke-static {}, Lcom/android/camera/display/Display;->getDragDistanceFix()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    :goto_2
    return-void
.end method

.method public getBgAlphaRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBgAlphaRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBottomMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mBottomMargin:I

    return v0
.end method

.method public getCornerRadiusRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mCornerRadiusRange:Landroid/util/Range;

    return-object v0
.end method

.method public getDisappearAlphaRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisappearAlphaRange:Landroid/util/Range;

    return-object v0
.end method

.method public getDisappearDistance()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisappearRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisappearRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getDisappearRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisappearRange:Landroid/util/Range;

    return-object v0
.end method

.method public getDisplayAlphaRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisplayAlphaRange:Landroid/util/Range;

    return-object v0
.end method

.method public getDisplayDistance()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisplayRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisplayRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getDisplayRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDisplayRange:Landroid/util/Range;

    return-object v0
.end method

.method public getDragThreshold()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDragThreshold:F

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mDuration:I

    return v0
.end method

.method public getMaxDragDistance()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mSpringDistance:F

    iget v1, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getPopupTopMargin(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07062b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method public getPromptAnimConfig()Lmiuix/animation/base/AnimConfig;
    .locals 3

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public getSpringDistance()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mSpringDistance:F

    return v0
.end method

.method public getTotalDragDistance()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->mTotalDragDistance:F

    return v0
.end method
