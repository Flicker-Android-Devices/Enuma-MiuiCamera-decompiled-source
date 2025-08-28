.class public Lcom/android/camera/features/mode/idcard/IdCardModule;
.super Lcom/android/camera/module/Camera2Module;
.source "IdCardModule.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IdCardModule"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    return-void
.end method

.method public static synthetic OooOOOO(Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setSkipDrawFace(Z)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setPinFace(Z)V

    return-void
.end method


# virtual methods
.method public generateFileTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDocumentMode2On(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/storage/Storage;->createHideFile()Z

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->blockSnapClickUntilSaveFinish(Z)V

    const-string v0, "DOCUMENT_PICTURE"

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->createHideFile()Z

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->getCurrentIDCardPictureName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID_CARD_PICTURE_2"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/Camera2Module;->blockSnapClickUntilSaveFinish(Z)V

    return-object v0
.end method

.method public getCurrentIDCardPictureName()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe9

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$IDCardModeProtocol;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IDCardModeProtocol;->getCurrentPictureName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureFormatSuitableForShot(II)I
    .locals 0

    const/16 p1, 0x100

    return p1
.end method

.method public isInQCFAMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isInQCFAMode()Z

    move-result v0

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZslPreferred()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0o0O()Z

    move-result v0

    return v0
.end method

.method public onLongPress(FF)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 0

    return-void
.end method

.method public prepareLLSInCaptureMode()V
    .locals 0

    return-void
.end method

.method public trackModeCustomInfo(Ljava/util/Map;ZLcom/android/camera/fragment/beauty/BeautyValues;IZJ)V
    .locals 6

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mIsShowLyingDirectHintStatus:I

    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLyingDirectPictureTaken(Ljava/util/Map;I)V

    .line 3
    invoke-virtual {p0, p1, p4, p2, p5}, Lcom/android/camera/module/Camera2Module;->trackCaptureModuleInfo(Ljava/util/Map;IZZ)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v2

    move-object v0, p0

    move v1, p4

    move-object v3, p3

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/Camera2Module;->trackBeautyInfo(IZLcom/android/camera/fragment/beauty/BeautyValues;J)V

    return-void
.end method

.method public updateASD()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setASDEnable(Z)V

    return-void
.end method

.method public updateEnablePreviewThumbnail(Z)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->setPreviewThumbnail(Z)V

    return-void
.end method

.method public updateFace()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0oO/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0oO/OooO00o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->stopFaceDetection(Z)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mFaceDetectionEnabled:Z

    :cond_0
    return-void
.end method
