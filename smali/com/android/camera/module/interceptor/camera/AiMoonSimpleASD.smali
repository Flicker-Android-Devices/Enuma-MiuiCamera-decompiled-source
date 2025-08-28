.class public Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;
.super Lcom/android/camera/module/interceptor/SimpleASDInterceptor;
.source "AiMoonSimpleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/SimpleASDInterceptor<",
        "Ljava/lang/Integer;",
        "Lcom/android/camera/module/SuperMoonModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AiMoon"


# instance fields
.field public mCurrentAiScene:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->mCurrentAiScene:I

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/SuperMoonModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/SuperMoonModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 3

    const/4 p3, 0x0

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->mCurrentAiScene:I

    if-eq v1, v0, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consumeAiSceneResult mCurrentAiScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->mCurrentAiScene:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiMoon"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput v0, p0, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->mCurrentAiScene:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    const/4 p3, 0x1

    .line 6
    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/camera2/Camera2Proxy;->setAiMoonEffectEnable(Z)V

    .line 7
    iget p1, p0, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->mCurrentAiScene:I

    invoke-virtual {p2, p1}, Lcom/android/camera/module/SuperMoonModule;->setCurrentAiScene(I)V

    .line 8
    invoke-virtual {p2}, Lcom/android/camera/module/SuperMoonModule;->resumePreviewInWorkThread()V

    :cond_1
    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/SuperMoonModule;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/SuperMoonModule;)Z

    move-result p1

    return p1
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/SuperMoonModule;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getNativeTag()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScope()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    const-string v0, "AiMoon"

    return-object v0
.end method

.method public getVendorTag()Lcom/android/camera2/vendortag/VendorTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_SCENE_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    return-object v0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/AiMoonSimpleASD;->initAndGetPriorCondition(Lcom/android/camera/module/SuperMoonModule;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    return p1
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/SuperMoonModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isNativeTag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveOnMainThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
