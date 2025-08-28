.class public Lcom/android/camera/features/mode/capture/CaptureModule;
.super Lcom/android/camera/module/Camera2Module;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CaptureModule"


# instance fields
.field public mFaceAnim:Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;

.field public final mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

.field public final mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    .line 2
    new-instance v0, Lcom/xiaomi/camera/liveshot/LiveShotManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/liveshot/LiveShotManager;-><init>(Lcom/android/camera/module/Module;)V

    iput-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    .line 3
    new-instance v0, Lcom/android/camera/module/image/LiveMediaManager;

    invoke-direct {v0, p0}, Lcom/android/camera/module/image/LiveMediaManager;-><init>(Lcom/android/camera/module/Module;)V

    iput-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    return-void
.end method

.method public static synthetic OooO0O0(ZZLcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p2

    move v2, p0

    move v3, p1

    .line 4
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->updateFaceView(ZZZZI)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mode/capture/CaptureModule;)Lcom/android/camera/fragment/beauty/BeautyValues;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/features/mode/capture/CaptureModule;Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;)Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mFaceAnim:Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/features/mode/capture/CaptureModule;)Lcom/android/camera/fragment/beauty/BeautyValues;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-object p0
.end method

.method private createFaceBeautyAnimatorManager()V
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isFaceBeautyAnimatorPlayed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;-><init>(Lcom/android/camera/features/mode/capture/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mFaceAnim:Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;

    :cond_0
    return-void
.end method

.method private updateSessionParams()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityPreferred(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isHighPerformanceSessionKeySupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getSessionConfigs()Lcom/android/camera2/CaptureSessionConfigurations;

    move-result-object v1

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_HDR_HIGH_PERFORMANCE_MODE:Lcom/android/camera2/vendortag/VendorTag;

    xor-int/lit8 v3, v0, 0x1

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 9
    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set CONTROL_HDR_HIGH_PERFORMANCE_MODE to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(ZLcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraDisplayOrientation()I

    move-result v6

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v1, p2

    move v4, p1

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->updateFaceView(ZZZZI)V

    return-void
.end method

.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    .line 2
    new-instance v0, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;

    iget-object v1, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    invoke-direct {v0, v1}, Lcom/android/camera/module/interceptor/camera/LivePhotoResultMultipleASD;-><init>(Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    return-void
.end method

.method public varargs consumePreference([I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->consumePreference([I)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    const/16 v3, 0x31

    if-eq v2, v3, :cond_1

    const v3, 0xcafe

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mode/capture/CaptureModule;->updateSessionParams()V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    invoke-virtual {v2}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->updateLiveShot()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getLiveMedia()Lcom/android/camera/module/image/LiveMediaManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    return-object v0
.end method

.method public getLiveShotManager()Lcom/xiaomi/camera/liveshot/LiveShotManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    return-object v0
.end method

.method public getMixedQuickShotSupportOfBackCamera()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isIn3OrMoreSatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x9005

    iget v2, p0, Lcom/android/camera/module/Camera2Module;->mOperatingMode:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSuperNight()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMixedQuickShotSupportSatMFNR(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getMixedQuickShotSupportOfFrontCamera()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMixedQuickShotSupportFrontMFNR(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->isLivePhotoStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MV"

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawCallbackType(I)I
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    const/16 v1, 0x10

    if-nez p1, :cond_4

    .line 3
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oO0()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0ooOO()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00000()I

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->mapRawSuperNightImplTypeToCallbackType(I)I

    move-result p1

    const/16 v2, 0x8

    if-ne v2, p1, :cond_1

    .line 8
    sget-object p1, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string v2, "change raw callback to se"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x20

    :cond_1
    if-ne v1, p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isMiviSatSuperNightSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    sget-object p1, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string v1, "mivi raw super night is not enabled in capture mode"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v0, p1

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/features/mode/capture/CaptureModule;->isMultipleRawHdrSupported()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OoOO()Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_0
    move v0, v1

    :cond_5
    :goto_1
    return v0
.end method

.method public handleUpdateFaceView(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mFaceAnim:Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isFaceBeautyAnimatorPlayed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mFaceDetectionStarted:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFaceBeautyMode()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    const/4 p1, 0x1

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->getFocusMode()I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 5
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0O0/OooOO0O;

    invoke-direct {p2, p0, v0}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0O0/OooOO0O;-><init>(Lcom/android/camera/features/mode/capture/CaptureModule;Z)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0O0/OooOO0;

    invoke-direct {v1, p2, v0}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO/OooO0O0/OooOO0;-><init>(ZZ)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public initZoomMapControllerIfNeeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo0Oo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSatPipSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 6
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 7
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 8
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getZoomMapSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/camera/zoommap/ZoomMapController;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/camera/zoommap/ZoomMapController;-><init>(Lcom/android/camera/ActivityBase;ZLjava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    :cond_1
    return-void
.end method

.method public isCupCaptureEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OoOO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDoingAction()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isHeicPreferred()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableParallelSession:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHeicImageFormatSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isHeicSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInQCFAMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isInQCFAMode()Z

    move-result v0

    return v0
.end method

.method public isLongPressedRecording()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isMultipleRawHdrSupported()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHdrType(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    .line 3
    sget-object v2, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMultipleRawHdrSupported: hdrType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isNeedMute()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    return v0
.end method

.method public isNeedNearRangeTip()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsShutterLongClickRecording:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->isNeedNearRangeTip()Z

    move-result v0

    return v0
.end method

.method public isParallelCameraSessionMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelCameraDevice(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->isParallelSessionReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelUnSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSATSubCameraIds()[I

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSupportParallelHDREnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v0

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQuickShotSupport()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSuperNight()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 3
    :cond_2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O00oO()Z

    move-result v0

    return v0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O00o0()Z

    move-result v0

    return v0

    .line 7
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mParallelQuality:I

    if-eqz v0, :cond_6

    return v1

    .line 9
    :cond_5
    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mParallelPerformance:I

    if-eqz v0, :cond_6

    return v1

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_7

    return v1

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v0

    float-to-double v3, v0

    cmpl-double v0, v3, v1

    if-lez v0, :cond_8

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo00o()Z

    move-result v0

    return v0

    .line 13
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v0

    float-to-double v3, v0

    cmpg-double v0, v3, v1

    if-gez v0, :cond_9

    .line 14
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0()Z

    move-result v0

    return v0

    .line 15
    :cond_9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0O00()Z

    move-result v0

    return v0
.end method

.method public isRecorderRecording()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSatMultipleRawUseCase(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getMiviSuperNightMode()I

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSuperNight()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mode/capture/CaptureModule;->getRawCallbackType(I)I

    move-result p1

    .line 6
    sget-object v3, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSatMultipleRawUseCase: isSuperNightOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", rawCallback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000oo0o()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x20

    if-ne v0, p1, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    const/16 v0, 0x10

    if-ne v0, p1, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method public isSupportFocusShoot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

.method public needMixQuickShot()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mShotClickTimeInterval:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needQuickShot()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mBlockQuickShot:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraQuickShotEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->enablePreviewAsThumbnail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 7
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isFaceBeautyOn()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 10
    :cond_2
    sget-object v0, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needQuickShot bRet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v1
.end method

.method public onActionStop()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xd4

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v2}, Lcom/android/camera/timerburst/TimerBurstManager;->stopTimerBurst()V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/capture/CaptureModule;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    iget-object v2, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v2}, Lcom/android/camera/module/image/LiveMediaManager;->stopVideoRecording()V

    .line 13
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const-wide/16 v4, 0x0

    .line 14
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/module/Camera2Module;->onBurstPictureTakenFinished(ZJ)V

    :cond_4
    if-nez v0, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->handleSuperNightResultIfNeed()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v1, v3

    :cond_6
    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->doLaterReleaseIfNeed()V

    :cond_7
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/Camera2Module;->handleSaveFinishIfNeed(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->startLiveShotAnimation(I)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->snapShot(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    return-object p2
.end method

.method public onCreate(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->onCreate(II)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mode/capture/CaptureModule;->createFaceBeautyAnimatorManager()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x6

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/RenderEngineAdapter;->addLocalRenderer(I)V

    const/4 p2, 0x7

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/RenderEngineAdapter;->addLocalRenderer(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderEngineAdapter;->removeLocalRenderer(I)V

    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderEngineAdapter;->removeLocalRenderer(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->stopLiveShot(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->release()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mFaceAnim:Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$FaceAnimatorListener;->unRegisterProtocol()V

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->onPause()V

    return-void
.end method

.method public onShutterButtonClick(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "skip shutter when recording."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->onShutterButtonClick(I)Z

    move-result p1

    return p1
.end method

.method public onShutterButtonLongClick()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkWhenLongClick()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isSatFallback()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterButtonLongClick: sat fallback"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterButtonLongClick"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/ModuleManager;->isSupportRealSquare(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/16 v3, 0x1001

    .line 7
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-nez v0, :cond_8

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 10
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_8

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v4, 0xb3

    invoke-virtual {v0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->modeChanging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    sget-object v0, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip record caz mode changing."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 15
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    .line 16
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v4, 0xd4

    .line 17
    invoke-virtual {v0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-nez v0, :cond_4

    return v2

    .line 18
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const v5, 0xff06

    .line 19
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$ThumbnailProtocol;

    .line 20
    invoke-interface {v4, v1}, Lcom/android/camera/protocol/ModeProtocol$ThumbnailProtocol;->setThumbnailClickEnable(Z)V

    .line 21
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkCallingState()Z

    move-result v4

    if-nez v4, :cond_5

    .line 23
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    return v2

    .line 24
    :cond_5
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 25
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 26
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    return v2

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const/16 v4, 0xa

    invoke-interface {v0, v4}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setTriggerMode(I)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 30
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/image/LiveMediaManager;->playVideoSound(Z)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/camera/module/image/LiveMediaManager;->mRequestStartTime:J

    .line 32
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->canRecord()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mIsShutterLongClickRecording:Z

    .line 34
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 35
    :cond_7
    sget-object v0, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "wait for autoFocus"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    :goto_0
    return v2

    .line 37
    :cond_8
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mLongPressedAutoFocus:Z

    .line 38
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->unlockAEAF()V

    .line 40
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->requestAutoFocus()V

    .line 41
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    return v1
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkForDownCapture()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstManager;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string v0, "ignore longClickCancel isInTimerBurstShotting"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/16 v2, 0x1001

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    if-eqz v0, :cond_5

    .line 5
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd4

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    .line 10
    :cond_3
    sget-object p1, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonLongClickCancel, remove start recording task"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_4

    .line 13
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v3, p1}, Lcom/android/camera/module/common/ModuleUtil;->updateZoomRatioToggleButtonState(ZI)V

    :cond_4
    return-void

    .line 14
    :cond_5
    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mIsShutterLongClickRecording:Z

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-static {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {p1}, Lcom/android/camera/module/image/LiveMediaManager;->stopVideoRecording()V

    return-void

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->onShutterButtonLongClickCancel()V

    .line 19
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 20
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setMultiSnapStopRequest(Z)V

    .line 21
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mLongPressedAutoFocus:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    const/16 p1, 0xa

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mode/capture/CaptureModule;->onShutterButtonClick(I)Z

    goto :goto_0

    .line 23
    :cond_8
    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mLongPressedAutoFocus:Z

    .line 24
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->cancelLongPressedAutoFocus()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onShutterDragging()Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mCancelDownCaptureOnLongClick:Z

    .line 2
    iget-wide v1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 3
    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onShutterDragging notifyCancel"

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    iget-wide v5, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->notifyButtonCancel(J)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->getFocusStatus()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 6
    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onShutterDragging: reset button status"

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iput-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mCaptureDownTime:J

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    .line 9
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera2/Camera2Proxy;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 10
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mCancelDownCaptureOnLongClick:Z

    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onShutterDragging: button status focusing"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :cond_1
    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onShutterDragging: not down capture"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/features/mode/capture/CaptureModule;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterDragging: doing action"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 15
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isSatFallback()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    sget-object v1, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterDragging: sat fallback"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 17
    :cond_3
    sget-object v0, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutterDragging"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iput-boolean v2, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mPendingMultiCapture:Z

    .line 19
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_4

    .line 21
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    .line 22
    :cond_4
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string v1, "algo_prepare_capture"

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->doMultiSnap(Z)V

    return v2
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    invoke-virtual {v0, p2}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/module/image/LiveMediaManager;->onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    return-void
.end method

.method public onThermalConstrained()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onThermalConstrained()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->stopVideoRecording()V

    :cond_0
    return-void
.end method

.method public onTiltShiftSwitched(Z)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->onTiltShiftSwitched(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v1

    const/16 v2, 0xa0

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "circle"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/4 v5, 0x6

    .line 6
    invoke-virtual {v0, v5, v2}, Lcom/android/camera/ui/RenderEngineAdapter;->setRendererEnabled(IZ)V

    const-string/jumbo v2, "parallel"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const/4 p1, 0x7

    .line 8
    invoke-virtual {v0, p1, v3}, Lcom/android/camera/ui/RenderEngineAdapter;->setRendererEnabled(IZ)V

    :cond_2
    return-void
.end method

.method public onWaitingFocusFinished()Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    if-eqz v1, :cond_4

    .line 6
    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isSatFallback()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    sget-object v0, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "video record check: sat fallback"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v1}, Lcom/android/camera/module/image/LiveMediaManager;->startVideoRecording()V

    return v0

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isSatFallback()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setWaitingSnapshot(Z)V

    .line 12
    sget-object v0, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string v1, "capture check: sat fallback"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 13
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setWaitingSnapshot(Z)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getTriggerMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/Camera2Module;->startNormalCapture(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 15
    sget-object v0, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startNormalCapture failed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    return v0

    .line 16
    :cond_7
    :goto_0
    sget-object v0, Lcom/android/camera/features/mode/capture/CaptureModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWaitingFocusFinished : Activity already paused, ignore!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public registerProtocol()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->registerProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mCameraClickObserverAction:Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->addObservable([ILcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;[I)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x7f1208ce
        0x7f1208d0
        0x7f120450
        0x7f1208cd
        0x7f1209bb
    .end array-data

    :array_1
    .array-data 4
        0xa1
        0xa2
        0xa6
        0xa3
        0xa4
        0xa5
        0xa7
        0xa8
    .end array-data
.end method

.method public scanQRCodeEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isScanQRCode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeBackOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oOO00O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->sensorChanged(Landroid/hardware/SensorEvent;)V

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->sensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public setOrientation(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->setOrientation(II)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result p1

    if-eq p1, p2, :cond_2

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0Oo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {p1}, Lcom/android/camera/module/image/LiveMediaManager;->stopVideoRecording()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {p1}, Lcom/android/camera/module/image/MultiCaptureManager;->stopMultiSnap()V

    :cond_2
    return-void
.end method

.method public setOrientationParameter()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->setOrientationParameter()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->setOrientationHint(I)V

    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->shouldReleaseLater()Z

    move-result v0

    return v0
.end method

.method public showDisableNightAlgoTipIfNeeded()V
    .locals 3

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mDisableAlgoTipAlreadyShown:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f1202c8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    .line 6
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mDisableAlgoTipAlreadyShown:Z

    :cond_2
    return-void
.end method

.method public startCount(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveMedia:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/LiveMediaManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/Camera2Module;->startCount(III)V

    return-void
.end method

.method public supportMTKHDRReprocess()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0Oo0O()Z

    move-result v0

    return v0
.end method

.method public supportMultiCaptureByRunningCondition()Z
    .locals 5

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isZoomRatioBetweenUltraAndWide()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v3, v3, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    .line 3
    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v3, v3, Lcom/android/camera/module/image/MultiCaptureManager;->mPendingMultiCapture:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public supportMultiCaptureByStableCondition()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isSquareModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/ModuleManager;->isSupportRealSquare(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeBackOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 7
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isStandaloneMacroCamera(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 8
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 10
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 11
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHeicImageFormatSelected()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
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
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mTrackInfo:Lcom/android/camera/statistic/CameraTrackInfo;

    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFocusFrameType(Ljava/util/Map;Lcom/android/camera/statistic/CameraTrackInfo;)V

    .line 4
    invoke-virtual {p0, p1, p4, p2, p5}, Lcom/android/camera/module/Camera2Module;->trackCaptureModuleInfo(Ljava/util/Map;IZZ)V

    .line 5
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

.method public updateBeauty()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->updateBeauty()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mFaceAnim:Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->updateBeauty(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    :cond_0
    return-void
.end method

.method public updateCinematicPhoto()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setCinematicPhotoEnabled(Z)V

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setCinematicEnable(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->enableCinematic()V

    :cond_0
    return-void
.end method

.method public updateEnablePreviewThumbnail(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/Util;->isSaveToHidenFolder(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v2, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isPreviewThumbnailWhenFlash()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 9
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_4

    .line 10
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    goto :goto_0

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableParallelSession:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget p1, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    if-nez p1, :cond_6

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->enablePreviewAsThumbnail()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    .line 14
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnabledPreviewThumbnail:Z

    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->setPreviewThumbnail(Z)V

    return-void
.end method

.method public updateFilter()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->updateFilter()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule;->mLiveShot:Lcom/xiaomi/camera/liveshot/LiveShotManager;

    iget v1, p0, Lcom/android/camera/module/Camera2Module;->mNormalFilterId:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/liveshot/LiveShotManager;->setFilterId(I)V

    return-void
.end method
