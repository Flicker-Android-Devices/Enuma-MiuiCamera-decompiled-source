.class public Lcom/android/camera/fragment/bottom/action/Pickers;
.super Ljava/lang/Object;
.source "Pickers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/bottom/action/Pickers$LocationType;
    }
.end annotation


# static fields
.field public static final CAMERA_FACING:I = 0xc1

.field public static final DUAL_UP_DOWN:I = 0xc4

.field public static final HINT:I = 0xc9

.field public static final ID_CARD_MODE:I = 0xc8

.field public static final INVALID:I = 0xc0

.field public static final RECORD_REVERSE:I = 0xc7

.field public static final RECORD_SNAP:I = 0xc6

.field public static final TAG:Ljava/lang/String; = "Pickers"

.field public static final TARGET_SWITCH_CAPTURE:I = 0xc2

.field public static final TARGET_SWITCH_VIDEO:I = 0xc3


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCurrentType:I

.field public mModulePersistentType:I

.field public mNeedBackground:Z

.field public mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mPickerParent:Landroid/view/ViewGroup;

.field public mScaleSize:F

.field public mUpDownAnimFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    const/16 v0, 0xc0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentType:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mModulePersistentType:I

    .line 5
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    .line 7
    iput-object p3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f070780

    const p3, 0x3eb33333    # 0.35f

    .line 8
    invoke-static {p1, p2, p3}, Lcom/android/camera/CameraSettings;->getResourceFloat(Landroid/content/Context;IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mScaleSize:F

    return-void
.end method


# virtual methods
.method public cancelCurrentAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method

.method public currentHasBackground()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentType:I

    return v0
.end method

.method public getLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getModulePersistentType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mModulePersistentType:I

    return v0
.end method

.method public hide()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xc0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    return-void
.end method

.method public loadByType(Ljava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;ZI)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZIZ)V

    return-void
.end method

.method public loadByType(Ljava/util/List;ZIZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;ZIZ)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p3, :cond_0

    if-nez p4, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    move p4, v2

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;

    move-result-object v3

    invoke-interface {v3, p3}, Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;->isNeedBackground(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mNeedBackground:Z

    const v3, 0x7f120038

    const v4, 0x7f06037b

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    move v4, v1

    :goto_1
    move-object v3, v6

    goto/16 :goto_5

    .line 7
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12010f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v9, 0x7f080468

    invoke-interface {v7, v8, v9}, Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    goto :goto_2

    .line 9
    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/MiThemeOperationMimojiInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v9, 0x7f080492

    invoke-interface {v7, v8, v9}, Lcom/android/camera2/compat/theme/MiThemeOperationMimojiInterface;->getIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 11
    :pswitch_3
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v7, 0x7f1200b2

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 12
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const v8, 0x7f08048e

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 13
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {v7, v8}, Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;->setPickersAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 14
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_2
    move v4, v1

    goto/16 :goto_5

    .line 15
    :pswitch_4
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120050

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 16
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mScaleSize:F

    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 17
    iget-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    if-eqz v4, :cond_2

    .line 18
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v9, 0x7f110006

    invoke-interface {v7, v8, v9}, Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_3

    .line 19
    :cond_2
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v9, 0x7f110005

    invoke-interface {v7, v8, v9}, Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 20
    :goto_3
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_2

    :pswitch_5
    if-eqz v0, :cond_3

    .line 21
    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0xc2

    if-ne v4, v7, :cond_3

    move p2, v2

    move-object p1, v6

    .line 22
    :cond_3
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 23
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mScaleSize:F

    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 24
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v7

    .line 25
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v10, 0x7f11004c

    invoke-interface {v8, v9, v10}, Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v8

    .line 26
    invoke-virtual {v7, v8, v2}, Lcom/android/camera/customization/ThemeResource;->getResId(IZ)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 27
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto/16 :goto_2

    :pswitch_6
    if-eqz v0, :cond_4

    .line 28
    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0xc3

    if-ne v4, v7, :cond_4

    move p2, v2

    move-object p1, v6

    .line 29
    :cond_4
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 30
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mScaleSize:F

    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 31
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v7

    .line 32
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v10, 0x7f110052

    invoke-interface {v8, v9, v10}, Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v8

    .line 33
    invoke-virtual {v7, v8, v2}, Lcom/android/camera/customization/ThemeResource;->getResId(IZ)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 34
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto/16 :goto_2

    .line 35
    :pswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f120033

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 36
    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 37
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_5

    const v8, 0x7f120641

    goto :goto_4

    :cond_5
    const v8, 0x7f12063f

    .line 38
    :goto_4
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/MiThemeOperationMimojiInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v9, 0x7f080486

    invoke-interface {v7, v8, v9}, Lcom/android/camera2/compat/theme/MiThemeOperationMimojiInterface;->getIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 40
    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v8, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/MiThemeOperationMimojiInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 42
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v4

    .line 43
    invoke-interface {v7, v8, v4}, Lcom/android/camera2/compat/theme/MiThemeOperationMimojiInterface;->setTintColor(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_2

    :pswitch_8
    move v4, v2

    goto/16 :goto_1

    .line 44
    :goto_5
    iput p3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentType:I

    .line 45
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_6

    .line 46
    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xc9

    if-ne v7, v8, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    .line 47
    :goto_6
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 48
    iget-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mNeedBackground:Z

    if-nez v7, :cond_7

    .line 49
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    const/16 v6, 0xc0

    if-eq p3, v6, :cond_9

    if-eqz v0, :cond_8

    .line 50
    check-cast v0, Ljava/lang/Integer;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, v6, :cond_9

    :cond_8
    iget-boolean p3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mNeedBackground:Z

    if-eq p4, p3, :cond_a

    .line 52
    :cond_9
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    :cond_a
    const/high16 p3, 0x3f000000    # 0.5f

    if-eqz v4, :cond_f

    const/4 p4, 0x0

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    move p3, p4

    .line 53
    :goto_7
    iget-object p4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    if-ne v2, p4, :cond_c

    .line 54
    iget-object p4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-static {p4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 55
    :cond_c
    iget-object p4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 p4, 0x96

    if-eqz p1, :cond_d

    .line 56
    new-instance p2, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p2, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p2

    .line 57
    invoke-virtual {p2, p4}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p2

    .line 58
    invoke-static {p2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    if-eqz p2, :cond_e

    .line 59
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p4}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_8

    .line 63
    :cond_e
    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_8

    :cond_f
    if-eqz v1, :cond_10

    move v5, p3

    :cond_10
    if-eqz p1, :cond_11

    .line 64
    new-instance p2, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p2, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v5}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    move-result-object p2

    invoke-static {p2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    if-eqz p2, :cond_12

    .line 65
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v5}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_8

    .line 66
    :cond_12
    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public needBackground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mNeedBackground:Z

    return v0
.end method

.method public playAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public playSwitchCaptureVideoAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public playUpDownAnimation()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v3, 0x7f110005

    invoke-interface {v1, v2, v3}, Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v3, 0x7f110006

    invoke-interface {v1, v2, v3}, Lcom/android/camera2/compat/theme/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setClickabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method public setModulePersistentType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mModulePersistentType:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    return-void
.end method
