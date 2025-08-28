.class public Lcom/android/camera2/MiCamera2MIVIRepeating$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2MIVIRepeating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2MIVIRepeating;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2MIVIRepeating;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MIVIRepeating"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportP2done(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->isMultiSnapStopRequest()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$300(Lcom/android/camera2/MiCamera2MIVIRepeating;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$202(Lcom/android/camera2/MiCamera2MIVIRepeating;I)I

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureCompleted: latestSequenceId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$200(Lcom/android/camera2/MiCamera2MIVIRepeating;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2MIVIRepeating;->startSessionCapture()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureFailed: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " frameNumber="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MIVIRepeating"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-static {p1, p2, p3}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$400(Lcom/android/camera2/MiCamera2MIVIRepeating;ZI)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureProgressed: frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MIVIRepeating"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportP2done(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p3}, Lcom/android/camera2/CaptureResultParser;->isP2doneReady(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->isMultiSnapStopRequest()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$300(Lcom/android/camera2/MiCamera2MIVIRepeating;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$202(Lcom/android/camera2/MiCamera2MIVIRepeating;I)I

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureProgressed:  latestSequenceId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$200(Lcom/android/camera2/MiCamera2MIVIRepeating;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2MIVIRepeating;->startSessionCapture()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceAborted: sequenceId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MIVIRepeating"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$400(Lcom/android/camera2/MiCamera2MIVIRepeating;ZI)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceCompleted: sequenceId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " latestSequenceId= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    .line 2
    invoke-static {v0}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$200(Lcom/android/camera2/MiCamera2MIVIRepeating;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frameNumber="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MIVIRepeating"

    .line 3
    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo00oO()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    .line 5
    invoke-static {p1}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$200(Lcom/android/camera2/MiCamera2MIVIRepeating;)I

    move-result p1

    if-ne p1, p2, :cond_1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$400(Lcom/android/camera2/MiCamera2MIVIRepeating;ZI)V

    :cond_1
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", frameNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "MIVIRepeating"

    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 4
    new-instance v13, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 5
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v13

    move-wide/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    .line 6
    new-instance v1, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 7
    new-instance v2, Lcom/android/camera2/QuickViewParam;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    .line 8
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v19}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-virtual {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    iget v2, v2, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object v1

    .line 11
    invoke-interface {v12, v13, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 12
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->isAbandoned()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 13
    invoke-virtual {v5, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v5, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 15
    invoke-virtual {v5, v9, v10}, Lcom/xiaomi/camera/core/ParallelTaskData;->setFrameNumber(J)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: path > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|timestamp > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x3

    invoke-static {v12, v11, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIRepeating$1;->this$0:Lcom/android/camera2/MiCamera2MIVIRepeating;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2MIVIRepeating;->access$000(Lcom/android/camera2/MiCamera2MIVIRepeating;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/android/camera2/MiCamera2MIVIRepeating$1$1;

    invoke-direct {v6, v0, v5}, Lcom/android/camera2/MiCamera2MIVIRepeating$1$1;-><init>(Lcom/android/camera2/MiCamera2MIVIRepeating$1;Lcom/xiaomi/camera/core/ParallelTaskData;)V

    move-wide/from16 v2, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/camera/MIVICaptureManager;->addAll(JLjava/lang/String;Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;)V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: add timestamp > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v11, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "onCaptureStarted: null task data or parallelTaskData is abandoned"

    .line 20
    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "onCaptureStarted: null picture callback"

    .line 21
    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
