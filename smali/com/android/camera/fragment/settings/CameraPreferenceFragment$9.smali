.class public Lcom/android/camera/fragment/settings/CameraPreferenceFragment$9;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "CameraPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$9;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$9;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->startFromKeyGuard(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$9;->onDismissSucceeded()V

    :cond_0
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$9;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-static {v0, v0}, Lcom/android/camera/permission/PermissionManager;->requestCameraLocationPermissionsByFragment(Landroidx/fragment/app/Fragment;Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;)Z

    return-void
.end method
