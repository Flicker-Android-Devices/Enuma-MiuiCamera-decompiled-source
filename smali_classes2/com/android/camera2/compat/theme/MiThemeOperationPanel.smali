.class public Lcom/android/camera2/compat/theme/MiThemeOperationPanel;
.super Ljava/lang/Object;
.source "MiThemeOperationPanel.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeOperationPanelInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public LightingOutRectPosition(Landroid/content/Context;Landroid/graphics/Rect;IIZI)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p5, :cond_1

    if-nez p3, :cond_0

    move p1, p4

    .line 1
    :cond_0
    invoke-virtual {p2, p4, p4, p1, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    move p1, p4

    .line 2
    :cond_2
    invoke-virtual {p2, p1, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public MimojiOutRectPosition(Landroid/content/Context;Landroid/graphics/Rect;IIIZI)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p6, :cond_1

    if-nez p3, :cond_0

    add-int/2addr p5, p4

    goto :goto_0

    :cond_0
    move p5, p1

    .line 1
    :goto_0
    invoke-virtual {p2, p4, p1, p5, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    add-int/2addr p5, p4

    goto :goto_1

    :cond_2
    move p5, p1

    .line 2
    :goto_1
    invoke-virtual {p2, p5, p1, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void
.end method

.method public WaterMarkOutRectPosition(Landroid/content/Context;Landroid/graphics/Rect;IIIZI)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p6, :cond_1

    if-nez p3, :cond_0

    move p1, p4

    .line 1
    :cond_0
    invoke-virtual {p2, p4, p5, p1, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    move p1, p4

    .line 2
    :cond_2
    invoke-virtual {p2, p1, p5, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public correctionSelectView(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera/Util;->correctionSelectView(Landroid/view/View;Z)V

    return-void
.end method

.method public getAmbilightLayout()I
    .locals 1

    const v0, 0x7f0d002a

    return v0
.end method

.method public getAmbilightPanelLayout()I
    .locals 1

    const v0, 0x7f0d0053

    return v0
.end method

.method public getBeautyFxMakeupString(I)I
    .locals 0

    return p1
.end method

.method public getBeautyMoPrString(I)I
    .locals 0

    return p1
.end method

.method public getBeautySmTextureString(I)I
    .locals 0

    return p1
.end method

.method public getDownLoadFinishResource()I
    .locals 1

    const v0, 0x7f11004a

    return v0
.end method

.method public getDownLoadImageResource()I
    .locals 1

    const v0, 0x7f08044e

    return v0
.end method

.method public getEffectFilterItemSelectorLayout()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getTintResId(I)I

    move-result v0

    return v0
.end method

.method public getEffectItemAdapter(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)Lcom/android/camera/fragment/EffectItemAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/camera/fragment/EffectItemAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)V

    return-object v0
.end method

.method public getEffectItemPadding(Landroid/content/Context;)Lcom/android/camera/fragment/EffectItemPadding;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/EffectItemPadding;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/EffectItemPadding;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getMakeUpAndFilterPanelMarginBottom(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public getMakeupSingleCheckAdapter(Landroid/content/Context;Ljava/util/List;II)Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;II)",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    return-object v0
.end method

.method public getMimojiAvatarAdapter(Landroid/content/Context;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public getMimojiBgLayout()I
    .locals 1

    const v0, 0x7f0d00a8

    return v0
.end method

.method public getMimojiBgView(Landroid/view/View;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMimojiBottomList()I
    .locals 1

    const v0, 0x7f0d00a0

    return v0
.end method

.method public getMimojiSelectedItemBgColor(I)I
    .locals 0

    return p1
.end method

.method public getMimojiTimbreView(Landroid/view/View;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getModeDrawableRes(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public getMomojiTimbreLayout()I
    .locals 1

    const v0, 0x7f0d00aa

    return v0
.end method

.method public getNormalRoundViewColor()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f06031b

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getPanelAnimate()Lmiuix/animation/base/AnimConfig;
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

.method public getPanelMarginStart(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPanelpadding(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070139

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getVVAndFilmGalleryItemLayout()I
    .locals 1

    const v0, 0x7f0d00cb

    return v0
.end method

.method public getVVAndFilmGalleryItemLayoutId()I
    .locals 1

    const v0, 0x7f0a04cc

    return v0
.end method

.method public getVVGalleryPanelLayout()I
    .locals 1

    const v0, 0x7f0d00ca

    return v0
.end method

.method public getWarterRecyclerviewItemLayout()I
    .locals 1

    const v0, 0x7f0d01a4

    return v0
.end method

.method public setMimojiBgColor(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getResourceId()I

    move-result p3

    if-lez p3, :cond_0

    const p2, 0x7f06037a

    .line 2
    invoke-virtual {p4, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getResourceId()I

    move-result p1

    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800ea

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f080359

    .line 5
    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setMimojiTimbreColor(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getResourceId()I

    move-result p3

    if-lez p3, :cond_0

    const p2, 0x7f06037a

    .line 2
    invoke-virtual {p4, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getResourceId()I

    move-result p1

    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800ea

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f080359

    .line 5
    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
