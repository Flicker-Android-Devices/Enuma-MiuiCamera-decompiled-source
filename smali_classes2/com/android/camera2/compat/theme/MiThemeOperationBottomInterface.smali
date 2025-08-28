.class public interface abstract Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;
.super Ljava/lang/Object;
.source "MiThemeOperationBottomInterface.java"


# virtual methods
.method public abstract adjustBg(ZLandroid/widget/ImageView;)Z
.end method

.method public abstract adjustProgress(ILcom/android/camera/ui/CameraSnapView;Lcom/airbnb/lottie/LottieAnimationView;)V
.end method

.method public abstract adjustProgressAndGetDrawable(ILcom/android/camera/ui/CameraSnapView;Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract adjustSnapAndPreViewNext(ZLcom/android/camera/ui/CameraSnapView;Landroid/widget/ImageView;)V
.end method

.method public varargs abstract alignSnapLeftByDefault(Landroid/content/Context;[Landroid/view/View;)V
.end method

.method public varargs abstract alignSnapRightByDefault(Landroid/content/Context;[Landroid/view/View;)V
.end method

.method public abstract fitThumbnailLayout(Landroid/content/Context;Landroidx/cardview/widget/CardView;)V
.end method

.method public abstract getBeautyLensIcon(Ljava/lang/String;I)I
.end method

.method public abstract getBottomRes(Landroid/content/Context;I)I
.end method

.method public abstract getPickerResId(I)I
.end method

.method public abstract getViewBackgroundColor(ZII)I
.end method

.method public abstract getViewBackgroundIconRes(ZII)I
.end method

.method public abstract handleIntoPattern(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Z
.end method

.method public abstract handlePrepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Z
.end method

.method public abstract handleScaleDown(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Z
.end method

.method public abstract handleStartRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Z
.end method

.method public abstract handleStopRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Z
.end method

.method public abstract isNeedBackground(I)Z
.end method

.method public abstract playPickersAnimation(Lcom/android/camera/fragment/bottom/action/Pickers;)V
.end method

.method public abstract setBeautyIconBg(Landroid/view/View;)V
.end method

.method public abstract setDualVideoCancelView(Landroid/content/Context;Landroid/widget/ImageView;)V
.end method

.method public abstract setDualVideoConfirmIV(Landroid/content/Context;Landroid/widget/ImageView;)V
.end method

.method public abstract setDualVideoRectBtn(Landroid/graphics/Rect;)V
.end method

.method public abstract setIVColorFilter(Landroid/widget/ImageView;I)V
.end method

.method public abstract setNullBackground(Landroid/widget/ImageView;)V
.end method

.method public abstract setPickersAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V
.end method

.method public abstract setTextShadow(Landroid/widget/TextView;)V
.end method
