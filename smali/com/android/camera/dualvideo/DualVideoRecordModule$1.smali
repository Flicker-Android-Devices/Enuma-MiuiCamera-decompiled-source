.class public Lcom/android/camera/dualvideo/DualVideoRecordModule$1;
.super Ljava/lang/Object;
.source "DualVideoRecordModule.java"

# interfaces
.implements Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/DualVideoRecordModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$1;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$1;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    return-void
.end method

.method public doStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$1;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->stopVideoRecording(Z)V

    return-void
.end method
