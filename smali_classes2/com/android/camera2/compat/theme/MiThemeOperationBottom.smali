.class public Lcom/android/camera2/compat/theme/MiThemeOperationBottom;
.super Ljava/lang/Object;
.source "MiThemeOperationBottom.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustBg(ZLandroid/widget/ImageView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public adjustProgress(ILcom/android/camera/ui/CameraSnapView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    return-void
.end method

.method public adjustProgressAndGetDrawable(ILcom/android/camera/ui/CameraSnapView;Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p4
.end method

.method public adjustSnapAndPreViewNext(ZLcom/android/camera/ui/CameraSnapView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    return-void
.end method

.method public varargs alignSnapLeftByDefault(Landroid/content/Context;[Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public varargs alignSnapRightByDefault(Landroid/content/Context;[Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public fitThumbnailLayout(Landroid/content/Context;Landroidx/cardview/widget/CardView;)V
    .locals 0

    return-void
.end method

.method public getBeautyLensIcon(Ljava/lang/String;I)I
    .locals 0

    return p2
.end method

.method public getBottomRes(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public getPickerResId(I)I
    .locals 0

    return p1
.end method

.method public getViewBackgroundColor(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    return p2
.end method

.method public getViewBackgroundIconRes(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    return p2
.end method

.method public handleIntoPattern(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handlePrepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleScaleDown(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleStartRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleStopRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isNeedBackground(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public playPickersAnimation(Lcom/android/camera/fragment/bottom/action/Pickers;)V
    .locals 0

    return-void
.end method

.method public setBeautyIconBg(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setDualVideoCancelView(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method public setDualVideoConfirmIV(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method public setDualVideoRectBtn(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setIVColorFilter(Landroid/widget/ImageView;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/customization/ThemeResource;->setVectorColor(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public setNullBackground(Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method public setPickersAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    return-void
.end method

.method public setTextShadow(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method
