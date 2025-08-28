.class public Lcom/android/camera/ui/GradienterDrawer;
.super Landroid/widget/RelativeLayout;
.source "GradienterDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GradienterDrawer$Direct;
    }
.end annotation


# static fields
.field public static final COLOR_NORMAL:I = -0x1

.field public static final COLOR_SELECTED:I = -0x31ea

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isReferenceLineEnabled:Z

.field public isSquareModule:Z

.field public mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public mDeviceRotation:F

.field public mLineLeftView:Landroid/view/View;

.field public mLineLongColor:I

.field public mLineLongWidth:I

.field public mLineRightView:Landroid/view/View;

.field public mLineShortColor:I

.field public mLineShortView:Landroid/view/View;

.field public mLineShortWidth:I

.field public mParentHeighth:I

.field public mParentWidth:I

.field public mRootView:Landroid/widget/LinearLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/GradienterDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, -0x31ea

    .line 2
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    const v0, 0x6affffff

    .line 3
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongColor:I

    .line 4
    sget v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    const/4 v0, 0x6

    .line 5
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    .line 7
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    .line 9
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GradienterDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, -0x31ea

    .line 22
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    const p2, 0x6affffff

    .line 23
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongColor:I

    .line 24
    sget p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    float-to-int p2, p2

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    const/4 p2, 0x6

    .line 25
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    .line 27
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    .line 29
    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GradienterDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, -0x31ea

    .line 12
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    const p2, 0x6affffff

    .line 13
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongColor:I

    .line 14
    sget p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    float-to-int p2, p2

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    const/4 p2, 0x6

    .line 15
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    .line 17
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    .line 19
    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GradienterDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d019b

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    .line 5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04a8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04a6

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04a7

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    return-void
.end method

.method private invalidateView()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    :goto_0
    return-void
.end method

.method private resetMargin()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x40400000    # 3.0f

    const v5, 0x3fe38e38

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x5

    if-ne v2, v8, :cond_1

    .line 3
    iget v6, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v6, v6

    iget v9, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    int-to-float v9, v9

    div-float/2addr v9, v5

    sub-float/2addr v6, v9

    div-float/2addr v6, v7

    .line 4
    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSection()Z

    move-result v9

    const v10, 0x3f41cac1    # 0.757f

    if-eqz v9, :cond_0

    const v9, 0x3d99999a    # 0.075f

    div-float/2addr v6, v3

    goto :goto_0

    :cond_0
    const v9, 0x3df8d4fe    # 0.1215f

    div-float/2addr v6, v4

    :goto_0
    mul-float/2addr v6, v10

    move/from16 v16, v9

    move v9, v6

    move/from16 v6, v16

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    const/4 v10, 0x1

    if-ne v2, v10, :cond_3

    .line 5
    iget v9, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v9, v9

    iget v11, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    int-to-float v11, v11

    div-float/2addr v11, v5

    sub-float/2addr v9, v11

    div-float/2addr v9, v7

    .line 6
    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSection()Z

    move-result v5

    if-eqz v5, :cond_2

    div-float/2addr v9, v3

    goto :goto_2

    :cond_2
    div-float/2addr v9, v4

    .line 7
    :cond_3
    :goto_2
    iget-boolean v3, v0, Lcom/android/camera/ui/GradienterDrawer;->isReferenceLineEnabled:Z

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eqz v3, :cond_14

    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSpiral()Z

    move-result v3

    if-nez v3, :cond_14

    new-array v3, v10, [Landroid/widget/LinearLayout$LayoutParams;

    aput-object v1, v3, v5

    .line 8
    invoke-direct {v0, v3}, Lcom/android/camera/ui/GradienterDrawer;->resetParams([Landroid/widget/LinearLayout$LayoutParams;)V

    .line 9
    iget-object v3, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    const/16 v15, 0x8

    invoke-direct {v0, v3, v15}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    .line 10
    iget-object v3, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    invoke-direct {v0, v3, v15}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    .line 11
    sget-object v3, Lcom/android/camera/ui/GradienterDrawer$1;->$SwitchMap$com$android$camera$ui$GradienterDrawer$Direct:[I

    iget-object v15, v0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v3, v3, v15

    const v15, 0x3ec39581    # 0.382f

    if-eq v3, v10, :cond_10

    if-eq v3, v14, :cond_c

    if-eq v3, v13, :cond_8

    if-eq v3, v12, :cond_4

    goto/16 :goto_b

    .line 12
    :cond_4
    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSection()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 13
    iget v3, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    .line 14
    iget-boolean v4, v0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v4, :cond_5

    if-eq v2, v12, :cond_5

    .line 15
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    int-to-float v2, v2

    mul-float/2addr v2, v15

    goto :goto_3

    .line 16
    :cond_5
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v4, v2

    mul-float/2addr v4, v15

    iget v5, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v5, v2

    div-int/2addr v5, v14

    int-to-float v2, v5

    add-float/2addr v2, v4

    goto :goto_3

    .line 17
    :cond_6
    iget v3, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/2addr v3, v13

    int-to-float v3, v3

    .line 18
    iget-boolean v4, v0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v4, :cond_7

    if-eq v2, v12, :cond_7

    .line 19
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v2, v13

    int-to-float v2, v2

    goto :goto_3

    .line 20
    :cond_7
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v4, v2, 0x3

    iget v5, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v5, v2

    div-int/2addr v5, v14

    add-int/2addr v4, v5

    int-to-float v2, v4

    .line 21
    :goto_3
    iget-object v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 22
    iget-object v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 23
    iget v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 24
    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 25
    div-int/2addr v4, v14

    int-to-float v4, v4

    sub-float v4, v3, v4

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    add-float/2addr v4, v9

    float-to-int v3, v4

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    float-to-int v2, v2

    .line 26
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 27
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_b

    .line 28
    :cond_8
    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSection()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 29
    iget v3, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    .line 30
    iget-boolean v4, v0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v4, :cond_9

    if-eq v2, v12, :cond_9

    .line 31
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    int-to-float v2, v2

    mul-float/2addr v2, v15

    goto :goto_4

    .line 32
    :cond_9
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v4, v2

    mul-float/2addr v4, v15

    iget v5, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v5, v2

    div-int/2addr v5, v14

    int-to-float v2, v5

    add-float/2addr v2, v4

    goto :goto_4

    .line 33
    :cond_a
    iget v3, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/2addr v3, v13

    int-to-float v3, v3

    .line 34
    iget-boolean v4, v0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v4, :cond_b

    if-eq v2, v12, :cond_b

    .line 35
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v2, v13

    int-to-float v2, v2

    goto :goto_4

    .line 36
    :cond_b
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v4, v2, 0x3

    iget v5, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v5, v2

    div-int/2addr v5, v14

    add-int/2addr v4, v5

    int-to-float v2, v4

    .line 37
    :goto_4
    iget-object v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 38
    iget-object v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 39
    iget v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 40
    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 41
    div-int/2addr v4, v14

    int-to-float v4, v4

    sub-float v4, v3, v4

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v4, v3

    add-float/2addr v4, v9

    float-to-int v3, v4

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    float-to-int v2, v2

    .line 42
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 43
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_b

    .line 44
    :cond_c
    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSection()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 45
    iget-boolean v3, v0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v3, :cond_d

    if-eq v2, v12, :cond_d

    .line 46
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    int-to-float v2, v2

    mul-float/2addr v2, v15

    goto :goto_5

    .line 47
    :cond_d
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v3, v2

    mul-float/2addr v3, v15

    iget v8, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v8, v2

    div-int/2addr v8, v14

    int-to-float v2, v8

    add-float/2addr v2, v3

    .line 48
    :goto_5
    iget v3, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    goto :goto_7

    .line 49
    :cond_e
    iget-boolean v3, v0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v3, :cond_f

    if-eq v2, v12, :cond_f

    .line 50
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v2, v13

    int-to-float v2, v2

    goto :goto_6

    .line 51
    :cond_f
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v3, v2, 0x3

    iget v8, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v8, v2

    div-int/2addr v8, v14

    add-int/2addr v3, v8

    int-to-float v2, v3

    .line 52
    :goto_6
    iget v3, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/2addr v3, v13

    int-to-float v3, v3

    .line 53
    :goto_7
    iget-object v8, v0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 54
    iget-object v5, v0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 55
    iget v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 56
    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    float-to-int v2, v2

    .line 57
    div-int/2addr v4, v14

    sub-int/2addr v2, v4

    add-int/2addr v2, v10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    mul-float/2addr v6, v3

    add-float/2addr v3, v6

    add-float v2, v3, v9

    float-to-int v2, v2

    .line 58
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-float/2addr v3, v7

    add-float/2addr v3, v9

    float-to-int v2, v3

    .line 59
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_b

    .line 60
    :cond_10
    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSection()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 61
    iget-boolean v3, v0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v3, :cond_11

    if-eq v2, v12, :cond_11

    .line 62
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    int-to-float v2, v2

    mul-float/2addr v2, v15

    goto :goto_8

    .line 63
    :cond_11
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v3, v2

    mul-float/2addr v3, v15

    iget v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v4, v2

    div-int/2addr v4, v14

    int-to-float v2, v4

    add-float/2addr v2, v3

    .line 64
    :goto_8
    iget v3, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    goto :goto_a

    .line 65
    :cond_12
    iget-boolean v3, v0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v3, :cond_13

    if-eq v2, v12, :cond_13

    .line 66
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v2, v13

    int-to-float v2, v2

    goto :goto_9

    .line 67
    :cond_13
    iget v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v3, v2, 0x3

    iget v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v4, v2

    div-int/2addr v4, v14

    add-int/2addr v3, v4

    int-to-float v2, v3

    .line 68
    :goto_9
    iget v3, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/2addr v3, v13

    int-to-float v3, v3

    .line 69
    :goto_a
    iget-object v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    iget-object v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 71
    iget v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 72
    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 73
    div-int/2addr v4, v14

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    mul-float/2addr v6, v3

    add-float/2addr v3, v6

    add-float/2addr v3, v9

    float-to-int v2, v3

    .line 74
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 75
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 76
    :goto_b
    iget-object v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    .line 77
    :cond_14
    iget-boolean v2, v0, Lcom/android/camera/ui/GradienterDrawer;->isReferenceLineEnabled:Z

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSpiral()Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    iget-boolean v2, v0, Lcom/android/camera/ui/GradienterDrawer;->isReferenceLineEnabled:Z

    if-nez v2, :cond_19

    .line 78
    :cond_16
    iget-object v2, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    iget-object v3, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    new-array v6, v13, [Landroid/widget/LinearLayout$LayoutParams;

    aput-object v1, v6, v5

    aput-object v2, v6, v10

    aput-object v3, v6, v14

    .line 80
    invoke-direct {v0, v6}, Lcom/android/camera/ui/GradienterDrawer;->resetParams([Landroid/widget/LinearLayout$LayoutParams;)V

    .line 81
    iget-object v6, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    invoke-direct {v0, v6, v12}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    .line 82
    iget-object v6, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    invoke-direct {v0, v6, v12}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    .line 83
    sget-object v6, Lcom/android/camera/ui/GradienterDrawer$1;->$SwitchMap$com$android$camera$ui$GradienterDrawer$Direct:[I

    iget-object v7, v0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v10, :cond_18

    if-eq v6, v14, :cond_18

    if-eq v6, v13, :cond_17

    if-eq v6, v12, :cond_17

    goto :goto_c

    .line 84
    :cond_17
    iget v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/2addr v4, v14

    int-to-float v4, v4

    .line 85
    iget-object v5, v0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    iget-object v5, v0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 87
    iget v5, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 88
    iget v6, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 89
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 90
    iget v7, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v8, v7, 0x3

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 91
    iget v8, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/lit8 v9, v7, 0x3

    sub-int v9, v8, v9

    div-int/2addr v9, v14

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 92
    div-int/2addr v7, v13

    sub-int/2addr v8, v7

    div-int/2addr v8, v14

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    float-to-int v4, v4

    .line 93
    div-int/2addr v5, v14

    sub-int v5, v4, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 94
    div-int/lit8 v5, v6, 0x2

    sub-int v5, v4, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 95
    div-int/2addr v6, v14

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_c

    .line 96
    :cond_18
    iget v6, v0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v6, v14

    int-to-float v6, v6

    .line 97
    iget-object v7, v0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    iget-object v5, v0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 99
    iget v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 100
    iget v5, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 101
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 102
    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 103
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 104
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    float-to-int v6, v6

    .line 105
    div-int/2addr v4, v14

    sub-int v4, v6, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 106
    div-int/lit8 v4, v5, 0x2

    sub-int v4, v6, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 107
    div-int/2addr v5, v14

    sub-int/2addr v6, v5

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 108
    :goto_c
    iget-object v4, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v1, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v1, v0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    :goto_d
    return-void
.end method

.method private varargs resetParams([Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 2
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 4
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setViewVisible(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateView()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getDeviceRotation()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x43070000    # 135.0f

    if-lez v1, :cond_0

    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/high16 v2, 0x42b40000    # 90.0f

    :goto_0
    sub-float/2addr v0, v2

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    const/high16 v2, 0x43610000    # 225.0f

    if-ltz v1, :cond_1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    .line 4
    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    const v1, 0x439d8000    # 315.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 6
    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/high16 v2, 0x43870000    # 270.0f

    goto :goto_0

    .line 7
    :cond_2
    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 8
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    const/high16 v0, -0x3f600000    # -5.0f

    .line 9
    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    .line 10
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    const/high16 v2, 0x43b40000    # 360.0f

    goto :goto_0

    .line 11
    :cond_4
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-gtz v2, :cond_5

    move v0, v3

    .line 12
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    .line 13
    iget-object v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-eq v1, v2, :cond_6

    .line 14
    iget-object v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-direct {p0, v2, v4}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    .line 15
    iput-object v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 16
    invoke-direct {p0}, Lcom/android/camera/ui/GradienterDrawer;->resetMargin()V

    :cond_6
    cmpl-float v1, v0, v3

    if-nez v1, :cond_7

    .line 17
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GradienterDrawer;->setLineShortColor(I)V

    goto :goto_2

    :cond_7
    const/4 v1, -0x1

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GradienterDrawer;->setLineShortColor(I)V

    .line 19
    :goto_2
    iget-object v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 20
    sget-object v1, Lcom/android/camera/ui/GradienterDrawer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateView  rotationOffset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ";  mDeviceRotation :"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-direct {p0}, Lcom/android/camera/ui/GradienterDrawer;->invalidateView()V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/GradienterDrawer;->updateView()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    :cond_0
    return-void
.end method

.method public setConfigInfo(IIZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    .line 2
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    .line 3
    iput-boolean p3, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    .line 4
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/GradienterDrawer;->updateView()V

    return-void
.end method

.method public setLineShortColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setReferenceLineEnabled(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/GradienterDrawer;->isReferenceLineEnabled:Z

    return-void
.end method

.method public setlineWidth(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    .line 2
    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    .line 3
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    return-void
.end method
