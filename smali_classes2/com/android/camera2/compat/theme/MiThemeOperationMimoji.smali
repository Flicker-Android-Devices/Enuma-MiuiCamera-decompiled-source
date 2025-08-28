.class public Lcom/android/camera2/compat/theme/MiThemeOperationMimoji;
.super Ljava/lang/Object;
.source "MiThemeOperationMimoji.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeOperationMimojiInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconBg(I)I
    .locals 0

    return p1
.end method

.method public getIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public setImageview(Landroid/widget/ImageView;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setTimBreBtnColor(ZLcom/android/camera/ui/ColorImageView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    return-void
.end method

.method public setTintColor(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public setVectorColor(Landroid/widget/ImageView;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/customization/ThemeResource;->setVectorColor(Landroid/widget/ImageView;I)V

    return-void
.end method
