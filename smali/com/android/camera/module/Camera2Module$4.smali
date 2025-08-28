.class public Lcom/android/camera/module/Camera2Module$4;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lcom/android/camera/MutexModeManager$MutexCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Camera2Module;->getMutexCallback()Lcom/android/camera/MutexModeManager$MutexCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterMutexMode(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "enterMutexMode error, mCamera2Device is null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setSuperResolution(Z)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OoO0()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$1500(Lcom/android/camera/module/Camera2Module;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    goto :goto_0

    :cond_3
    move p1, v0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v1}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 p1, p1, 0x2

    :cond_4
    if-ne v0, p1, :cond_5

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isMultipleRawHdrSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    or-int/lit8 p1, p1, 0x8

    .line 8
    :cond_5
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterMutexMode: hdrType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    new-instance v1, Lcom/android/camera2/Camera2Proxy$HDRStatus;

    invoke-direct {v1, p1}, Lcom/android/camera2/Camera2Proxy$HDRStatus;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setHDR(Lcom/android/camera2/Camera2Proxy$HDRStatus;)V

    .line 11
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMfnrSatEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$1700(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method

.method public exitMutexMode(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "exitMutexMode error, mCamera2Device is null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setSuperResolution(Z)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 4
    new-instance p1, Lcom/android/camera2/Camera2Proxy$HDRStatus;

    invoke-direct {p1, v2}, Lcom/android/camera2/Camera2Proxy$HDRStatus;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setHDR(Lcom/android/camera2/Camera2Proxy$HDRStatus;)V

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p1}, Lcom/android/camera/module/Camera2Module;->updateSuperResolution()V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMfnrSatEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$4;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$1700(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method
