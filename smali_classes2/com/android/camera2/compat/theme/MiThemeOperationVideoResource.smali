.class public Lcom/android/camera2/compat/theme/MiThemeOperationVideoResource;
.super Ljava/lang/Object;
.source "MiThemeOperationVideoResource.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeOperationVideoResourceInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeDrawableRes(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public getModeMP4Res(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp4"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVVFeatureLoadingImageColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    return v0
.end method

.method public getVVWorkspaceAdapter(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;)Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/vv/VVWorkspaceItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;",
            ")",
            "Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;)V

    return-object v6
.end method
