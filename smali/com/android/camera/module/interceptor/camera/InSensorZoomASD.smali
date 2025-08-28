.class public Lcom/android/camera/module/interceptor/camera/InSensorZoomASD;
.super Lcom/android/camera/module/interceptor/SimpleASDInterceptor;
.source "InSensorZoomASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/SimpleASDInterceptor<",
        "Ljava/lang/Integer;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "InSensorZoomASD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->dataChanged()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->setFakeSatEnable(Z)V

    new-array p1, p3, [I

    .line 4
    invoke-virtual {p2, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_1
    return-void
.end method

.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/InSensorZoomASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/InSensorZoomASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/InSensorZoomASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z

    move-result p1

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

    const-string v0, "InSensorZoomASD"

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
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->FAKE_SAT_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    return-object v0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 2
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPreviewInSensorZoom(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/InSensorZoomASD;->initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

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
