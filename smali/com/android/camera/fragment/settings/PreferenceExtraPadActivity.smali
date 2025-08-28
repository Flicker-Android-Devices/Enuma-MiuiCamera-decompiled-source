.class public Lcom/android/camera/fragment/settings/PreferenceExtraPadActivity;
.super Lcom/android/camera/fragment/settings/PreferenceExtraActivity;
.source "PreferenceExtraPadActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/PreferenceExtraActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->fixSmallTitle()V

    return-void
.end method
