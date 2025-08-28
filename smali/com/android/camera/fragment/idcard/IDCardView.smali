.class public Lcom/android/camera/fragment/idcard/IDCardView;
.super Landroid/view/View;
.source "IDCardView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCornerBitmapHeight:F

.field public mCornerBitmapWidth:F

.field public mHint:Ljava/lang/String;

.field public mIDCardRectF:Landroid/graphics/RectF;

.field public mImagePaint:Landroid/graphics/Paint;

.field public mLayerBottomRectF:Landroid/graphics/RectF;

.field public mLayerLeftRectF:Landroid/graphics/RectF;

.field public mLayerPaint:Landroid/graphics/Paint;

.field public mLayerRightRectF:Landroid/graphics/RectF;

.field public mLayerTopRectF:Landroid/graphics/RectF;

.field public mLeftBottomCorner:Landroid/graphics/Bitmap;

.field public mLeftTopCorner:Landroid/graphics/Bitmap;

.field public mRightBottomCorner:Landroid/graphics/Bitmap;

.field public mRightTopCorner:Landroid/graphics/Bitmap;

.field public mSignBitmap:Landroid/graphics/Bitmap;

.field public mSignRectF:Landroid/graphics/RectF;

.field public mTextBasePath:Landroid/graphics/Path;

.field public mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/idcard/IDCardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/idcard/IDCardView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/idcard/IDCardView;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method private decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object p2, Lcom/android/camera/fragment/idcard/IDCardView;->TAG:Ljava/lang/String;

    const-string v0, "decodeResourceCatchOOM"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static getIDCardViewScale()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fb851ec    # 1.44f

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3f50e560    # 0.816f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerPaint:Landroid/graphics/Paint;

    const v3, 0x7f0600af

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f070349

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mImagePaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/android/camera/fragment/idcard/IDCardView;->getIDCardViewScale()F

    move-result v1

    const v2, 0x7f070346

    .line 13
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v2, v1

    const v3, 0x7f070345

    .line 14
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float/2addr v3, v1

    .line 15
    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    div-float/2addr v6, v5

    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 17
    new-instance v7, Landroid/graphics/RectF;

    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v9, v9, v8, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerTopRectF:Landroid/graphics/RectF;

    .line 18
    new-instance v7, Landroid/graphics/RectF;

    add-float/2addr v3, v6

    invoke-direct {v7, v9, v6, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerLeftRectF:Landroid/graphics/RectF;

    .line 19
    new-instance v7, Landroid/graphics/RectF;

    add-float/2addr v2, v4

    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    invoke-direct {v7, v2, v6, v8, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerRightRectF:Landroid/graphics/RectF;

    .line 20
    new-instance v7, Landroid/graphics/RectF;

    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    invoke-direct {v7, v9, v3, v8, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerBottomRectF:Landroid/graphics/RectF;

    .line 21
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    .line 22
    iput v4, v7, Landroid/graphics/RectF;->left:F

    .line 23
    iput v6, v7, Landroid/graphics/RectF;->top:F

    .line 24
    iput v2, v7, Landroid/graphics/RectF;->right:F

    .line 25
    iput v3, v7, Landroid/graphics/RectF;->bottom:F

    const v2, 0x7f0805c2

    .line 26
    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLeftTopCorner:Landroid/graphics/Bitmap;

    const v2, 0x7f0805c3

    .line 27
    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRightTopCorner:Landroid/graphics/Bitmap;

    const v2, 0x7f0805c4

    .line 28
    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLeftBottomCorner:Landroid/graphics/Bitmap;

    const v2, 0x7f0805c5

    .line 29
    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRightBottomCorner:Landroid/graphics/Bitmap;

    .line 30
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLeftTopCorner:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mCornerBitmapWidth:F

    .line 31
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLeftTopCorner:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mCornerBitmapHeight:F

    const v2, 0x7f0805c9

    .line 32
    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const v3, 0x7f0805c7

    .line 33
    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const v4, 0x7f120443

    .line 34
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f120442

    .line 35
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07033e

    .line 36
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const v8, 0x7f07033f

    .line 37
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const v9, 0x7f07033a

    .line 38
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const v10, 0x7f07033b

    .line 39
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    if-eqz p2, :cond_0

    const p2, 0x7f070341

    .line 40
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    mul-float/2addr p2, v1

    const v3, 0x7f070340

    .line 41
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float/2addr v3, v1

    .line 42
    iget-object v6, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v9, v6, Landroid/graphics/RectF;->left:F

    mul-float/2addr v7, v1

    add-float/2addr v9, v7

    .line 43
    iget v6, v6, Landroid/graphics/RectF;->top:F

    mul-float/2addr v8, v1

    add-float/2addr v6, v8

    add-float/2addr p2, v9

    add-float/2addr v3, v6

    .line 44
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v9, v6, p2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignRectF:Landroid/graphics/RectF;

    .line 45
    iput-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const p2, 0x7f07033d

    .line 47
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    mul-float/2addr p2, v1

    const v2, 0x7f07033c

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v2, v1

    .line 49
    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v7, v4, Landroid/graphics/RectF;->left:F

    mul-float/2addr v9, v1

    add-float/2addr v7, v9

    .line 50
    iget v4, v4, Landroid/graphics/RectF;->top:F

    mul-float/2addr v10, v1

    add-float/2addr v4, v10

    add-float/2addr p2, v7

    add-float/2addr v2, v4

    .line 51
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v7, v4, p2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignRectF:Landroid/graphics/RectF;

    .line 52
    iput-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignBitmap:Landroid/graphics/Bitmap;

    .line 53
    iput-object v6, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    .line 54
    :goto_0
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextBasePath:Landroid/graphics/Path;

    .line 55
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 57
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f070347

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    :goto_1
    add-float/2addr v0, v1

    goto :goto_2

    .line 59
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f070348

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 61
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 62
    :goto_2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr v2, p2

    int-to-float p2, v2

    div-float/2addr p2, v5

    add-float/2addr v1, p2

    .line 63
    iget-object p2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextBasePath:Landroid/graphics/Path;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 64
    iget-object p2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextBasePath:Landroid/graphics/Path;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerTopRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerLeftRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerRightRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerBottomRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextBasePath:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLeftTopCorner:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRightTopCorner:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mCornerBitmapWidth:F

    sub-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mLeftBottomCorner:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mCornerBitmapHeight:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRightBottomCorner:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mCornerBitmapWidth:F

    sub-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mCornerBitmapHeight:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 17
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method
