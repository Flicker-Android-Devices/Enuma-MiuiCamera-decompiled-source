.class public Lcom/android/camera/module/interceptor/camera/FocusDistanceSimpleASD;
.super Lcom/android/camera/module/interceptor/SimpleASDInterceptor;
.source "FocusDistanceSimpleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/SimpleASDInterceptor<",
        "Ljava/lang/Float;",
        "Lcom/android/camera/module/AmbilightModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FocusDistance"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/AmbilightModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    return-void
.end method

.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/FocusDistanceSimpleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/AmbilightModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/FocusDistanceSimpleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/AmbilightModule;)V

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/AmbilightModule;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/FocusDistanceSimpleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/AmbilightModule;)Z

    move-result p1

    return p1
.end method

.method public getNativeTag()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

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

    const-string v0, "FocusDistance"

    return-object v0
.end method

.method public getVendorTag()Lcom/android/camera2/vendortag/VendorTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/AmbilightModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/FocusDistanceSimpleASD;->initAndGetPriorCondition(Lcom/android/camera/module/AmbilightModule;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    return p1
.end method

.method public isNativeTag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public moveOnMainThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
