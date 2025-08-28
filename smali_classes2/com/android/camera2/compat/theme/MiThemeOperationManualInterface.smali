.class public interface abstract Lcom/android/camera2/compat/theme/MiThemeOperationManualInterface;
.super Ljava/lang/Object;
.source "MiThemeOperationManualInterface.java"


# virtual methods
.method public getAutoBackgroundResDrawable(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x7f08033b

    return p1

    :cond_0
    const p1, 0x7f0802f4

    return p1

    :cond_1
    const p1, 0x7f080343

    return p1
.end method

.method public getAutoImageView(Landroid/content/Context;)Lcom/android/camera/ui/ActivateImageView;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/ui/ActivateColorImageView;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/ActivateColorImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    return-object v0
.end method

.method public getAutoResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08033a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0802f5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080342

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getComponentManuallyDualLensItems(I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xaf

    if-eq p1, v1, :cond_6

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO000o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0oO0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f080252

    const v4, 0x7f080253

    const/4 v5, -0x1

    const v6, 0x7f1207ed

    const-string v7, "macro"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOOO0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f08025a

    const v4, 0x7f08025b

    const/4 v5, -0x1

    const v6, 0x7f1207f6

    const-string v7, "ultra"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f08025c

    const v10, 0x7f08025d

    const/4 v11, -0x1

    const v12, 0x7f1207f8

    const-string v13, "wide"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo0Oo()Z

    move-result v1

    const/16 v2, 0xb4

    if-eqz v1, :cond_4

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOO()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOo0O()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq p1, v2, :cond_4

    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    if-ltz v1, :cond_4

    .line 10
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080255

    const v5, 0x7f080256

    const/4 v6, -0x1

    const v7, 0x7f1207f1

    const-string v8, "tele"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    if-ltz v1, :cond_4

    .line 12
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080254

    const v5, 0x7f080259

    const/4 v6, -0x1

    const v7, 0x7f1207f3

    const-string v8, "tele"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_4
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOO()Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne p1, v2, :cond_5

    .line 14
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOo0O()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    :cond_5
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080257

    const v3, 0x7f080258

    const/4 v4, -0x1

    const v5, 0x7f1207f2

    const-string v6, "Standalone"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_6
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v8, 0x7f08025c

    const v9, 0x7f08025d

    const/4 v10, -0x1

    const v11, 0x7f1207f8

    const-string v12, "wide"

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOO()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080257

    const v3, 0x7f080258

    const/4 v4, -0x1

    const v5, 0x7f1207f2

    const-string v6, "Standalone"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    return-object v0
.end method

.method public getExtraRecyclerViewAdapter(Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;-><init>(Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)V

    return-object v7
.end method

.method public getIconResDrawable(Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4075183a

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x36

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v6

    goto :goto_1

    :pswitch_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v5

    goto :goto_1

    :cond_2
    const-string v0, "manual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v7

    :goto_1
    if-eqz p1, :cond_9

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    return v7

    :cond_4
    const p1, 0x7f0804c8

    return p1

    :cond_5
    const p1, 0x7f0804b9

    return p1

    :cond_6
    const p1, 0x7f0804be

    return p1

    :cond_7
    const p1, 0x7f0804cd

    return p1

    :cond_8
    const p1, 0x7f0804c3

    return p1

    :cond_9
    const p1, 0x7f08033a

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconShadowResDrawable(Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4075183a

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x36

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v6

    goto :goto_1

    :pswitch_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v5

    goto :goto_1

    :cond_2
    const-string v0, "manual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v7

    :goto_1
    if-eqz p1, :cond_9

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    return v7

    :cond_4
    const p1, 0x7f0804c9

    return p1

    :cond_5
    const p1, 0x7f0804ba

    return p1

    :cond_6
    const p1, 0x7f0804bf

    return p1

    :cond_7
    const p1, 0x7f0804ce

    return p1

    :cond_8
    const p1, 0x7f0804c4

    return p1

    :cond_9
    const p1, 0x7f08033b

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getManuallyAdapter(ILandroid/view/View$OnClickListener;Ljava/util/List;I)Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;I)",
            "Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;-><init>(ILandroid/view/View$OnClickListener;Ljava/util/List;I)V

    return-object v0
.end method

.method public getProRightBackgroundDrawable()I
    .locals 1

    const v0, 0x7f0800ae

    return v0
.end method

.method public getValueSelectedDrawable(Lcom/android/camera/data/data/ComponentData;I)I
    .locals 7

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    .line 2
    instance-of v0, p1, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_0

    return v1

    :cond_0
    int-to-double p1, p1

    const-wide v0, 0x4082c00000000000L    # 600.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    const p1, 0x7f0802fc

    return p1

    :cond_1
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_2

    const p1, 0x7f0802ff

    return p1

    :cond_2
    const p1, 0x7f0802f9

    return p1

    .line 4
    :cond_3
    instance-of p1, p1, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    if-eqz p1, :cond_e

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x4075183a

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x35

    if-eq p1, v0, :cond_5

    const/16 v0, 0x36

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "3"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v4

    goto :goto_1

    :pswitch_1
    const-string p1, "2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v6

    goto :goto_1

    :pswitch_2
    const-string p1, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const-string p1, "6"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v3

    goto :goto_1

    :cond_5
    const-string p1, "5"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v5

    goto :goto_1

    :cond_6
    const-string p1, "manual"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v2

    goto :goto_1

    :cond_7
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_d

    if-eq p1, v6, :cond_c

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_8

    goto :goto_2

    :cond_8
    const p1, 0x7f0804c7

    return p1

    :cond_9
    const p1, 0x7f0804b8

    return p1

    :cond_a
    const p1, 0x7f0804bd

    return p1

    :cond_b
    const p1, 0x7f0804cc

    return p1

    :cond_c
    const p1, 0x7f0804c2

    return p1

    :cond_d
    const p1, 0x7f08033c

    return p1

    :cond_e
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValueSelectedShadowDrawable(Lcom/android/camera/data/data/ComponentData;I)I
    .locals 7

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    .line 2
    instance-of v0, p1, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_0

    return v1

    :cond_0
    int-to-double p1, p1

    const-wide v0, 0x4082c00000000000L    # 600.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    const p1, 0x7f0802fe

    return p1

    :cond_1
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_2

    const p1, 0x7f080300

    return p1

    :cond_2
    const p1, 0x7f0802fb

    return p1

    .line 4
    :cond_3
    instance-of p1, p1, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    if-eqz p1, :cond_e

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x4075183a

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x35

    if-eq p1, v0, :cond_5

    const/16 v0, 0x36

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "3"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v4

    goto :goto_1

    :pswitch_1
    const-string p1, "2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v6

    goto :goto_1

    :pswitch_2
    const-string p1, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const-string p1, "6"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v3

    goto :goto_1

    :cond_5
    const-string p1, "5"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v5

    goto :goto_1

    :cond_6
    const-string p1, "manual"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v2

    goto :goto_1

    :cond_7
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_d

    if-eq p1, v6, :cond_c

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_8

    goto :goto_2

    :cond_8
    const p1, 0x7f0804cb

    return p1

    :cond_9
    const p1, 0x7f0804bc

    return p1

    :cond_a
    const p1, 0x7f0804c1

    return p1

    :cond_b
    const p1, 0x7f0804d0

    return p1

    :cond_c
    const p1, 0x7f0804c6

    return p1

    :cond_d
    const p1, 0x7f08033d

    return p1

    :cond_e
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHistogramLayoutParams(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070322

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07031a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f080977

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
